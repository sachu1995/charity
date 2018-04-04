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
    public partial class View_Bloodbank_Details : System.Web.UI.Page
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
            string str = "select * from Blood_Bank";
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
            String Blood_Id = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label9")).Text;
            String Full_Name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String Blood_Group = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String State = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String City = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            String Mobile_no = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            String Email = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text;
            String Lst_time_blood_donated = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text;
            String update = "update Blood_Bank set  Full_Name ='" + Full_Name + "', Blood_Group='" + Blood_Group + "',State='" + State + "',City='" + City + "',Mobile_no='" + Mobile_no + "',Email='" + Email + "',Lst_time_blood_donated='" + Lst_time_blood_donated + "' where Blood_Id='" + Blood_Id + "'";
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