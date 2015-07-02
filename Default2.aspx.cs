using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton74_Click(object sender, EventArgs e)
    {
        Response.Redirect("ElectronicOffers.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("KitchenOffers.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("FashionOffers.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("TravelOffers.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("FoodOffers.aspx");
    }
    protected void linkmobiles_Click(object sender, EventArgs e)
    {
        velectronic.Visible = true;
        vfashions.Visible = false;
        vtravels.Visible = false;
        vkitchen.Visible = false;
        vfood.Visible = false;
    }
    protected void linkfashions_Click(object sender, EventArgs e)
    {
        velectronic.Visible = false;
        vfashions.Visible = true;
        vtravels.Visible = false;
        vkitchen.Visible = false;
        vfood.Visible = false;

    }
    protected void lnktravels_Click(object sender, EventArgs e)
    {
        velectronic.Visible = false;
        vfashions.Visible = false;
        vtravels.Visible = true;
        vkitchen.Visible = false;
        vfood.Visible = false;

    }
    protected void linkkitchen_Click(object sender, EventArgs e)
    {
        velectronic.Visible = false;
        vfashions.Visible = false;
        vtravels.Visible = false;
        vkitchen.Visible = true;
        vfood.Visible = false;
    }
    protected void lnkfood_Click(object sender, EventArgs e)
    {
        velectronic.Visible = false;
        vfashions.Visible = false;
        vtravels.Visible = false;
        vkitchen.Visible = false;
        vfood.Visible = true;
    }
    protected void ImageButton40_Click(object sender, ImageClickEventArgs e)
    {
     //   paytmcoupon.Visible = true;
       // ImageButton40.Visible = false;
       Response.Redirect("https://paytm.com/shop/h/electronics");
        
    }
    protected void ImageButton51_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.jabong.com/");
    }
    protected void Button1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.flipkart.com/offers/electronics?otracker=foz_menu_electronics");
    }
    protected void ImageButton52_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.goibibo.com/");
    }
    protected void ImageButton53_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.snapdeal.com/products/mobiles-mobile-phones");
    }
    protected void ImageButton41_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.amazon.in/computers-and-accessories/b/ref=nav_shopall_computers_all?ie=UTF8&node=976392031");
    }
    protected void ImageButton42_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.travelguru.com/");
    }
    protected void ImageButton54_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.shopclues.com/mobiles.html");
    }
    protected void ImageButton64_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.yatra.com/");
    }
    protected void ImageButton65_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.oyorooms.com/");
    }
    protected void ImageButton63_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.goibibo.com/");
    }
    protected void ImageButton61_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.fashionara.com/");
    }
    protected void ImageButton60_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.jabong.com/");
    }
    protected void ImageButton59_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.yepme.com/");
    }
    protected void ImageButton45_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.amazon.in/");
    }
    protected void ImageButton44_Click(object sender, ImageClickEventArgs e)
    {
       Response.Redirect("http://www.flipkart.com/mobiles?otracker=hp_nmenu_sub_electronics_0_Mobiles");
    }
    protected void ImageButton43_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://paytm.com/shop/h/electronics");
    }
    protected void ImageButton69_Click(object sender, ImageClickEventArgs e)
    {
       Response.Redirect("https://www.kfc.co.in/");
    }
    protected void ImageButton68_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://justeat.in/");
    }
    protected void ImageButton67_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.foodpanda.in/");
    }
    protected void ImageButton49_Click(object sender, ImageClickEventArgs e)
    {
       Response.Redirect("http://www.flipkart.com/offers/home-and-kitchen?otracker=nmenu_home-kitchen");
    }
    protected void ImageButton48_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.snapdeal.com/products/appliances");
    }
    protected void ImageButton47_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.shopclues.com/home-garden.html");
    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.flipkart.com/");
    }
    protected void LinkButton15_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.amazon.in/");
    }
    protected void LinkButton16_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://paytm.com");
    }
    protected void LinkButton17_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.snapdeal.com/");
    }
    protected void LinkButton18_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.jabong.com/");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.samsung.com/in/home");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://bata.in/");
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.sony.co.in/section/home");
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.rcom.co.in/Rcom/personal/home/index.html");
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.bajajauto.com/");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://pantaloons.com/");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.kewalkiran.com/");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.shoppersstop.com/");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.tata.com/company/profile/Trent");
    }
    protected void lnks1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.futuregroup.in/");
    }
}