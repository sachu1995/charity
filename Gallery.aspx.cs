using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

namespace Online_Charity_Website
{
    public partial class Gallery : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=WELCOME\SQLEXPRESS;Initial Catalog=charity;User ID=sa;Password=admin123";
            con.Open();


        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/images/") + filename);
                    String filepath = "~/images/" + filename;
                    Label2.Text = "Status: File uploaded!";
                    String ins = "insert into Gallery (Image_path,Image_name)values('" + filepath + "','"+ txtimage.Text +"')";
                    SqlCommand cmd = new SqlCommand(ins, con);
                    cmd.ExecuteNonQuery();
                }

                catch (Exception ex)
                {
                    Label2.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }

            }

        }
    }
}