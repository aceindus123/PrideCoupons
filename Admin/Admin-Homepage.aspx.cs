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
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string code = "";
            string priority = "";
            if (rdcode.Checked == true)
            {
                code = txtcode.Text;
            }
            else
            {
                code = "Deal Activated";
            }
            if (ddpriority.SelectedItem.Text == "1")
            {
                priority = "1";
            }
            else if (ddpriority.SelectedItem.Text == "2")
            {
                priority = "2";
            }
            else if (ddpriority.SelectedItem.Text == "3")
            {
                priority = "3";
            }
            else if (ddpriority.SelectedItem.Text == "4")
            {
                priority = "4";
            }

            string alert = "alert('Offer Added Successfully')";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert box", alert, true);
            clear();
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