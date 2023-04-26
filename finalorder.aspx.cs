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
public partial class finalorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select * from finalorder where sessionid=@sessid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sessid", Session["sid"].ToString());
        myconn.Open();
        SqlDataReader myrder= mycomm.ExecuteReader();
        myrder.Read();
        Label2.Text=myrder["orderno"].ToString();
        Label3.Text=myrder["totalbill"].ToString();
        Label4.Text=myrder["shippingaddress"].ToString();
        Label5.Text=myrder["paymentmode"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.print()</script>");
    }
}
