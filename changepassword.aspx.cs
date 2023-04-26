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
public partial class changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" +
        MapPath("App_Data\\shopping.mdf") + ";Integrated Security=True;User Instance=True");
        string q = "update signup set password=@np where EmailID=@un and password=@op";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@np", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@un", Session["uname"].ToString());
        mycomm.Parameters.AddWithValue("@op", TextBox1.Text);
        myconn.Open();
        int x = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (x == 1)
        {
            Label2.Text = "Password changed successfully";
        }
        else
        {
            Label2.Text = "Current password incorrect";
        }

    }
}
