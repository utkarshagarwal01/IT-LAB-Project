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

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[index];

        int sid = Convert.ToInt32(row.Cells[0].Text);
        int tid = Convert.ToInt32(row.Cells[2].Text);

        string connstr = WebConfigurationManager.ConnectionStrings["TG"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();
        try
        {
            if (e.CommandName == "Approve")
            {
                SqlCommand command = new SqlCommand("Delete from Request Where Sid=@sid", conn);
                command.Parameters.AddWithValue("@sid", sid);
                int rowsaffected = command.ExecuteNonQuery();

                command = new SqlCommand("Update Student Set Tid=@tid where Sid=@sid", conn);
                command.Parameters.AddWithValue("@sid", sid);
                command.Parameters.AddWithValue("@tid", tid);
                rowsaffected = command.ExecuteNonQuery();
            }
            else if (e.CommandName == "Disapprove")
            {
                SqlCommand command = new SqlCommand("Delete from Request where Sid=@sid and Tid=@tid", conn);
                command.Parameters.AddWithValue("@sid", sid);
                command.Parameters.AddWithValue("@tid", tid);
                int rowsaffected = command.ExecuteNonQuery();
            }
        }
        catch(Exception ex)
        {

        }
        finally
        {
            GridView1.DataBind();
        }
    }
    string currentClass = "alternateDataRow";
    string currentGroup = string.Empty;

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType == DataControlRowType.DataRow)
        {
            string rowGroup = e.Row.Cells[0].Text;

            //swap class if group value changes
            if (rowGroup != currentGroup)
            {
                currentClass = currentClass == "dataRow" ? "alternateDataRow" : "dataRow";
                currentGroup = rowGroup;
            }

            e.Row.CssClass = currentClass;
        }
    }
}