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
public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "Select name from signup where EmailID=@un";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox6.Text);
        myconn.Open();
        object res = mycomm.ExecuteScalar();
        myconn.Close();
        if (res == null)
        {
            q = "insert into signup values(@n,@add,@ct,@st,@ph,@un,@pass,@gn,@con,@pic,@ut)";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@add", TextBox2.Text);
            mycomm.Parameters.AddWithValue("@ct", TextBox3.Text);
            mycomm.Parameters.AddWithValue("@st", TextBox4.Text);
            mycomm.Parameters.AddWithValue("@ph", TextBox5.Text);
            mycomm.Parameters.AddWithValue("@un", TextBox6.Text);
            mycomm.Parameters.AddWithValue("@pass", TextBox7.Text);
            if (RadioButton1.Checked == true)
            {
                mycomm.Parameters.AddWithValue("@gn", "Male");
            }
            else if (RadioButton2.Checked == true)
            {
                mycomm.Parameters.AddWithValue("@gn", "Female");
            }
            mycomm.Parameters.AddWithValue("@con", DropDownList1.SelectedItem.ToString());
            mycomm.Parameters.AddWithValue("@pic", FileUpload1.FileName);
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(MapPath("userpics/" + FileUpload1.FileName));
            }
            mycomm.Parameters.AddWithValue("@ut", "normal");
            myconn.Open();
            int ans = mycomm.ExecuteNonQuery();
            myconn.Close();
            if (ans == 1)
            {
                Response.Redirect("thanx.aspx");
            }
            else
            {
                Label1.Text = "Sign up not successfully, try again";
            }

        }
        else
        {
            Label2.Text = "Username not available";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" +
        MapPath("App_Data\\shopping.mdf") + ";Integrated Security=True;User Instance=True");
        string q = "Select name from signup where EmailID=@un";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox6.Text);
        myconn.Open();
        object res = mycomm.ExecuteScalar();
        myconn.Close();
        if (res == null)
        {
            Label2.Text = "Username Available";
        }
        else
        {
            Label2.Text = "Username not available";
        }
    }
}
        
        
        
        
        
        
        
        
        
   