using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchResults : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    int CustomerID;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string s3 = "";
            DataSet ds1 = new DataSet();
            DataSet ds2 = new DataSet();
             s3 = Convert.ToString(Request.QueryString["catagory"]);
            string search = Convert.ToString(Request.QueryString["serchid"]);
            int pri = Convert.ToInt32(Request.QueryString["priority"]);

            if ((s3 != null))
            {
                if (s3 == "Mobiles ")
                {
                    s3 = "Mobiles & Electronics";
                    lbltitle.Text = "Mobiles & Electronics Offers";
                }

                if (s3 == "Travels ")
                {
                    s3 = "Travels & Hotels";
                    lbltitle.Text = "Travels & Hotels Offers";
                }

                if (s3 == "Home ")
                {
                    s3 = "Home & Furniture";
                    lbltitle.Text = "Home & Kitchen Offers";
                }

                if (s3 == "Others")
                {
                    s3 = "Others";
                    lbltitle.Text = "Other Offers";
                }

                if (s3 == "Food Items")
                {
                    s3 = "Food Items";
                    lbltitle.Text = "Food Offers";
                }

               

                ds1 = bind(s3);
                if (ds1.Tables[0].Rows.Count > 0)
                {

                    Session["dataset"] = ds1;
                    ddtop.DataSource = ds1;
                    ddtop.DataBind();
                    hot1.Visible = true;
                    hot.Visible = true;
                }
            }

            if ((search != null))
            {
                
                ds1 = bind1(search);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    lbltitle.Text = "Searched Coupons";
                   // Session["title"] = lbltitle.Text;
                    Session["dataset"] = ds1;
                    ddtop.DataSource = ds1;
                    ddtop.DataBind();
                    hot1.Visible = true;
                    hot.Visible = true;
                }
            }

            if ((pri != null))
            {

                ds1 = bind2(pri);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    lbltitle.Text = "Top Coupons & Offers Of the Day ";
                  //  Session["title"] = lbltitle.Text;
                    Session["dataset"] = ds1;
                    ddtop.DataSource = ds1;
                    ddtop.DataBind();
                    hot1.Visible = true;
                      hot.Visible = true;
                }
            }

            if (Convert.ToString(Request.QueryString["tag"]) != null && Request.QueryString["tag"].ToString() != "")
            {
                 DataSet tmpDS = (DataSet)Session["dataset"];
               // s3 = Convert.ToString(Session["dataset"]);
              //  ds2 = bind(s3);
                ddtop.DataSource = tmpDS;
                ddtop.DataBind();
                lbltitle.Text = Convert.ToString(Request.QueryString["title"]);

                Button btn1 = null;
                ds = bind(Convert.ToInt32(Request.QueryString["tag"]));
                string s = ds.Tables[0].Rows[0]["tag"].ToString();

                for (int i = 0; i < tmpDS.Tables[0].Rows.Count; i++)
                {
                    int s1 = Convert.ToInt32(ds.Tables[0].Rows[0]["id"].ToString());
                    int a = Convert.ToInt32(tmpDS.Tables[0].Rows[i]["id"].ToString());
                    if (a == s1)
                    {
                        btn1 = (Button)ddtop.Items[i].FindControl("btn");
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
                hot1.Visible = true;
                hot.Visible = true;
            }
        }
    }

    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "coupon")
        {
            string x = lbltitle.Text;
            CustomerID = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("SearchResults.aspx?tag=" + CustomerID + "&title=" + x);
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

    public DataSet bind(int s)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from coupons_cat where id='" + s + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet bind(string s3)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from coupons_cat where catagory='" + s3 + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet bind1(string s4)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from coupons_cat where discription like '"+s4+"%'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public DataSet bind2(int s4)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from coupons_cat where proiority='" + s4 + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
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


    // top distributors
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

    // top brands
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

    // top stores
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://pantaloons.com/"); //pantaloon
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.kewalkiran.com/"); //kewalkiran
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.shoppersstop.com/"); //shoppers stop
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.tata.com/company/profile/Trent"); //trent
    }
    protected void lnks1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.futuregroup.in/"); //future group
    }

    // http://dl.flipkart.com/dl/?affid=vyarramse
    // http://www.flipkart.com/


    // search script
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

    //protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    //{
    //    Response.Redirect("http://www.shopclues.com/");
    //}
    //protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    //{
    //    Response.Redirect("http://www.shopclues.com/mobiles.html");
    //}
    //protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
    //{
    //    Response.Redirect("http://www.shopclues.com/fashion.html");
    //}

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
        string s = "Mobiles & Electronics";
        lbltitle.Text = "Mobiles & Electronics Offers";
        Response.Redirect("MoreOffers.aspx?catagory=" + s + "&title=" + lbltitle.Text);
    }

    protected void lnkshop1_Click(object sender, EventArgs e)
    {
        string s = "Fashions";
        lbltitle.Text = "Fashion Offers";
        Response.Redirect("MoreOffers.aspx?catagory=" + s + "&title=" + lbltitle.Text);
    }

    protected void lnkshop2_Click(object sender, EventArgs e)
    {
        string s = "Home & Furniture";
        lbltitle.Text = "Home & Furniture Offers";
        Response.Redirect("MoreOffers.aspx?catagory=" + s + "&title=" + lbltitle.Text);
    }

    protected void lnkshop3_Click(object sender, EventArgs e)
    {
        string s = "Others";
        lbltitle.Text = "Other Offers";
        Response.Redirect("MoreOffers.aspx?catagory=" + s + "&title=" + lbltitle.Text);
    }

    protected void lnktravel3_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'> window.open('https://www.redbus.in','_blank',false); </script>");
    }

    protected void lnktravel2_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'> window.open('http://www.industravels.com/','_blank',false); </script>");
    }

    protected void lnktravel1_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'> window.open('http://www.industravels.com/','_blank',false); </script>");
    }

    protected void lnktravel_Click(object sender, EventArgs e)
    {
        Response.Write("<script type='text/javascript'> window.open('http://www.industravels.com/','_blank',false); </script>");
    }

    protected void lnkall_Click(object sender, EventArgs e)
    {
        top1.Focus();
    }

    protected void lnktop_Click(object sender, EventArgs e)
    {
        lbltitle.Text = "Hot Coupons & Offers Of The Day";
        int prio = 1;
        hot.Visible = true;
        hot1.Visible = true;
        Response.Redirect("SearchResults.aspx?priority=" +prio + "&title=" + lbltitle.Text);

       // DataSet ds = bind();
      //  ddtop.DataSource = ds;
      //  ddtop.DataBind();
    }

    protected void lnkfood1_Click(object sender, EventArgs e)
    {
        string s = "Food Items";
        lbltitle.Text = "Food Offers";
        Response.Redirect("MoreOffers.aspx?catagory=" + s + "&title=" + lbltitle.Text);
        // Response.Write("http://pridecoupons.com/FoodOffers.aspx','_blank',false); </script>");
    }

}