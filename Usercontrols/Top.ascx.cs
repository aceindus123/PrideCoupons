using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Usercontrols_Top : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.shopclues.com/");
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.shopclues.com/mobiles.html");
    }
    protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.shopclues.com/fashion.html");
    }
}