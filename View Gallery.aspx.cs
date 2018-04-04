using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Online_Charity_Website
{
    public partial class View_Gallery : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=WELCOME\SQLEXPRESS;Initial Catalog=charity;User ID=sa;Password=admin123";
            con.Open();
            //SqlCommand cmd = new SqlCommand("select Image_path from Gallery", con);
            SqlDataAdapter rdr = new SqlDataAdapter("select Image_path from Gallery",con);
            DataTable dt = new DataTable();
            rdr.Fill(dt);
            RptGal.DataSource = dt;
            RptGal.DataBind();
            string a = dt.Rows[0][0].ToString();
            //mage2.ImageUrl = a;
            con.Close();
        }
    }
}