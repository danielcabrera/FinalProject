using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinalProject.Pestañas
{
    public partial class Perfil : System.Web.UI.Page
    {
        DataLINQ.BDLINQDataContext dc = new FinalProject.DataLINQ.BDLINQDataContext();
        string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();
            //textnick.Text = CurrentUser;
            try
            {
                if (!IsPostBack)
                {
                    var perfilusuario = (
                        from u in dc.Usuarios
                        from l in dc.Lugar
                        where u.ID_Residencia == l.ID && u.Nick == CurrentUser
                        select new
                        {
                            
                            Nick = u.Nick,
                            Nombre = u.Nombre,
                            Apellidos = u.Apellidos,
                            Correo = (u.Correo != null) ? u.Correo : null,
                            fnacimiento = (String.Format("{0:dd/MM/yyyy}",u.FechaNacimiento)),
                            finicio = (String.Format("{0:dd/MM/yyyy HH:mm}", u.FechaInicio)),
                            Comunidad = l.Comunidad,
                            Provincia= l.Provincia,
                            idres = u.ID_Residencia
                        }
                        );

                    GridView1.DataSource = perfilusuario;
                    GridView1.DataBind();
                   
                }
            }
            catch
            {

            }
       
        }


        protected void btneditperfil_Click(object sender, EventArgs e)
        {
            string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();
            var idres = dc.Usuarios.Where(w => w.Nick == CurrentUser)
                            .Single();
            string i = Convert.ToString( idres.ID_Residencia);
            Pan1.Visible = false;
            pan2.Visible = true;
            tednick.Text = Server.HtmlDecode(GridView1.Rows[0].Cells[0].Text).Trim();
            tednom.Text = Server.HtmlDecode(GridView1.Rows[0].Cells[1].Text).Trim();
            tedapell.Text = Server.HtmlDecode(GridView1.Rows[0].Cells[2].Text).Trim();
            tedcorreo.Text = Server.HtmlDecode(GridView1.Rows[0].Cells[3].Text).Trim();
            tedfecha.Text = Server.HtmlDecode(GridView1.Rows[0].Cells[4].Text).Trim();
            dd1.SelectedValue = i;
            
        }

        protected void Btnedit_Click(object sender, EventArgs e)
        {
            try
            {
                var useredit = dc.Usuarios.Where(w => w.Nick == Server.HtmlDecode(tednick.Text).Trim())
                            .Single();
               
                if ((Server.HtmlDecode(tednom.Text).Trim()) == "")
                    throw new Exception(lblERR.Text = "El Nombre no puede estar vacio");
                if ((Server.HtmlDecode(tedapell.Text).Trim()) == "")
                    throw new Exception(lblERR.Text = "Los apellidos no pueden estar vacios");

                useredit.Nombre = tednom.Text;
                useredit.Apellidos = tedapell.Text;
                useredit.Correo = tedcorreo.Text;
                useredit.FechaNacimiento = DateTime.Parse(tedfecha.Text.Trim());
                useredit.ID_Residencia = short.Parse(dd1.SelectedValue);
                dc.SubmitChanges();
                Response.Redirect("~/Pestañas/Perfil.aspx");
                

            }
            catch(Exception ex)
            {
                lblERR.Visible = true;
                lblERR.Text = ex.Message;
            }

        }

        protected void Btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pestañas/Perfil.aspx");
        }
    }
}