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

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[4].Text.Trim() != "" )
            {
                e.Row.Cells[6].Visible = false;
            }
            if (Array.IndexOf(requested,Convert.ToInt32(e.Row.Cells[0].Text.Trim())) >= 0 )
            {
                System.Diagnostics.Debug.WriteLine(" zdsbf"+e.Row.Cells[0].Text.Trim());

                e.Row.Cells[6].Enabled = false;
                e.Row.Cells[6].Text = "Applied!";
            }
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];

        int sid = Convert.ToInt32(row.Cells[0].Text);
        int tid = Convert.ToInt32(Request.Cookies["Faculty"].Value);
        
        string connstr = WebConfigurationManager.ConnectionStrings["TG"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();
        try
        {
            if (e.CommandName == "Apply")
            {
                SqlCommand command = new SqlCommand("Insert into Request(Tid,Sid) values (@tid,@sid)", conn);
                command.Parameters.AddWithValue("@sid", sid);
                command.Parameters.AddWithValue("@tid", tid);
                int rowsaffected = command.ExecuteNonQuery();
            }
        }
        
        finally
        {
            GridView1.DataBind();
        }
    }
    int[] requested = new int[100];
    int index = 0;
    
    protected void GridView1_DataBinding(object sender, EventArgs e)
    {
        string connstr = WebConfigurationManager.ConnectionStrings["TG"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();
        System.Diagnostics.Debug.WriteLine("Data binding1");

        try
        {
            SqlCommand command = new SqlCommand("Select Sid from Request where tid=@tid", conn);
            command.Parameters.AddWithValue("@tid", Request.Cookies["Faculty"].Value);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                System.Diagnostics.Debug.WriteLine(reader["Sid"].ToString());
                requested[index++] = Convert.ToInt32(reader["Sid"].ToString());
            }
        }
        finally
        {

        }
    }
}