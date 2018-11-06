using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstr = WebConfigurationManager.ConnectionStrings["TG"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        try
        {
            HttpCookie cookies = Request.Cookies["Faculty"];
            if(cookies!=null)
            {
                int id = Convert.ToInt32(cookies.Value);
            }
            SqlCommand command = new SqlCommand("Select Tfname,Tlname,Tid,Tmail From Teacher Where Tid=@id", conn);
            command.Parameters.AddWithValue("@id", Convert.ToInt32(cookies.Value));
            conn.Open();
            SqlDataReader reader = command.ExecuteReader();
            reader.Read();
            
            Label1.Text ="Welcome " + reader["Tfname"] + " " + reader["Tlname"] + " !";
            Label2.Text ="Your Teacher ID : " + reader["Tid"];
            Label3.Text ="Your Registered Email ID is : " + reader["Tmail"];
        }
        finally
        {
            conn.Close();
        }
    }
}