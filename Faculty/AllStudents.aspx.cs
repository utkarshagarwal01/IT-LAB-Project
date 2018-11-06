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
}