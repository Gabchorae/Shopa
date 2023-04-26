using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ad"] == null)
        {
            Response.Redirect("error.aspx");
        }
    }
  
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("delproduct.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
 Response.Redirect("changepassword.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
Session.Clear();
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
 Response.Redirect("adminpanel.aspx");
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Response.Redirect("suser.aspx");
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("delproduct.aspx");
    }
}
