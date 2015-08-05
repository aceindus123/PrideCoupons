using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class Admin_Admin_Homepage : System.Web.UI.Page
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
                try
                {
                    code.Visible = false;
                    SqlDataAdapter da = new SqlDataAdapter("Select * from Category order by id asc", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    ddcategory.DataTextField = "catagoryname";
                    ddcategory.DataSource = ds;
                    ddcategory.DataBind();
                    ddcategory.Items.Insert(0, "Select");

                    SqlDataAdapter da1 = new SqlDataAdapter("Select * from company order by id asc", con);
                    DataSet ds1 = new DataSet();
                    da1.Fill(ds1);
                    ddcompany.DataTextField = "name";
                    ddcompany.DataSource = ds1;
                    ddcompany.DataBind();
                    ddcompany.Items.Insert(0, "Select");
                }
                catch (Exception ex)
                {

                }
            }
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string code = "";
            int code1;
            string priority = "";
            string catcode="";

            if (rdcode.Checked == true)
            {
                code1 = 1;
                code = txtcode.Text;
                catcode = "NO";
            }
            else
            {
                code1 = 0;
                code = "NO";
                catcode = "YES";
            }
           

            if (ddpriority.SelectedItem.Text == " 1 (One Day or Today)")
            {
                priority = "1";
            }
            else if (ddpriority.SelectedItem.Text == " 2 (One Week)")
            {
                priority = "2";
            }
            else if (ddpriority.SelectedItem.Text == " 3 (One Month)")
            {
                priority = "3";
            }
            else if (ddpriority.SelectedItem.Text == " 4 (Alldays)")
            {
                priority = "4";
            }

            string cat = ddcategory.SelectedItem.Text;
            string subcat = ddsub.SelectedItem.Text;
            string dis = txtdes.Text;
            int catcode2 = code1;
            string catcode1 = catcode;

            string codee = code;
            string com = ddcompany.SelectedItem.Text;
            string pri = priority;
            string path = "http://pridecoupons.com/images/" + ddcompany.SelectedItem.Text + ".jpg";
            string tag = txttag.Text;
            string date=Convert.ToString(System.DateTime.Now);


            string qry = "insert into coupons_cat(catagory,subcat,discription,catcode,code,catoffer,company,proiority,imagepath,tag,posteddate)   values('"+cat+"','"+subcat+"','"+dis+"','"+catcode2+"','"+codee+"','"+catcode1+"','"+com+"','"+pri+"','"+path+"','"+tag+"','"+date+"')";
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);
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
        SqlDataAdapter da = new SqlDataAdapter("Select * from SubCategory where catagoryname='"+p+"'", con);
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
        ddcompany.SelectedIndex = -1;
        ddpriority.SelectedIndex = -1;
        txtdes.Text = "";
        txttag.Text = "";
    }
    protected void rdcode_CheckedChanged(object sender, EventArgs e)
    {
        code.Visible = true;
    }
    protected void rdoffer_CheckedChanged(object sender, EventArgs e)
    {
        code.Visible = false;
    }
}