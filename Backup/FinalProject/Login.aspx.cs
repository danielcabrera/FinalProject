using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Security.Cryptography;
using FinalProject.DataLINQ;


namespace FinalProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Login1.Focus();
            Page.Form.DefaultButton = ((Login1.FindControl("LoginButton")) as Button).UniqueID;
        }

        protected void Login1_Authenticate(object sender, System.Web.UI.WebControls.AuthenticateEventArgs e)
        {
            try
            {
                string userName = Login1.UserName;
                string password = Login1.Password;
                Login1.FailureText = null;

                if (Es_Correcto(userName, password))
                {
                    e.Authenticated = true;
                    FormsAuthentication.SetAuthCookie(Login1.UserName, false);
                    Response.Redirect("~/Default.aspx");

                }
                else
                {
                    e.Authenticated = false;
                }
            }
            catch
            {
                e.Authenticated = false;
            }

        }

        private bool Es_Correcto(string userName, string password)
        {
            try
            {
                DataLINQ.BDLINQDataContext dc = new BDLINQDataContext();
                DateTime hoy = DateTime.Now;

                var query = dc.Usuarios.Where(w => w.Nick == userName).Single();

                if (query.EstadoCuenta)
                {
                    Login1.FailureText = "Cuenta bloqueada";
                    return false;
                }

                if (query.Contraseña != Crypt(password)) return false;

                // Se ha logado correctamente: guardamos los identificadores
                Session["loggedUserProfileId"] = query.Perfil;
                return true;
            }
            catch
            {
                throw;
            }
        }

        public byte[] Crypt(string texto)
        {
            SHA1Managed hash = new SHA1Managed();
            // byte[] tBytes = Encoding.UTF8.GetBytes(texto);
            byte[] tBytes = System.Text.Encoding.ASCII.GetBytes(texto);
            byte[] hBytes = hash.ComputeHash(tBytes);

            return (hBytes);
            //return (System.Text.Encoding.UTF8.GetString(hBytes));
            //return (System.Text.Encoding.ASCII.GetString(hBytes));

        }

    }
}
