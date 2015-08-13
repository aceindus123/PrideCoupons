using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
public partial class Admin_Amazonoffers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Admin"].ToString() == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from Category order by id asc", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                ddcategory.DataTextField = "catagoryname";
                ddcategory.DataSource = ds;
                ddcategory.DataBind();
                ddcategory.Items.Insert(0, "Select");
            }
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {

            string cat = ddcategory.SelectedItem.Text;
            string subcat = ddsub.SelectedItem.Text;
            string dis = txtdes.Text;
            int code1 = 0;
            string code = "NO";
            string catcode = "YES";   
            string com = "Amazon";
            int priority = 2;
            string path = "http://pridecoupons.com/images/"+com+".jpg";
            string tag = txttag.Text;
           // string date = Convert.ToString(System.DateTime.Now);
            string date = System.DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt");


            //string qry = "insert into coupons_cat(catagory,subcat,discription,catcode,code,catoffer,company,proiority,imagepath,tag,posteddate)values('" + cat + "','" + subcat + "','" + dis + "','" + code1 + "','" + code + "','" + catcode + "','" + com + "','" + priority + "','" + path + "','" + tag + "','" + date + "')";
            //con.Open();
            //SqlCommand cmd = new SqlCommand(qry, con);
            //cmd.ExecuteNonQuery();
            //con.Close();


            con.Open();
            SqlCommand cmd = new SqlCommand("insertcompanyoffer", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@catagory", cat);
            cmd.Parameters.AddWithValue("@subcat", subcat);
            cmd.Parameters.AddWithValue("@discription", dis);
            cmd.Parameters.AddWithValue("@catcode", code1);
            cmd.Parameters.AddWithValue("@code", code);
            cmd.Parameters.AddWithValue("@catoffer", catcode);
            cmd.Parameters.AddWithValue("@company", com);
            cmd.Parameters.AddWithValue("@proiority", priority);
            cmd.Parameters.AddWithValue("@imagepath", path);
            cmd.Parameters.AddWithValue("@tag", tag);
            cmd.Parameters.AddWithValue("@posteddate", date);
            cmd.ExecuteNonQuery();
            con.Close();

            clear();

            string alert = "alert('Offer Added Successfully')";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert box", alert, true);
        }
        catch (Exception ex)
        {

        }

    }

    protected void ddcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddcategory.SelectedItem.Text != "Select")
        {
            bind(ddcategory.SelectedItem.Text);
        }
        else
        {
            string alert = "alert('Select Category first')";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert box", alert, true);
            ddsub.ClearSelection();
        }

    }

    private void bind(string p)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from SubCategory where catagoryname='" + p + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ddsub.DataTextField = "subcatagoryname";
        ddsub.DataSource = ds;
        ddsub.DataBind();
        ddsub.Items.Insert(0, "Select");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        clear();
    }

    private void clear()
    {
        ddcategory.SelectedIndex = -1;
        ddsub.SelectedIndex = -1;
        txtdes.Text = "";
        txttag.Text = "";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //string date11 = DateTime.Now.ToString("MM/dd/yyyy");

        string date11 = DateTime.Now.AddDays(-3).ToString("MM/dd/yyyy");


        //string cmd2 = "select top(1) CONVERT(VARCHAR(10),posteddate,101) as date2 from coupons_cat  where  proiority=2 and company='snapdeal'  order by posteddate asc";
        //SqlDataAdapter sda = new SqlDataAdapter(cmd2, con);
        //DataSet ds1 = new DataSet();
        //sda.Fill(ds1);

        string cmd3 = "select CONVERT(VARCHAR(10),posteddate,101) as date1,id from coupons_cat  where proiority=2 and company='Amazon' and  posteddate < '" + date11 + "' order by posteddate asc";
        SqlDataAdapter sda1 = new SqlDataAdapter(cmd3, con);
        DataSet ds2 = new DataSet();
        sda1.Fill(ds2);

        if (ds2.Tables[0].Rows.Count != 0)
        {
            string y = "";
            for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
            {
                y += ds2.Tables[0].Rows[i]["id"].ToString() + ",";
            }

            y = y.Remove(y.Length - 1);
            string x = y;

            string s11 = "delete coupons_cat where  id in( " + x + ")";
            SqlCommand cmd = new SqlCommand(s11, con);

            con.Open();
            int count = cmd.ExecuteNonQuery();
            con.Close();
            if (count == 0)
            {
                string strScript = "alert('No Records ');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);
            }
            else
            {
                string strScript = "alert('Old Coupons Deleted Successfully ');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);
            }
        }


    }
  
}