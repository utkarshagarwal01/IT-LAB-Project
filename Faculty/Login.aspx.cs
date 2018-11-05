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
    protected void Button1_OnClick(object sender, EventArgs e)
    {
        string url="Information.aspx?";
        url += "Username=" +TextBox1.Text;
        Response.Redirect(url);
    }
}