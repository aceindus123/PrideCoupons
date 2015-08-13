﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TravelOffers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    DataSet ds = new DataSet();
    int CustomerID;
    string sample = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
            ds1 = bind();


            sample = "Mobiles & Electronics";
            ds2 = bind1(sample);
            lbltitle.Text = "Mobiles & Electronics Offers";

            if ((ds1.Tables[0].Rows.Count > 0) && (ds2.Tables[0].Rows.Count > 0))
            {
                ddtop.DataSource = ds1;
                ddtop.DataBind();

                DataList1.DataSource = ds2;
                DataList1.DataBind();



                if (Convert.ToString(Request.QueryString["tag"]) != null && Request.QueryString["tag"].ToString() != "")
                {
                    Button btn1 = null;
                    TextBox txt = null;
                    ds = bind(Convert.ToInt32(Request.QueryString["tag"]));
                    string s = ds.Tables[0].Rows[0]["tag"].ToString();

                    for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                    {
                        int s1 = Convert.ToInt32(ds.Tables[0].Rows[0]["id"].ToString());
                        int a = Convert.ToInt32(ds1.Tables[0].Rows[i]["id"].ToString());
                        if (a == s1)
                        {
                            btn1 = (Button)ddtop.Items[i].FindControl("btn");
                            txt = (TextBox)ddtop.Items[i].FindControl("txt");
                            btn1.Visible = false;
                            Button btn2 = (Button)ddtop.Items[i].FindControl("btn1");
                            btn2.Visible = true;
                            string code = ds.Tables[0].Rows[0]["catoffer"].ToString();

                            if (code == "YES")
                            {
                                btn2.Text = "Deal Activated";
                                btn2.CssClass = "btncursor2";
                            }
                            else if (code == "NO")
                            {
                                string code1 = ds.Tables[0].Rows[0]["code"].ToString();
                                btn2.Visible = true;
                                btn2.CssClass = "btncursor3";
                            }
                        }
                    }

                    Response.Write("<script type='text/javascript'> window.open('" + s + "','_blank',false); </script>");
                    txt.Focus();
                }

                if (Convert.ToString(Request.QueryString["tag1"]) != null && Request.QueryString["tag1"].ToString() != "")
                {
                    ds = bind(Convert.ToInt32(Request.QueryString["tag1"]));
                    string s = ds.Tables[0].Rows[0]["tag"].ToString();

                    sample = ds.Tables[0].Rows[0]["catagory"].ToString();
                    DataSet ds3 = bind1(sample);
                    DataList1.DataSource = ds3;
                    DataList1.DataBind();
                    TextBox txt1 = null;
                    lbltitle.Text = Convert.ToString(Request.QueryString["title"]);
                    if (lbltitle.Text == "Home ")
                    {
                        lbltitle.Text = "Home & Furniture Offers";
                    }
                    if (lbltitle.Text == "Travels ")
                    {
                        lbltitle.Text = "Travels & Hotels Offers";
                    }

                    if (lbltitle.Text == "Mobiles ")
                    {
                        lbltitle.Text = "Mobiles & Electronics Offers";
                    }
                    Button btn1 = null;
                    for (int i = 0; i < ds3.Tables[0].Rows.Count; i++)
                    {
                        int s1 = Convert.ToInt32(ds.Tables[0].Rows[0]["id"].ToString());
                        int a = Convert.ToInt32(ds3.Tables[0].Rows[i]["id"].ToString());

                        if (a == s1)
                        {
                            btn1 = (Button)DataList1.Items[i].FindControl("dlbtn");
                            btn1.Visible = false;
                            Button btn2 = (Button)DataList1.Items[i].FindControl("dlbtn1");
                            btn2.Visible = true;
                            txt1 = (TextBox)DataList1.Items[i].FindControl("txt1");
                            string code = ds.Tables[0].Rows[0]["catoffer"].ToString();
                            if (code == "YES")
                            {
                                btn2.Text = "Deal Activated";
                                btn2.CssClass = "btncursor2";

                            }
                            else if (code == "NO")
                            {
                                string code1 = ds.Tables[0].Rows[0]["code"].ToString();
                                btn2.Visible = true;
                                btn2.CssClass = "btncursor3";
                            }
                        }
                    }


                    Response.Write("<script type='text/javascript'> window.open('" + s + "','_blank',false); </script>");
                    txt1.Focus();
                    //   Focus = "txt1";
                }
            }
        }

        else
        {

        }
    }


    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "coupon")
        {
            CustomerID = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("Default.aspx?tag=" + CustomerID);
        }
    }

    public void Item_Bound(Object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Button btncode = (Button)e.Item.FindControl("btn");

            if (btncode.Text == "1")
            {
                btncode.Text = "GET THIS COUPON";
            }
            else
            {
                btncode.Text = "GET THIS OFFER";
                btncode.CssClass = "btncursor1";
            }
        }
    }

    public DataSet bind()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select top(8)* from coupons_cat order by proiority asc", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet bind(int s)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from coupons_cat where id='" + s + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    protected void DataList1_ItemCommand2(object source, DataListCommandEventArgs e)
    {
        string qq = lbltitle.Text;

        if (e.CommandName == "dlcoupon")
        {
            CustomerID = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("Default.aspx?tag1=" + CustomerID + "&title=" + qq);
        }
    }

    public void Item_Bound1(Object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            Button btncode = (Button)e.Item.FindControl("dlbtn");

            if (btncode.Text == "1")
            {
                btncode.Text = "GET THIS COUPON";
            }
            else
            {
                btncode.Text = "GET THIS OFFER";
                btncode.CssClass = "btncursor1";
            }
        }
    }

    public DataSet bind1(string s)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from coupons_cat where catagory='" + s + "' order by id desc", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
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
    // http://dl.flipkart.com/dl/?affid=vyarramse
    // http://www.flipkart.com/


    // alexa 8,697,033()
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCompletionList(string prefixText)
    {
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from coupons_cat where discription like @City+'%'", con);
        cmd.Parameters.AddWithValue("@City", prefixText);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        List<string> CityNames = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            CityNames.Add(dt.Rows[i][3].ToString());
        }

        return CityNames;
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


    // alexa 8,697,033()
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCompletionList(string prefixText)
    {
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from coupons_cat where discription like @City+'%'", con);
        cmd.Parameters.AddWithValue("@City", prefixText);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        List<string> CityNames = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            CityNames.Add(dt.Rows[i][3].ToString());
        }

        return CityNames;
    }


    protected void serchimgbtn_Click(object sender, ImageClickEventArgs e)
    {
        if (txtserch.Text != "")
        {
            string s = txtserch.Text;
            Response.Redirect("SearchResults.aspx?serchid=" + s);
        }
        else
        {
            Response.Redirect("Default.aspx");
            txtserch.Text = "";
        }

    }
    protected void lnkshop_Click(object sender, EventArgs e)
    {
        Response.Redirect("ElectronicOffers.aspx");
    }
    protected void lnkshop1_Click(object sender, EventArgs e)
    {
        Response.Redirect("FashionOffers.aspx");
    }
    protected void lnkshop2_Click(object sender, EventArgs e)
    {
        Response.Redirect("KitchenOffers.aspx");
    }
    protected void lnkshop3_Click(object sender, EventArgs e)
    {
        Response.Redirect("OthersOffers.aspx");
    }
    protected void lnktravel3_Click(object sender, EventArgs e)
    {
        //Response.Redirect("https://www.redbus.in/");
        // Response.Redirect("javascript:window.location.href='https://www.redbus.in/'");
        // string strScript = "location.replace('https://www.redbus.in/');";
        //Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);

        Response.Write("<script type='text/javascript'> window.open('https://www.redbus.in','_blank',false); </script>");

    }
    protected void lnktravel2_Click(object sender, EventArgs e)
    {
        //  Response.Redirect("http://www.industravels.com/");
        Response.Write("<script type='text/javascript'> window.open('http://www.industravels.com/','_blank',false); </script>");

    }
    protected void lnktravel1_Click(object sender, EventArgs e)
    {
        // Response.Redirect("http://www.industravels.com/");
        Response.Write("<script type='text/javascript'> window.open('http://www.industravels.com/','_blank',false); </script>");

    }

    protected void lnktravel_Click(object sender, EventArgs e)
    {
        // Response.Redirect("http://www.industravels.com/");
        Response.Write("<script type='text/javascript'> window.open('http://www.industravels.com/','_blank',false); </script>");

    }

    protected void lnkall_Click(object sender, EventArgs e)
    {
      //  top1.Focus();
    }

    protected void lnktop_Click(object sender, EventArgs e)
    {
        top.Visible = true;
        top1.Visible = false;

    }
    protected void lnkfood1_Click(object sender, EventArgs e)
    {
        Response.Write("FoodOffers.aspx");
    }
}