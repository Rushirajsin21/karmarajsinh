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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["register_start"] = "register";
            if (Session["register_start"].ToString() == "register")
            {
                rgmessage.Visible = false;
                rgmessage2.Visible = false;
                rgmessage3.Visible = false;
                rgmsgemail.Visible = false;
            }
        }

        protected void rgusername_TextChanged(object sender, EventArgs e)
        {

        }
        protected void rgbtnregister_Click(object sender, EventArgs e)
        {
            string sql = "select Username from login where Username='" + rgusername.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            string sql1 = "select Email from login where Email='" + rgemail.Text + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1,cn.con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);

            if (dt.Rows.Count >= 1)
            {
                rgmessage3.Visible = true;


            }
            if (dt1.Rows.Count >= 1)
            {
                rgmsgemail.Visible = true;


            }
            else
            {
                rgmessage3.Visible = false;
                rgmsgemail.Visible = false;

                string sql2 = "insert into login values('" + rgusername.Text + "','" + rgemail.Text + "','" + rgpassword.Text + "')";
                SqlDataAdapter da2 = new SqlDataAdapter(sql2, cn.con);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                if (!da2.Equals(null))
                {
                    rgmessage.Visible = true;
                }
                else
                {
                    rgmessage2.Visible = true;
                }
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void rgbtnClear_Click(object sender, EventArgs e)
        {
            rgemail.Text = rgpassword.Text = rgusername.Text = rgretypepassword.Text = "";
            rgusername.Focus();
        }
    }
}