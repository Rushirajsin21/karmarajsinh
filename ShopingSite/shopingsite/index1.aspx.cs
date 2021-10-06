using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

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
                logout.Visible = true;

            }
            string sql = "select * from product where status=1";
            SqlDataAdapter da = new SqlDataAdapter(sql,cn.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

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

        protected void cart_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("logedin");
        }

        protected void Admin_Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}