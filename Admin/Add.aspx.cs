using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class Admin_Add : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string date = DateTime.Now.ToString();

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
                ddcat.DataTextField = "catagoryname";
                ddcat.DataSource = ds;
                ddcat.DataBind();
                ddcat.Items.Insert(0, "Select");

                cat.Visible = true;
                subcat.Visible = false;
                subcat1.Visible = false;
                comp.Visible = false;
            }
        }
    }


    protected void lnkcat_Click(object sender, EventArgs e)
    {
        cat.Visible = true;
        subcat.Visible = false;
        subcat1.Visible = false;
        comp.Visible = false;
    }

    protected void lnksubcat_Click(object sender, EventArgs e)
    {
        cat.Visible = false;
        subcat.Visible = true;
        subcat1.Visible = true;
        comp.Visible = false;
    }

    protected void lnkcompany_Click(object sender, EventArgs e)
    {
        cat.Visible = false;
        subcat.Visible = false;
        subcat1.Visible = false;
        comp.Visible = true;
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string catitem = txtcat.Text;
        string qry = "insert into Category(catagoryname,posteddate)values('" + catitem + "','" + date + "')";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();


        txtcat.Text = "";

        cat.Visible = true;
        subcat.Visible = false;
        subcat1.Visible = false;
        comp.Visible = false;
     //   Response.Write("<script type='text/javascript'> window.open('Catagory Added Successfully'); </script>");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string catitem = ddcat.SelectedItem.Text;
        string subcatitem = txtsub.Text;

        string qry = "insert into subcategory(catagoryname,subcatagoryname,posteddate)values('" + catitem + "','" + subcatitem + "','" + date + "')";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();


        txtsub.Text = "";
        ddcat.SelectedIndex = -1;

        cat.Visible = false;
        subcat.Visible = true;
        subcat1.Visible = true;
        comp.Visible = false;
       // Response.Write("<script type='text/javascript'> window.open('Sub Catagory Added Successfully'); </script>");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string catitem = txtcomp.Text;
        string qry = "insert into company(name,createddate)values('" + catitem + "','" + date + "')";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();


        txtcomp.Text = "";

        cat.Visible = false;
        subcat.Visible = false;
        subcat1.Visible = false;
        comp.Visible = true;
        //Response.Write("<script type='text/javascript'> window.open('Company Added Successfully'); </script>");
    }
}