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
public partial class updatesubcatdetails : System.Web.UI.Page
{
    string cid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q = "Select * from addsubcat where subcatid=@subcatid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@subcatid", Request.QueryString["scid"]);
            myconn.Open();
            SqlDataReader myreader = mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["subcatname"].ToString();
            Image2.ImageUrl = "Products/" + myreader["subcatpic"].ToString();
            cid = myreader["catid"].ToString();
            myreader.Close();
            myconn.Close();
        }
        
    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            DropDownList1.Items.FindByValue(cid).Selected = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "update addsubcat set subcatname=@scname,catid=@cid,subcatpic=@scpic  where subcatid=@subcatid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@scname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@cid",DropDownList1.SelectedValue);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@scpic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("Products/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@scpic", Path.GetFileName(Image2.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@subcatid", Request.QueryString["scid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label1.Text = "Sub category updated";
    }
    protected void  Button2_Click(object sender, EventArgs e)
{
        Response.Redirect("updatesubcat.aspx");
}
}

