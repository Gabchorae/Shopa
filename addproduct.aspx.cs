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
public partial class addproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "insert into addproduct values(@pname,@cid,@scid,@rt,@des,@pic)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@cid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@scid", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@rt", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@des", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@pic", FileUpload1.FileName);
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(MapPath("Products/" + FileUpload1.FileName));
        }
        myconn.Open();
        int x = mycomm.ExecuteNonQuery();

        if (x == 1)
        {
            Response.Write("<script>alert('Sub Category Added')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        else
        {
            Response.Write("<script>alert('Sub Category not added')</script>");
        }
    }
}
