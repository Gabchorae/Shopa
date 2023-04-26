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
using System.IO;
public partial class updatecatdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q = "Select * from addcat where catid=@catid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@catid", Request.QueryString["cid"]);
            myconn.Open();
            SqlDataReader myreader = mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["catname"].ToString();
            Image2.ImageUrl = "Products/" + myreader["catpic"].ToString();
            myreader.Close();
            myconn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "update addcat set catname=@cname,catpic=@cpic where catid=@catid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cname", TextBox1.Text);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@cpic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("Products/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@cpic", Path.GetFileName(Image2.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@catid", Request.QueryString["cid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label1.Text = "Category updated";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatecat.aspx");
    }
}
