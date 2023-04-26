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
public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into feedback values(@n,@eid,@ph,@wo,@wd,@uf,@in,@mp,@comm,@dt)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@eid", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@ph", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@wo", RadioButtonList1.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@wd", RadioButtonList2.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@uf", RadioButtonList3.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@in", RadioButtonList4.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@mp", RadioButtonList5.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@comm", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
        myconn.Open();
        mycomm.ExecuteScalar();
        myconn.Close();
        Response.Write("<script>alert('Feedback sent successfully')</script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        RadioButtonList1.ClearSelection();
        RadioButtonList2.ClearSelection();
        RadioButtonList3.ClearSelection();
        RadioButtonList4.ClearSelection();
        RadioButtonList5.ClearSelection();
        
    }
}
