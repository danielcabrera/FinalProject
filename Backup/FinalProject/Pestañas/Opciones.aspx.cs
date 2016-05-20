using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

using FinalProject.DataLINQ;
using System.Data.Linq.Mapping;
using System.Security.Cryptography;



namespace FinalProject.Pestañas
{
    public partial class Opciones : System.Web.UI.Page
    {
        DataLINQ.BDLINQDataContext dc = new FinalProject.DataLINQ.BDLINQDataContext();
        string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

            string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();

        }

        protected void Btnborr_Click(object sender, EventArgs e)
        {
            pan1.Visible = false;
            pan2.Visible = true;

        }

        protected void Btnecont_Click(object sender, EventArgs e)
        {
            pan1.Visible = false;
            pan3.Visible = true;
        }

        protected void Btnconf_Click(object sender, EventArgs e)
        {
            try
            {

                var user = dc.Usuarios.Where(w => w.Nick == CurrentUser)
                                .Single();
                SHA1Managed hash = new SHA1Managed();
                byte[] result;
                byte[] tBytes = System.Text.Encoding.UTF8.GetBytes(tantiguacont.Text);
                result = hash.ComputeHash(tBytes);

                if (user.Contraseña == result)
                {
                    if(tnuevacont.Text == tRnuevacont.Text)
                    {
                        SHA1Managed hash1 = new SHA1Managed();
                        byte[] tBytes1 = System.Text.Encoding.UTF8.GetBytes(tnuevacont.Text);
                        user.Contraseña = hash1.ComputeHash(tBytes1);

                        dc.SubmitChanges();
                        Response.Redirect("~/Pestañas/Opciones.aspx");
                    }

                    else
                        throw new Exception(lblERR.Text = "Contraseña incorrecta");

                }
                else
                
                    throw new Exception(lblERR.Text = "Tu antigua contraseña no es correcta");
                
            }
            catch(Exception ex)
            {
                lblERR.Visible = true;
                lblERR.Text = ex.Message;
            }

        }

        protected void Btncanc_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pestañas/Opciones.aspx");
        }

        protected void Btnacep_Click(object sender, EventArgs e)
        {
            var user = dc.Usuarios.Where(w => w.Nick == CurrentUser)
                                .Single();

            dc.Usuarios.DeleteOnSubmit(user);
            dc.SubmitChanges();
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Login.aspx");
            

        }
    }
}
