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
    public partial class View_News : System.Web.UI.Page
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
            string str = "select * from News";
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
            String news_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label5")).Text;
            String Headline = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String Subject = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String Date = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String update = "update News set  Headline ='" + Headline + "', Subject='" + Subject + "',Date='" + Date + "' where news_id='" + news_id + "'";
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