using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton74_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ElectronicOffers.aspx");
    }
    protected void ImageButton73_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("KitchenOffers.aspx");
    }
    protected void ImageButton72_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("FashionOffers.aspx");
    }
    protected void ImageButton71_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("TravelOffers.aspx");
    }
    protected void imgall_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("FoodOffers.aspx");
    }
}