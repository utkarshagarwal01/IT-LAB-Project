using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            FileUpload1.SaveAs(Server.MapPath("images//" + FileUpload1.FileName));
            Label4.Text = "Image Uploaded";
            Label4.ForeColor = System.Drawing.Color.ForestGreen;
        }
        TextBox1.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}