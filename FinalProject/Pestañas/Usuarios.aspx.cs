using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Security.Cryptography;
using System.Text;
using FinalProject.DataLINQ;

namespace FinalProject.Pestañas
{
    public partial class Usuarios : System.Web.UI.Page
    {
        string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();
        DataLINQ.BDLINQDataContext dc = new FinalProject.DataLINQ.BDLINQDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (!IsPostBack)
                {
                    var user = dc.Usuarios.Where(w => w.Nick == CurrentUser)
                                 .Single();
                    if (user.Perfil > 1)
                        GridView1.Columns[6].Visible = false;

                    BindData();

                }
            }
            catch(Exception ex)
            {

                GridView1.DataSource = null;
                GridView1.DataBind();
                Label lb = (Label)GridView1.Controls[0].Controls[0].FindControl("lblEmpty");
                lb.Text = ex.Message;
            }

        }

        protected void gv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //ViewState.Add("GridPage", e.NewPageIndex);
            //BindData();
            ViewState.Add("gvpage", e.NewPageIndex);
            BindData();
        }

        void BindData()
        {
            
            string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();

            
            var perfilusuario = (
                       from u in dc.Usuarios
                       from l in dc.Lugar
                       where u.ID_Residencia == l.ID && u.Perfil > 1 && u.Nick != CurrentUser
                       select new
                       {
                           
                           Nick = u.Nick,
                           Nombre = u.Nombre,
                           Apellidos = u.Apellidos,

                           fnacimiento = (String.Format("{0:dd/MM/yyyy}", u.FechaNacimiento)),
                           Comunidad = l.Comunidad,
                           Provincia = l.Provincia,
                           ecuenta = (u.EstadoCuenta) ? "bloqueada" : "desbloqueada"
                       }
                       );

            GridView1.DataSource = perfilusuario;
            
            
            if (ViewState["gvpage"] != null)
            {
                GridView1.PageIndex = (int)ViewState["gvpage"];
            }

            GridView1.DataBind();
        }

        protected void Btnseleccionar_Click()
        {
            try
            {
                
                string nom = Server.HtmlDecode(GridView1.SelectedRow.Cells[0].Text.Trim());
                panAcciones.Visible = true;
                var user = dc.Usuarios.Where(w => w.Nick == CurrentUser)
                                 .Single();
                var userb = dc.Usuarios.Where(w => w.Nick == nom)
                                .Single();

                if (user.Perfil > 1)
                    panseg.Visible = true;

                else
                    panbloq.Visible = true;
                if (userb.EstadoCuenta == true)
                {
                    Btnbloc.Enabled = false;
                    
                }
                else
                    Btndesbloc.Enabled = false;
                



            }
            catch (Exception ex)
            {
                throw;
               
            }
        }

        protected void gv1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {

                    GridView gvsender = (GridView)(sender as Control);
                    int lastcell = gvsender.Columns.Count - 1;
                    LinkButton _singleClickButton = (LinkButton)e.Row.Cells[lastcell].Controls[0];

                    string _jsSingle = ClientScript.GetPostBackClientHyperlink(_singleClickButton, "");



                    e.Row.Style["cursor"] = "pointer";

                    e.Row.Attributes["onclick"] = _jsSingle;
                }
            }
            catch
            {
                throw;
            }
        }

        protected void gv1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridView _gridView = (GridView)sender;
            
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            int _selectedIndex = int.Parse(e.CommandArgument.ToString());
            string _commandName = e.CommandName;

            switch (_commandName)
            {
                case ("Select"):
                    _gridView.SelectedIndex = _selectedIndex;

                    Btnseleccionar_Click();

                    break;
                case ("DoubleClick"):

                    break;
            }

        }

        protected override void Render(HtmlTextWriter writer)
        {
            foreach (GridViewRow r in GridView1.Rows)
            {
                if (r.RowType == DataControlRowType.DataRow)
                {
                    Page.ClientScript.RegisterForEventValidation(r.UniqueID + "$ctl00");
                }
            }

            base.Render(writer);
        }

        protected void btncancsel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pestañas/Usuarios.aspx");
        }

        protected void Btnbloc_Click(object sender, EventArgs e)
        {
            string nom = Server.HtmlDecode(GridView1.SelectedRow.Cells[0].Text.Trim());
            var userb = dc.Usuarios.Where(w => w.Nick == nom)
                                .Single();

            userb.EstadoCuenta = true;
            dc.SubmitChanges();
            Response.Redirect("~/Pestañas/Usuarios.aspx");
        }

        protected void Btndesbloc_Click(object sender, EventArgs e)
        {
            string nom = Server.HtmlDecode(GridView1.SelectedRow.Cells[0].Text.Trim());
            var userb = dc.Usuarios.Where(w => w.Nick == nom)
                                .Single();

            userb.EstadoCuenta = false;
            dc.SubmitChanges();
            Response.Redirect("~/Pestañas/Usuarios.aspx");

        }

        protected void Btnseguir_Click(object sender, EventArgs e)
        {

        }

        protected void Btndseguir_Click(object sender, EventArgs e)
        {

        }

    }
}
