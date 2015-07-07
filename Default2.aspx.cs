using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
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

                    ds = bind(Convert.ToInt32(Request.QueryString["tag"]));
                    string s = ds.Tables[0].Rows[0]["tag"].ToString();

                    for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                    {
                        int s1 = Convert.ToInt32(ds.Tables[0].Rows[0]["id"].ToString());
                        int a = Convert.ToInt32(ds1.Tables[0].Rows[i]["id"].ToString());
                        if (a == s1)
                        {
                            Button btn1 = (Button)ddtop.Items[i].FindControl("btn");
                            btn1.Visible = false;
                            Button btn2 = (Button)ddtop.Items[i].FindControl("btn1");
                            btn2.Visible = true;
                            string code = ds.Tables[0].Rows[0]["catoffer"].ToString();
                            if (code == "YES")
                            {
                                btn2.Text = "Deal Activated";
                                btn2.CssClass = "btncursor1";
                            }
                            else if (code == "NO")
                            {
                                string code1 = ds.Tables[0].Rows[0]["code"].ToString();
                                btn2.Visible = true;
                            }
                        }
                    }

                    Response.Write("<script type='text/javascript'> window.open('" + s + "','_blank'); </script>");
                }

                if (Convert.ToString(Request.QueryString["tag1"]) != null && Request.QueryString["tag1"].ToString() != "")
                {
                    ds = bind(Convert.ToInt32(Request.QueryString["tag1"]));
                    string s = ds.Tables[0].Rows[0]["tag"].ToString();

                    sample = ds.Tables[0].Rows[0]["catagory"].ToString();
                    DataSet   ds3 = bind1(sample);
                    DataList1.DataSource = ds3;
                    DataList1.DataBind();
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
                    for (int i = 0; i < ds3.Tables[0].Rows.Count; i++)
                    {
                        int s1 = Convert.ToInt32(ds.Tables[0].Rows[0]["id"].ToString());
                        int a = Convert.ToInt32(ds3.Tables[0].Rows[i]["id"].ToString());

                        if (a == s1)
                        {
                            Button btn1 = (Button)DataList1.Items[i].FindControl("dlbtn");
                            btn1.Visible = false;
                            Button btn2 = (Button)DataList1.Items[i].FindControl("dlbtn1");
                            btn2.Visible = true;
                            string code = ds.Tables[0].Rows[0]["catoffer"].ToString();
                            if (code == "YES")
                            {
                                btn2.Text = "Deal Activated";
                                btn2.CssClass = "btncursor1";

                            }
                            else if (code == "NO")
                            {
                                string code1 = ds.Tables[0].Rows[0]["code"].ToString();
                                btn2.Visible = true;
                            }
                        
                        }
                    }

                    Response.Write("<script type='text/javascript'> window.open('" + s + "','_blank'); </script>");
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
            Response.Redirect("Default2.aspx?tag=" + CustomerID);
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
        SqlDataAdapter da = new SqlDataAdapter("Select top(8)* from coupons_cat order by id asc", con);
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
            Response.Redirect("Default2.aspx?tag1=" + CustomerID +"&title="+qq);
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
        SqlDataAdapter da = new SqlDataAdapter("select top(3)* from coupons_cat where catagory='" + s + "' order by id desc", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }


    protected void linkmobiles_Click(object sender, EventArgs e)
    {
        lblnorecord.Visible = false;
        lbltitle.Visible = true;
        lbltitle.Text = "Mobiles & Electronics Offers";

        sample = "Mobiles & Electronics";

        ds = bind1(sample);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        else
        {
            lblnorecord.Text = "No Coupons Found";
            lblnorecord.Visible = true;
        }
    }

    protected void linkfashions_Click(object sender, EventArgs e)
    {
        lblnorecord.Visible = false;

        lbltitle.Visible = true;
        lbltitle.Text = "Fashion Offers";

        sample = "Fashion";
        ds = bind1(sample);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        else
        {
            lblnorecord.Text = "No Coupons Found";
            lblnorecord.Visible = true;
        }
    }

    protected void lnktravels_Click(object sender, EventArgs e)
    {
        lblnorecord.Visible = false;

        lbltitle.Visible = true;
        lbltitle.Text = "Travels & Hotels Offers";
        sample = "Travels & Hotels";
        ds = bind1(sample);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        else
        {
            lblnorecord.Text = "No Coupons Found";
            lblnorecord.Visible = true;
        }
    }

    protected void linkkitchen_Click(object sender, EventArgs e)
    {
        lblnorecord.Visible = false;

        lbltitle.Visible = true;
        lbltitle.Text = "Home & Furniture Offers";
        sample = "Home & Furniture";
        ds = bind1(sample);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        else
        {
            lblnorecord.Text = "No Coupons Found";
            lblnorecord.Visible = true;
        }
    }

    protected void lnkfood_Click(object sender, EventArgs e)
    {
        lblnorecord.Visible = false;

        lbltitle.Visible = true;
        lbltitle.Text = "Food Items Offers";
        sample = "Food Items";
        ds = bind1(sample);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        else
        {
            lblnorecord.Text = "No Coupons Found";
            lblnorecord.Visible = true;
        }
    }

    protected void lnkmore_Click(object sender, EventArgs e)
    {
        if (lbltitle.Text == "Mobiles & Electronics Offers")
        {
            Response.Redirect("ElectronicOffers.aspx");
        }
        else if (lbltitle.Text == "Fashion Offers")
        {
            Response.Redirect("FashionOffers.aspx");
        }
        else if (lbltitle.Text == "Travels & Hotels Offers")
        {
            Response.Redirect("TravelOffers.aspx");
        }
        else if ( lbltitle.Text == "Home & Furniture Offers")
        {
            Response.Redirect("KitchenOffers.aspx");
        }
        else if (lbltitle.Text == "Food Items Offers")
        {
            Response.Redirect("FoodOffers.aspx");
        }

    }
}