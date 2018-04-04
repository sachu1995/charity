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
    public partial class Events : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=WELCOME\SQLEXPRESS;Initial Catalog=charity;User ID=sa;Password=admin123";
            con.Open();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            String ins = "insert into Events(Event,Event_Purpose,Sponsoring_Group,Person_Responsible,Phone,size_grp,Email,Date,Time_from,Time_to) values('" + txtevents.Text + "','" + txtevent.Text + "','" + txtgroup1.Text + "','" + txtperson.Text + "','" + txtphone.Text + "','" + txtgroup.Text + "','" + txtemail.Text + "','" + txtdate.Text + "','" + txtfrom.Text + "','" + txtto.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            txtevents.Text = "";
            txtevent.Text = "";
            txtgroup1.Text = "";
            txtperson.Text = "";
            txtphone.Text = "";
            txtgroup.Text = "";
            txtemail.Text = "";
            txtdate.Text = "";
            txtfrom.Text = "";
            txtto.Text   = "";
        }

        }
    }
