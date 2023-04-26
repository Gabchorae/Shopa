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

public partial class updateproductdetails : System.Web.UI.Page
{
    string cid, scid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q = "Select * from addproduct where productid=@prodid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@prodid", Request.QueryString["pid"]);
            myconn.Open();
            SqlDataReader myreader = mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["productname"].ToString();
            TextBox2.Text = myreader["rate"].ToString();
            TextBox3.Text = myreader["description"].ToString();
            Image2.ImageUrl = "Products/" + myreader["picture"].ToString();
            cid = myreader["catid"].ToString();
            scid = myreader["subcatid"].ToString();
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
    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            DropDownList2.Items.FindByValue(scid).Selected = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "update addproduct set productname=@pname,catid=@cid,subcatid=@subcatid,rate=@rt,description=@desc,picture=@pic where productid=@prodid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@cid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@subcatid", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@rt", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@desc", TextBox3.Text);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@pic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("Products/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@pic", Path.GetFileName(Image2.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@prodid", Request.QueryString["pid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label1.Text = "Product updated";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updateproduct.aspx");
    }
}