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
    public partial class editproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void product_edit_Click(object sender, EventArgs e)
        {

            string name = (string)Request.QueryString["id"];
            string path = Server.MapPath("~/images/");
            fileupload2.SaveAs(path + fileupload2.FileName);
            string st = "~/images/";
            string img = st + fileupload2.FileName;
            string sql = "update  product set product_name='" + product_name.Text + "' , product_imgpath='" + img + "' , product_price='" + price.Text + "'  where product_name='" + name + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (!da.Equals(null))
            {

                Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Write("not edit");
            }
        }

        protected void product_clear_Click(object sender, EventArgs e)
        {
            product_name.Text = price.Text = "";
            fileupload2.Dispose();
        }
    }
}