using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
namespace Online_Charity_Website
{
    public partial class Add_News : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=WELCOME\SQLEXPRESS;Initial Catalog=charity;User ID=sa;Password=admin123";
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String ins = "insert into News(Headline,Subject,Date) values('" + txthead.Text + "','"+ txtsubject.Text +"','" + txtdate.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            txthead.Text = "";
            txtsubject.Text = "";
            txtdate.Text = "";
            
        }
    }
}