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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lgmsg.Visible = false;
            lgmsg2.Visible = false;
        }
        protected void reglink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void lgbtnClear_Click(object sender, EventArgs e)
        {
            lgemail.Text = lgpassword.Text = "";
            lgemail.Focus();
        }

        protected void lgbtnlogin_Click(object sender, EventArgs e)
        {
            Session["lgemails"] = lgemail.Text;
            Session["lgpassword"] = lgpassword.Text;
            string sql = "select Username from login where Email='" + Session["lgemails"].ToString() + "' and Password='" + Session["lgpassword"].ToString() + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["logedin"] = "loged_in";
                Session["user"] = dt.Rows[0]["Username"];
                Response.Redirect("index1.aspx");
                lgmsg.Visible = true;
               



            }
            else
            {
                lgmsg2.Visible = true;

            }

        }
    }
}