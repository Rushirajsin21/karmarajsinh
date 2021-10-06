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
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = (string)Request.QueryString["name"];
            if ((string)Session["logedin"] == "loged_in")
            {
                if (name != null)
                {
                    string sql = "select * from product where product_name='" + name + "'";
                    SqlDataAdapter da = new SqlDataAdapter(sql, cn.con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);


                    string sql1 = "select * from cart where product_nm='" + name + "'";
                    SqlDataAdapter da1 = new SqlDataAdapter(sql1, cn.con);
                    DataTable dt1 = new DataTable();
                    da1.Fill(dt1);
                    if (dt1.Rows.Count >= 1)
                    {
                        Label1.Text = "product already in cart";
                        Label1.Visible = true;
                        string sql4 = "select * from cart";
                        SqlDataAdapter da4 = new SqlDataAdapter(sql4, cn.con);
                        DataTable dt4 = new DataTable();
                        da4.Fill(dt4);
                        Repeater1.DataSource = dt4;
                        Repeater1.DataBind();
                    }
                    else
                    {
                        string sql2 = "insert into cart values('" + (string)dt.Rows[0]["product_name"] + "' , '" + (string)dt.Rows[0]["product_imgpath"] + "' , '" + (string)dt.Rows[0]["product_price"] + "' , 1)";
                        SqlDataAdapter da3 = new SqlDataAdapter(sql2, cn.con);
                        DataTable dt3 = new DataTable();
                        da3.Fill(dt3);
                        if (!da.Equals(null))
                        {
                            Label2.Text = "Product added to cart";
                            Label2.Visible = true;

                        }
                        else
                        {
                            Label1.Text = "Poduct not added to cart";
                            Label1.Visible = true;

                        }

                        string sql4 = "select * from cart";
                        SqlDataAdapter da4 = new SqlDataAdapter(sql4, cn.con);
                        DataTable dt4 = new DataTable();
                        da4.Fill(dt4);
                        Repeater1.DataSource = dt4;
                        Repeater1.DataBind();
                    }
                   
                }
                else
                {
                    string sql4 = "select * from cart";
                    SqlDataAdapter da4 = new SqlDataAdapter(sql4, cn.con);
                    DataTable dt4 = new DataTable();
                    da4.Fill(dt4);
                    Repeater1.DataSource = dt4;
                    Repeater1.DataBind();

                }

            }
            else
            {
                Label1.Text = "You are not logedin";
                Label1.Visible = true;
                purchase.Visible = false;
                

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

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index1.aspx");
        }

        protected void purchase_Click(object sender, EventArgs e)
        {
            Response.Redirect("purchase.aspx");
        }
    }
}