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
    public partial class Donation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=WELCOME\SQLEXPRESS;Initial Catalog=charity;User ID=sa;Password=admin123";
            con.Open();
        }


        protected void btnpay_Click1(object sender, EventArgs e)
        {
            String ins = "insert into Donation values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtamount.Text + "','" + txtpurpose.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            txtname.Text = "";
            txtemail.Text = "";
            txtphone.Text = "";
            txtamount.Text = "";
            txtpurpose.Text = "";
            Response.Redirect("Payment.aspx");
        }

        
   }
}