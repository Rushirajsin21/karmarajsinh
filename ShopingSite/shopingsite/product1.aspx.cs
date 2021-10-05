using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace ShopingSite
{
    public partial class product1 : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter(sql, cn.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

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