using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class _Default : System.Web.UI.Page
    {
        string CurrentUser = HttpContext.Current.User.Identity.Name.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            bienv.Text = CurrentUser;

        }
    }
}
