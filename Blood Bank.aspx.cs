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
    public partial class Blood_Bank : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=WELCOME\SQLEXPRESS;Initial Catalog=charity;User ID=sa;Password=admin123";
            con.Open();
                  
        }

        protected void txtsubmit_Click(object sender, EventArgs e)
        {
            String ins = "insert into Blood_Bank(Full_Name,Blood_Group,State,City,Mobile_no,Email,Lst_time_blood_donated) values('" + txtname.Text + "','" + DropDownList2.SelectedItem.Text + "','" + txtstate.Text + "','" + txtcity.Text + "','" + txtmobile.Text + "','" + txtemail.Text + "','"+txtdate.Text+"')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            txtname.Text = "";
            txtstate.Text = "";
            txtcity.Text = "";
            txtmobile.Text = "";
            txtemail.Text = "";
            txtdate.Text="";
        }
    }
}