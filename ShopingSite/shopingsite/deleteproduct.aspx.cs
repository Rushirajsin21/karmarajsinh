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
    public partial class deleteproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["name"];
            string sql1 = "select * from product where product_name='" + name + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1, cn.con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            product_name.Text = (string)dt1.Rows[0]["product_name"];
            image1.ImageUrl = (string)dt1.Rows[0]["product_imgpath"];
            price.Text = (string)dt1.Rows[0]["product_price"];
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            string name = (string)Request.QueryString["name"];
            string sql = "update product set status=0 where product_name='" + name + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (!da.Equals(null))
            {
                Response.Redirect("admin.aspx");

            }
            else
            {
                delmsg.Text = "Product Not Deleted";
                delmsg.Visible = true;
            }
        }
    }
}