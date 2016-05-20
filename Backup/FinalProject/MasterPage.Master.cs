using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace FinalProject
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        DataLINQ.BDLINQDataContext dc = new FinalProject.DataLINQ.BDLINQDataContext();
        // asp:Menu rendering problems in IE8, Safari and Chrome
        // Adding this override so that the asp:Menu control renders properly in Safari and Chrome
        protected override void AddedControl(Control control, int index)
        {
            if (Request.ServerVariables["http_user_agent"].IndexOf("Safari", StringComparison.CurrentCultureIgnoreCase) != -1)
            {
                this.Page.ClientTarget = "uplevel";
            }
            base.AddedControl(control, index);

            
        }


        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (!IsPostBack)
                {
                    string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();
                    //AddEventHandlers();
                    //AddPageContent();        
                    var useredit = dc.Usuarios.Where(w => w.Nick == CurrentUser)
                             .Single();
                    if (useredit.Perfil == 1)
                    {
                        etijuegos.Visible = false;

                    }
                }
                //string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();
            }
            catch
            {
                Session.Abandon();
                Session.Clear();
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}
