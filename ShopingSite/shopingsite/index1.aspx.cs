using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopingSite
{
    public partial class index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["logedin"] == "loged_in")
            {
                Login.Visible = false;
                Register.Visible = false;

            }
        }
        //protected void btnsubmit_onlclick(object sender , EventArgs e)
        //{
        //    Response.Redirect("WebForm1.aspx");
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void navtog_Click(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}