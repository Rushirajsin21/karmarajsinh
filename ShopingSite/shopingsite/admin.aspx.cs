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
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            admins1.Visible = false;
            order.Visible = false;
            add_product.Visible = false;
            if ((string)Session["admin_role"] != "Super Admin")
            {
                admin1.Visible = false;
            }
            string sql1 = "select * from admin where status=1 ";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1, cn.con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            Repeater1.DataSource = dt1;
            Repeater1.DataBind();
            string sql = "select * from product where status=1";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater2.DataSource = dt;
            Repeater2.DataBind();
            string sql3 = "select * from order1";
            SqlDataAdapter da3 = new SqlDataAdapter(sql3,cn.con);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            if (!da3.Equals(null))
            {
                Repeater3.DataSource = dt3;
                Repeater3.DataBind();
            }

        }

        protected void adminslink_Click(object sender, EventArgs e)
        {
            admins1.Visible = true;
        }

     

      

        protected void logoutlink_Click(object sender, EventArgs e)
        {

        }

        protected void cartlink_Click(object sender, EventArgs e)
        {
            order.Visible = true;
        }

        protected void add_Click(object sender, EventArgs e)
        {

            string sql = "insert into admin values('" + admin_name.Text + "' , '" + admin_role.Text + "' , '" + password.Text + "' , 1)";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(!da.Equals(null))
            {
                Label1.Text = "Admin Added";
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "Admin not added";
                Label1.Visible = true;
            }
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            admin_name.Text = admin_role.Text = password.Text = Retypepassword.Text = "";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            add_product.Visible = true;
        }

        protected void product_add_Click(object sender, EventArgs e)
        {
           
                string path = Server.MapPath("~/images/");
                fileupload2.SaveAs(path + fileupload2.FileName);
                string st = "~/images/";
                string img = st + fileupload2.FileName;
                string sql = "insert into product values('" +product_name.Text + "' , '" + img + "' ,'" + price.Text + "' , 1)";
                SqlDataAdapter da = new SqlDataAdapter(sql, cn.con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (!da.Equals(null))
                {
                    add_product.Visible = true;
                    galmsg.Text = "Product Added";
                    galmsg.Visible = true;
                }
                else
                {
                    galmsg.Text = "Product Not Added";
                    galmsg.Visible = true;

                }
            
        }

        protected void product_clear_Click(object sender, EventArgs e)
        {
            product_name.Text = price.Text = "";
            fileupload2.Dispose();
        }
    }
}