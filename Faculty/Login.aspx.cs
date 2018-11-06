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
    protected void Button1_OnClick(object sender, EventArgs e)
    {
        string connstr = WebConfigurationManager.ConnectionStrings["TG"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        try
        {
            SqlCommand command = new SqlCommand("Select Tpassword,Tid From Teacher Where Tmail=@email", conn);
            command.Parameters.AddWithValue("@email", TextBox1.Text);
            conn.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read() && reader["Tpassword"].ToString() == TextBox2.Text)
            {
                Session["FacultyEmail"] = TextBox1.Text;
                HttpCookie cookie = new HttpCookie("Faculty",reader["Tid"].ToString());
                Response.Cookies.Add(cookie);

                if (Request.QueryString["Redirect"] != null)
                    Response.Redirect(Request.QueryString["Redirect"]);
                else
                    Response.Redirect("Information.aspx");
            }
            else
            {
                Label6.Text = "Please check your email and password!";
            }
        }
        finally
        {
            conn.Close();
        }
    }
}