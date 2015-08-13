using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Usercontrols_Bottom : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void social1_Click(object sender, ImageClickEventArgs e)
    {
        string s = "https://www.facebook.com/pridecoupons";
        Response.Write("<script type='text/javascript'> window.open('" + s + "','_blank',false); </script>");
        
    }
}