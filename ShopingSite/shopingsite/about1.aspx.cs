using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopingSite
{
    public partial class abou1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["logedin"] == "loged_in")
            {
                Login.Visible = false;
                Register.Visible = false;
                logout.Visible = true;

            }
        }

        protected void cart_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("logedin");
        }
    }
}