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
public partial class dispdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "SELECT addproduct.ProductName, addproduct.Rate, addproduct.Description, addproduct.Picture, addcat.CatName, addsubcat.SubCatName FROM addproduct INNER JOIN addcat ON addproduct.CatID = addcat.CatID INNER JOIN addsubcat ON addproduct.SubCatID = addsubcat.SubCatID WHERE (addproduct.ProductID = @prodid)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@prodid",Request.QueryString["pid"]);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        myreader.Read();
        Label2.Text = myreader["productname"].ToString();
        Label3.Text = myreader["Catname"].ToString();
        Label4.Text = myreader["Subcatname"].ToString();
        Label5.Text = myreader["Rate"].ToString();
        Label6.Text = myreader["Description"].ToString();
        Image2.ImageUrl = "Products/" + myreader["Picture"].ToString();
        myconn.Close();
        myreader.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int r, qty, tcost;
        r = Convert.ToInt32(Label5.Text);
        qty = Convert.ToInt32(TextBox2.Text);
        tcost = r * qty;
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into addtocart values (@pname,@rt,@qt,@tc,@pic,@sessid,@prodid)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pname", Label2.Text);
        mycomm.Parameters.AddWithValue("@rt",r);
        mycomm.Parameters.AddWithValue("@qt", qty);
        mycomm.Parameters.AddWithValue("@tc", tcost);
        mycomm.Parameters.AddWithValue("@pic", Path.GetFileName(Image2.ImageUrl));
        mycomm.Parameters.AddWithValue("@sessid", Session.SessionID);
        mycomm.Parameters.AddWithValue("@prodid", Request.QueryString["pid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Session.Add("sid", Session.SessionID);
        Response.Redirect("showcart.aspx");
    }
}
