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
public partial class showcart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "Select sum(totalcost) from addtocart where sessionid=@sessid ";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sessid", Session["sid"].ToString());
        myconn.Open();
        Label3.Text = mycomm.ExecuteScalar().ToString();
        int tbill = int.Parse(Label3.Text);
        int dis = 0;
        int rbill = 0;
        if (tbill >= 20000)
        {
            dis = 3000;
        }
        else if (tbill >= 10000)
        {
            dis = 1200;
        }
        else if (tbill >= 5000)
        {
            dis = 500;
        }
        else
        {
            dis = 0;
        }
        rbill = tbill - dis;
        Label4.Text = dis.ToString();
        Label5.Text = rbill.ToString();
        myconn.Close();
    }
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            Label2.Text = "Your cart is empty";
            Panel1.Visible = false;
        }
        else
        {
            Label2.Text = e.AffectedRows + " Products in your cart";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("dispcat.aspx");
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "Select sum(totalcost) from addtocart where sessionid=@sessid ";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sessid", Session["sid"].ToString());
        myconn.Open();
        Label3.Text = mycomm.ExecuteScalar().ToString();
        int tbill = Convert.ToInt32(Label3.Text);
        int dis = 0;
        int rbill = 0;
        if (tbill >= 20000)
        {
            dis = 3000;
        }
        else if (tbill >= 10000)
        {
            dis = 1200;
        }
        else if (tbill >= 5000)
        {
            dis = 500;
        }
        else
        {
            dis = 0;
        }
        rbill = tbill - dis;
        Label4.Text = dis.ToString();
        Label5.Text = rbill.ToString();
        myconn.Close();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
        Session.Add("tbill", Label5.Text);
        Response.Redirect("checkout.aspx");
    }
}
