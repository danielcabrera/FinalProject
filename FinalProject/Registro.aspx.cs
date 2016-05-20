using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.DataLINQ;

namespace FinalProject
{
    public partial class Registro : System.Web.UI.Page
    {
        DataLINQ.BDLINQDataContext dc = new FinalProject.DataLINQ.BDLINQDataContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            
        }

        protected void aceptarregistro_Click(object sender, EventArgs e)
        {
            try
            {
                var user = dc.Usuarios.Where(w => w.Nick == Boxnick.Text);
                
                DataLINQ.Usuarios mylogin = new DataLINQ.Usuarios();
                
                foreach (var i in user)
                {
                    throw new Exception(lblERR.Text = "Este Nick ya existe"); 
                }
                
                if ((Server.HtmlDecode(Boxnick.Text).Trim()) == "")
                    throw new Exception(lblERR.Text = "El Nick no puede estar vacio");
                if ((Server.HtmlDecode(boxnombre.Text).Trim()) == "")
                    throw new Exception(lblERR.Text = "El Nombre no puede estar vacio");
                if ((Server.HtmlDecode(boxapellidos.Text).Trim()) == "")
                    throw new Exception(lblERR.Text = "Los apellidos no pueden estar vacios");
                if (boxcontraseña.Text == "")
                    throw new Exception(lblERR.Text = "La contraseña no puede estar vacía");
                if (boxcontraseña.Text != boxRcontraseña.Text)
                    throw new Exception(lblERR.Text = "Contraseña errónea");
                
                mylogin.Nick = Boxnick.Text;
                mylogin.Nombre = boxnombre.Text;
                mylogin.Apellidos = boxapellidos.Text;
                mylogin.FechaInicio = DateTime.Now;
                SHA1Managed hash = new SHA1Managed();
                byte[] tBytes = System.Text.Encoding.UTF8.GetBytes(boxcontraseña.Text);
                mylogin.Contraseña = hash.ComputeHash(tBytes);
                mylogin.Perfil = 1;
                mylogin.ID_Residencia = dd1.SelectedIndex + 1;
                //mylogin.ID_Residencia = short.Parse(dd1.SelectedValue); 
                mylogin.EstadoCuenta = false;
                mylogin.Correo = boxcorreo.Text;
                mylogin.FechaNacimiento = DateTime.Parse(boxfecha.Text);

                dc.Usuarios.InsertOnSubmit(mylogin);
                dc.SubmitChanges();
                Response.Redirect  ("~/Login.aspx");
                

            }
            catch(Exception ex)
            {
                lblERR.Visible = true;
                lblERR.Text = ex.Message;
            }

        }

        //void dd()
        //{
            
        //    string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();
        //    var resid = Lugares();
        //    dd1.Items.Clear();
        //    dd1.DataSource = resid;
        //    dd1.DataValueField = "ID";
        //    dd1.DataTextField = "Comunidad";

        //    dd1.DataTextField = "Provincia";

        //    dd1.DataBind();
        //}

        //IEnumerable<Lugar> Lugares()
        //{
        //    try
        //    {
        //        var lugares = dc.Lugar.OrderBy(o => o.ID);
        //        return lugares;
        //    }
        //    catch
        //    {
        //        throw;
        //    }
        //}

        protected void cancelarregistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}
 