using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_Charity_Website
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
       

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=WELCOME\SQLEXPRESS;Initial Catalog=charity;User ID=sa;Password=admin123";
            con.Open();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            String sel = "select * from Login where Username='" + txtname.Text + "' and Password='" + txtpasswd.Text + "'";
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Write("Login Sucessfull");
                Response.Redirect("Adminhome.aspx");

                }
                else
                {
                   Response.Write("Login Unsucessfull");
                }
            }

            }

        }
    
