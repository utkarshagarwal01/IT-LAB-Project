using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Byte[] imgByte = null;
        if (FileUpload1.HasFile)
        {
            HttpPostedFile File = FileUpload1.PostedFile;
            imgByte = new Byte[File.ContentLength];
            File.InputStream.Read(imgByte,0,File.ContentLength);
        }
        else
        {
            FileStream fs = File.Open(Server.MapPath("~/Administrator/images/default_image.jpg"), FileMode.Open);
            imgByte = new Byte[fs.Length];
            fs.Read(imgByte, 0, (int)fs.Length);
        }
        string connstr = WebConfigurationManager.ConnectionStrings["TG"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        try
        {
            SqlCommand command = new SqlCommand("INSERT into Student(Sname,Smail,Simage,Sdob) values (@Sname,@Smail,@Simage,@Sdob)", conn);
            command.Parameters.AddWithValue("@Sname", TextBox1.Text);
            command.Parameters.AddWithValue("@Smail", TextBox3.Text);
            command.Parameters.AddWithValue("@Simage", imgByte);
            command.Parameters.AddWithValue("@Sdob", TextBox4.Text);
            conn.Open();
            int id = Convert.ToInt32(command.ExecuteNonQuery());
            if (id == 1)
            {
                Label4.Text = "Student sucessfully inserted";
            }
            else
            {
                Label4.Text = "Error in student insertion";
            }
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        catch(Exception ex)
        {

        }
    }
}