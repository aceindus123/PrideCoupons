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
            string date = Convert.ToString(System.DateTime.Now);


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
  
}