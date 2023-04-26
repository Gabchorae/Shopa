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
public partial class checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 1)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into finalorder values (@pmode,@cardno,@coname,@hname,@valid,@saddrss,@totbill,@username,@odate,@sessid)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pmode", RadioButtonList1.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@cardno", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@coname", DropDownList1.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@hname", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@valid", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@saddrss", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@totbill", Session["tbill"].ToString());
        mycomm.Parameters.AddWithValue("@username", Session["uname"].ToString());
        mycomm.Parameters.AddWithValue("@odate", DateTime.Now);
        mycomm.Parameters.AddWithValue("@sessid", Session["sid"].ToString());

        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Response.Redirect("finalorder.aspx");
    }

}
