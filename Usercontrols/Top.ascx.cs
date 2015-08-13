using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Usercontrols_Top : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

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
}