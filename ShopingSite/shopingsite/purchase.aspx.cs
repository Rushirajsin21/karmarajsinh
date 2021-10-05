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