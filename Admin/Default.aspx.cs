using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{

    SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session.Abandon();
        }
    }

    protected void Signin_Click(object sender, EventArgs e)
    {
        if (Login(ddlUsertype.SelectedItem.Text,ddlCountry.SelectedItem.Text,txtuname.Text, txtpwd.Text))
        {
            Session["Admin"] = txtuname.Text;
            Response.Redirect("Admin-Homepage.aspx");
        }
        else
        {
            string strScript = "alert('You dont have Access to this Account');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);
        }
    }

    private bool Login(string utype, string ucontry,string User, string Passwd)
    {
        if (utype == "Admin" && ucontry == "India" && User == "admin" && Passwd == "admin1")
        {
            return true;
        }
        else
        {
            return false;
        }
    }

}
