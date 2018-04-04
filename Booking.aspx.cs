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
    public partial class Booking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=WELCOME\SQLEXPRESS;Initial Catalog=charity;User ID=sa;Password=admin123";
            con.Open();
                  
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            String ins = "insert into Booking (Name,Address,Phone_no,Age,Email,Room,Check_in,Check_out,Id_proof,Id_no,P_Name,P_Age,P_Contact,P_description) values('" + txtname2.Text + "','" + txtaddress2.Text + "','" + txtphone.Text + "','" + txtage1.Text + "','" + txtemail.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + txtdate.Text + "','" + txttime.Text + "','" + txtid.Text + "','" + txtno.Text + "','" + txtname.Text + "','"+txtage.Text+"','"+txtcontact.Text+"','"+txtdescription+"')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            txtname2.Text = "";
            txtaddress2.Text = "";
            txtphone.Text = "";
            txtage1.Text = "";
            txtemail.Text="";
            txtdate.Text = "";
            txttime.Text = "";
            txtid.Text = "";
            txtno.Text = "";
            txtname.Text = "";
            txtage.Text = "";
            txtcontact.Text = "";
            txtdescription.Text = "";
        }
    }
}