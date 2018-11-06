using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Administrator_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pagename = GetCurrentPageName();
        /*if(Session["AdminEmail"] == null)
        { 
            Response.Redirect("Login.aspx?Redirect=" + Server.UrlEncode(pagename));
        }*/
        Dictionary<string, HtmlGenericControl> nav_active = new Dictionary<string, HtmlGenericControl>()
        {
            {"Notifications.aspx", navli1 },
            {"NewStudents.aspx", navli2 },
            {"AllStudents.aspx", navli3 },
        };
        nav_active[pagename].Attributes.Add("class", "active");
    }

    public string GetCurrentPageName()
    {
        string sPath = Request.Url.AbsolutePath;
        System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
        string sRet = oInfo.Name;
        return sRet;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}
