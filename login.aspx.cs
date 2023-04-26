using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "Select name from signup where EmailId=@un and password=@pass";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@pass", TextBox2.Text);
        myconn.Open();
        object res= mycomm.ExecuteScalar();
        myconn.Close();
        if (res == null)
        {
            Label1.Text = "Username/Password invalid";
        }
        else
        {
            q = "Select usertype from signup where EmailId=@un";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@un", TextBox1.Text);
            myconn.Open();
            object x = mycomm.ExecuteScalar();
            myconn.Close();
            if (x.ToString() == "normal")
            {
                Session.Add("n", res);
                Session.Add("uname", TextBox1.Text);
                if (Session["sid"] != null)
                {
                    Response.Redirect("showcart.aspx");
                }
                else
                {
                    Response.Redirect("home.aspx");
                }
            }
            else if (x.ToString() == "admin")
            {
                Session.Add("n", res);
                Session.Add("uname", TextBox1.Text);
                Session.Add("ad", "admin");
                Response.Redirect("adminpanel.aspx");
            }
        }
    }
}
