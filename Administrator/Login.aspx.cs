using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
        string connstr = WebConfigurationManager.ConnectionStrings["TG"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        try
        {
            SqlCommand command = new SqlCommand("Select password From Administrator Where email=@email", conn);
            command.Parameters.AddWithValue("@email", TextBox1.Text);
            conn.Open();
            SqlDataReader reader = command.ExecuteReader();
            reader.Read();
            if (reader["password"].ToString() == TextBox2.Text)
            {
                Session["AdminEmail"] = TextBox1.Text;
                Response.Redirect("Notifications.aspx");
            }
        }
        finally
        {
            conn.Close();
        } 
    }
}