using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web;

namespace ShopingSite
{
    public class cn
    {
        public static SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\RUSHIRAJSINH\Documents\GitHub\karmarajsinh\ShopingSite\shopping.mdf;Integrated Security=True;Connect Timeout=30");
    }
}