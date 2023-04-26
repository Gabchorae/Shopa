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
public partial class addmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into addcat values(@cname,@cpic)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@cpic", FileUpload1.FileName);
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(MapPath("Products/" + FileUpload1.FileName));
        }
        myconn.Open();
        int x = mycomm.ExecuteNonQuery();
      
        if (x == 1)
        {
            Response.Write("<script>alert('Category added')</script>");
            TextBox1.Text = "";
        }
        else
        {
            Response.Write("<script>alert('Category not added')</script>");
        }

    }
}
