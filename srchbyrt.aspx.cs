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

public partial class srchbyrt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int minp, maxp;
        minp = Convert.ToInt32(DropDownList2.SelectedItem.ToString());
        maxp = Convert.ToInt32(DropDownList3.SelectedItem.ToString());
        if(maxp>=minp)
        {
            Response.Redirect("rtresults.aspx?catid=" + DropDownList1.SelectedValue + "&minprice=" + DropDownList2.SelectedItem.ToString() + "&maxprice=" + DropDownList3.SelectedItem.ToString());
        }
        else
        {
            Label2.Text = " Maximum should be greater than minimum";
        }
    }
    }
