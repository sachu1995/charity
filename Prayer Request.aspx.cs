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
    public partial class Prayer_Request : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = @"Data Source=WELCOME\SQLEXPRESS;Initial Catalog=charity;User ID=sa;Password=admin123";
            con.Open();
                  
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
          
            String ins = "insert into Prayer_request values('" + txtname.Text + "','" + txtaddress.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + txtprayer.Text + "')";
            SqlCommand cmd= new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            txtname.Text = "";
            txtaddress.Text = "";
            txtphone.Text = "";
            txtemail.Text = "";
            txtprayer.Text = "";
              

          }  
        }
    }
