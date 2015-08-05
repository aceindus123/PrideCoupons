using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Xml;

public partial class Admin_Uploadflip1 : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string Base_dir = AppDomain.CurrentDomain.BaseDirectory;

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
                
            }
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (uploadfile.HasFile)
        {
        string strFileName = Server.HtmlEncode(uploadfile.FileName);
        string strExtension = Path.GetExtension(strFileName);
       
            string strUploadFileName = "Uploads/" + strFileName;//date + strExtension               
            string path = Base_dir + strUploadFileName;
            uploadfile.SaveAs(path);
            string excelConnectionString = "";
            if (strExtension == ".xls")
            {
                excelConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties='Excel 8.0;HDR=YES;'";
                OleDbConnection excelConnection = new OleDbConnection(excelConnectionString);
                con1.Open();
                excelConnection.Open();
                OleDbCommand cmd1 = new OleDbCommand("Select * from  [Sheet1$]", excelConnection);
                OleDbDataReader dReader = cmd1.ExecuteReader();
                SqlBulkCopy sqlBulk = new SqlBulkCopy(ConfigurationManager.AppSettings["ConnectionString"].ToString());
                sqlBulk.BulkCopyTimeout = 10000;
                sqlBulk.DestinationTableName = "flipkartoffers1";
                sqlBulk.WriteToServer(dReader);
                excelConnection.Close();

                con1.Close();

                string cmd2 = "select *  from flipkartoffers1  order by fid desc ";
                SqlDataAdapter sda = new SqlDataAdapter(cmd2, con1);
                DataSet ds1 = new DataSet();
                sda.Fill(ds1);

                for (int i = 0; i <= ds1.Tables[0].Rows.Count - 1; i++)
                {
                    string cat1 = ds1.Tables[0].Rows[i]["category"].ToString();

                    string cat = "";
                    string subcat = "";

                    if ((cat1 == "Bags, Wallets & Belts") || (cat1 == "Beauty and Personal Care") || (cat1 == "Clothing") || (cat1 == "Footwear") || (cat1 == "Jewellery") || (cat1 == "Watches") )
                    {
                        cat = "Fashions";
                        subcat = "others";
                    }
                    else if ((cat1 == "Computers") || (cat1 == "Electronic Accessories") ||(cat1=="Mobiles & Accessories"))
                    {
                        cat = "Mobiles & Electronics";
                        subcat = "";

                    }
                    else if ((cat1 == "Tools & Hardware")|| (cat1 == "All"))
                    {
                        cat = "Others";
                    }

                    else
                    {
                        cat = "Home & Furniture";
                        subcat = "Kitchen & Dining";
                    }

                    //  string subcat1 = ds1.Tables[0].Rows[i]["sub_category_name"].ToString();

                    string dis = ds1.Tables[0].Rows[i]["title"].ToString();
                    string tag = ds1.Tables[0].Rows[i]["url"].ToString();
                    string date = Convert.ToString(System.DateTime.Now);

                    int catcode2 = 0;
                    string codee = "NO";
                    string catcode1 = "YES";
                    string com = "flipkart";
                    int pri = 2;
                    string path1 = "http://pridecoupons.com/images/flipkart.jpg";

                    con1.Open();
                    SqlCommand cmd = new SqlCommand("insertcompanyoffer", con1);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@catagory", cat);
                    cmd.Parameters.AddWithValue("@subcat", subcat);
                    cmd.Parameters.AddWithValue("@discription", dis);
                    cmd.Parameters.AddWithValue("@catcode", catcode2);
                    cmd.Parameters.AddWithValue("@code", codee);
                    cmd.Parameters.AddWithValue("@catoffer", catcode1);
                    cmd.Parameters.AddWithValue("@company", com);
                    cmd.Parameters.AddWithValue("@proiority", pri);
                    cmd.Parameters.AddWithValue("@imagepath", path1);
                    cmd.Parameters.AddWithValue("@tag", tag);
                    cmd.Parameters.AddWithValue("@posteddate", date);
                    cmd.ExecuteNonQuery();
                    con1.Close();
                }
                string script = "alert('offers imported  successfully')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", script, true);
            }
           
        }
        string script1 = "alert('Please Upload file')";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", script1, true);
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        uploadfile.Attributes.Clear();
    }

}