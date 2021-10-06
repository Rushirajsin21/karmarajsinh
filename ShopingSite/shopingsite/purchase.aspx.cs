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
    public partial class purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string sql = "select *  from cart";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn.con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            for (int i=0; i<=dt.Rows.Count-1;i++)
            { 
                string sql1 = "insert into order1 values('"+(string)dt.Rows[i]["product_nm"]+"' ,  '"+(string)dt.Rows[i]["product_img"]+"' , '"+dt.Rows[i]["product_price"]+"' , '"+(string)dt.Rows[i]["status"]+"')";
                SqlDataAdapter da1 = new SqlDataAdapter(sql1,cn.con);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
            }

        }
        public string sum()
        {
            string sql = "select SUM(product_price) from cart";
            SqlCommand cmd = new SqlCommand(sql, cn.con);
            cn.con.Open();
            int sum = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            cn.con.Close();
            cmd.Dispose();

            return Convert.ToString(sum);
        }

    }
}