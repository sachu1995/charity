using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace Online_Charity_Website
{
    public partial class View_Booking_Details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
              if (!IsPostBack)
            {
                grid();
            }
        }
        
     public void getcon()
        {
            con.ConnectionString = @"Data Source=WELCOME\SQLEXPRESS;Initial Catalog=charity;Persist Security Info=True;User ID=sa;Password=admin123";
            con.Open();
        }
     public void grid()
     {
         getcon();
         string str = "select * from Booking";
         SqlCommand cmd = new SqlCommand(str, con);
         SqlDataAdapter adr = new SqlDataAdapter(cmd);
         DataTable dt = new DataTable();
         adr.Fill(dt);
         if (dt.Rows.Count > 0)
         {
             GridView1.DataSource = dt;
             GridView1.DataBind();
         }
     }
         

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            getcon();
            String Booking_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label16")).Text;
            String Name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String Address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String Phone_no = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String Age = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            String Email = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            String Room = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text;
            String Check_in = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text;
            String Check_out = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8")).Text;
            String Id_proof = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9")).Text;
            String Id_no = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10")).Text;
            String P_Name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11")).Text;
            String P_Age = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox12")).Text;
            String P_Contact = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox13")).Text;
            String P_description = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox14")).Text;
            String update = "update Booking set  Name ='" + Name + "', Address='" + Address + "',Phone_no='" + Phone_no + "',Age='" + Age + "',Email='" + Email + "',Room='" + Room + "',Check_in='" + Check_in + "',Check_out='" + Check_out + "',Id_proof='" + Id_proof + "',Id_no='" + Id_no + "',P_Name='" + P_Name + "', P_Age='" + P_Age + "',P_Contact='" + P_Contact + "',P_description='" + P_description + "' where Booking_id='" + Booking_id + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            grid();
        }


        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid();

        }
        
    }
}