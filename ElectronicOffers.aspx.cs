using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class ElectronicOffers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    DataSet ds = new DataSet();
    int CustomerID;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds1 = new DataSet();
            ds1 = bind();
            if (ds1.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = ds1;
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
                            Button btn1 = (Button)DataList1.Items[i].FindControl("dlbtn");
                            btn1.Visible = false;
                            Button btn2 = (Button)DataList1.Items[i].FindControl("dlbtn1");
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

                    Response.Write("<script type='text/javascript'> window.open('" + s + "','_blank'); </script>");
                }
            }
        }
    }

    public DataSet bind()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from coupons_cat where catagory='Mobiles & Electronics' order by id desc", con);
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
        if (e.CommandName == "dlcoupon")
        {
            CustomerID = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("ElectronicOffers.aspx?tag=" + CustomerID);
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
}