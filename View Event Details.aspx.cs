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
    public partial class View_Event_Details : System.Web.UI.Page
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
            string str = "select * from Events";
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
            String Event_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label11")).Text;
            String Event = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String Event_Purpose = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String Sponsoring_Group = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String Person_Responsible = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            String Phone = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            String size_grp = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text;
            String Email = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text;
            String Date = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8")).Text;
            String Time_from = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9")).Text;
            String Time_to = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10")).Text;
            String update = "update Events set  Event ='" + Event + "', Event_Purpose='" + Event_Purpose + "',Sponsoring_Group='" + Sponsoring_Group + "',Person_Responsible='" + Person_Responsible + "',Phone='" + Phone + "',size_grp='" + size_grp + "',Email='" + Email + "',Date='" + Date + "',Time_from='" + Time_from + "',Time_to='" + Time_to + "' where Event_id='" + Event_id + "'";
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
