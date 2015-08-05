using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Xml;

public partial class Admin_UploadOffers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);

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

        string fileName = Path.GetFileName(uploadfile.PostedFile.FileName);
        string filePath = Server.MapPath("~/Uploads/") + fileName;
        uploadfile.SaveAs(filePath);
        string xml = File.ReadAllText(filePath);

        using (SqlCommand cmd = new SqlCommand("InsertXML1"))
        {
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@xml", xml);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        string cmd2 = "select distinct id,  (mrp - offer_price) as price,title,description,link,sub_category_name,category_name,offer_price,mrp,availability  from snapdealoffers where  availability='in stock'  order by price desc ";
        SqlDataAdapter sda = new SqlDataAdapter(cmd2, con);
        DataSet ds1 = new DataSet();
        sda.Fill(ds1);


        

        for (int i = 0; i <= ds1.Tables[0].Rows.Count - 1; i++)
        {
            string cat1 = ds1.Tables[0].Rows[i]["category_name"].ToString();
            string cat = "";
            if (cat1 == "TV Shop" || cat1 == "Mobiles & Tablets" || cat1 == "Computers & Peripherals")
            {
                cat = "Mobiles & Electronics";
            }
            else if (cat1 == "Automotive" || cat1 == "Automobiles")
            {
                cat = "Others";
            }
            else if (cat1 == "Men's Footwear" || cat1 == "Women's Ethnic Wear")
            {
                cat = "Fashions";
            }
            else
            {
                cat = "Home & Furniture";

            }

            string subcat1 = ds1.Tables[0].Rows[i]["sub_category_name"].ToString();
            string subcat = "";
            if (cat1 == "TV Shop")
            {
                subcat = "Electronics";
            }
            else
            {
                subcat = "Home Decor";

            }
            string dis = ds1.Tables[0].Rows[i]["title"].ToString();
            string tag = ds1.Tables[0].Rows[i]["link"].ToString();
            string date = Convert.ToString(System.DateTime.Now);

            int catcode2 = 0;
            string codee = "NO";
            string catcode1 = "YES";
            string com = "snapdeal";
            int pri = 2;
            string path = "http://pridecoupons.com/images/snapdeal.jpg";

            con.Open();
            SqlCommand cmd = new SqlCommand("insertcompanyoffer", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@catagory",cat);
                    cmd.Parameters.AddWithValue("@subcat", subcat);
                    cmd.Parameters.AddWithValue("@discription", dis);
                    cmd.Parameters.AddWithValue("@catcode", catcode2);
                    cmd.Parameters.AddWithValue("@code", codee);
                    cmd.Parameters.AddWithValue("@catoffer", catcode1);
                    cmd.Parameters.AddWithValue("@company", com);
                    cmd.Parameters.AddWithValue("@proiority", pri);
                    cmd.Parameters.AddWithValue("@imagepath",path);
                    cmd.Parameters.AddWithValue("@tag", tag);
                    cmd.Parameters.AddWithValue("@posteddate", date);
                    cmd.ExecuteNonQuery();

            //string qry = "insert into coupons_cat(catagory,subcat,discription,catcode,code,catoffer,company,proiority,imagepath,tag,posteddate)   values('" + cat + "','" + subcat + "','" + dis + "','" + catcode2 + "','" + codee + "','" + catcode1 + "','" + com + "','" + pri + "','" + path + "','" + tag + "','" + date + "')";
            //con.Open();
            //SqlCommand cmd = new SqlCommand(qry, con);
            //cmd.ExecuteNonQuery();
            con.Close();

        }
    }




     //  // string x = Path.GetFileName(uploadfile.FileName);
     // //  string x = Server.HtmlEncode(uploadfile.FileName);
     //   DataSet ds = new DataSet();

     //  string x = Base_dir +"Uploads/"+ uploadfile.FileName;
     //  //string x= Server.MapPath(uploadfile.FileName);
     // // String Path = HttpContext.Current.Request.PhysicalApplicationPath + uploadfile.FileName;
     // // string file_name = System.IO.Path.GetFileName(uploadfile.PostedFile.FileName);

     // // string fileBasePath = Server.MapPath("~/");
     // // string x = System.IO.Path.GetFileName(this.uploadfile.FileName);
     // // string fullFilePath = fileBasePath + fileName;
     ////  string x = System.IO.Path.GetFullPath(uploadfile.FileName);

     // ////  ds.ReadXml(@"C:\Users\seshu\Desktop\snapdeal\topGM.xml\topGM.xml");
     //  ds.ReadXml(@x);
     //  con.Open();
     //    for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
     //    {
     //        string disp = ds.Tables[0].Rows[i]["description"].ToString();

     // //  //    //string qry = @"insert into snapdealoffers(id,title,description,brand,link,image_link,sub_category_id,sub_category_name,category_id,category_name,offer_price,mrp,availability) values      ('" + ds.Tables[0].Rows[i]["id"].ToString() + "','" + ds.Tables[0].Rows[i]["title"].ToString() + "','" + disp + "','" + ds.Tables[0].Rows[i]["brand"].ToString() + "','" + ds.Tables[0].Rows[i]["link"].ToString() + "','" + ds.Tables[0].Rows[i]["image_link"].ToString() + "','" + ds.Tables[0].Rows[i]["sub_category_id"].ToString() + "','" + ds.Tables[0].Rows[i]["sub_category_name"].ToString() + "','" + ds.Tables[0].Rows[i]["category_id"].ToString() + "','" + ds.Tables[0].Rows[i]["category_name"].ToString() + "','" + ds.Tables[0].Rows[i]["offer_price"].ToString() + "','" + ds.Tables[0].Rows[i]["mrp"].ToString() + "','" + ds.Tables[0].Rows[i]["availability"].ToString() + "')";

     //        SqlCommand cmd = new SqlCommand("snapoffer", con);
     //        cmd.CommandType = CommandType.StoredProcedure;
     //        cmd.Parameters.AddWithValue("@id", ds.Tables[0].Rows[i]["id"].ToString());
     //        cmd.Parameters.AddWithValue("@title", ds.Tables[0].Rows[i]["title"].ToString());
     //        cmd.Parameters.AddWithValue("@description", ds.Tables[0].Rows[i]["description"].ToString());
     //        cmd.Parameters.AddWithValue("@brand", ds.Tables[0].Rows[i]["brand"].ToString());
     //        cmd.Parameters.AddWithValue("@link", ds.Tables[0].Rows[i]["link"].ToString());
     //        cmd.Parameters.AddWithValue("@image_link", ds.Tables[0].Rows[i]["image_link"].ToString());
     //        cmd.Parameters.AddWithValue("@sub_category_id", ds.Tables[0].Rows[i]["sub_category_id"].ToString());
     //        cmd.Parameters.AddWithValue("@sub_category_name", ds.Tables[0].Rows[i]["sub_category_name"].ToString());
     //        cmd.Parameters.AddWithValue("@category_id", ds.Tables[0].Rows[i]["category_id"].ToString());
     //        cmd.Parameters.AddWithValue("@category_name", ds.Tables[0].Rows[i]["category_name"].ToString());
     //        cmd.Parameters.AddWithValue("@offer_price", ds.Tables[0].Rows[i]["offer_price"].ToString());
     //        cmd.Parameters.AddWithValue("@mrp", ds.Tables[0].Rows[i]["mrp"].ToString());
     //        cmd.Parameters.AddWithValue("@availability", ds.Tables[0].Rows[i]["availability"].ToString());
     //        cmd.ExecuteNonQuery();
     //    }


     //    string cmd2 = "select top(20) *,sid, (mrp - offer_price) as price  from snapdealoffers where availability='in stock' and category_name='Home & Kitchen' order by price desc";
     //    SqlDataAdapter sda = new SqlDataAdapter(cmd2, con);

     //    DataSet ds1 = new DataSet();
     //    sda.Fill(ds1);

     //    string y = "";
     //    for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
     //    {
     //        y += ds1.Tables[0].Rows[i]["sid"].ToString() + ",";
     //    }

     //    y = y.Remove(y.Length - 1);
     //    string x1 = y;

     //    string qry1 = "DELETE FROM snapdealoffers WHERE sid NOT IN(" + x1 + ")";
     //    SqlCommand cmd1 = new SqlCommand(qry1, con);
     //    cmd1.ExecuteNonQuery();

     //    con.Close();
    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        uploadfile.Attributes.Clear();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string date11 = DateTime.Now.ToString("MM/dd/yyyy");

        string cmd2 = "select top(1) CONVERT(VARCHAR(10),posteddate,101) as date2 from coupons_cat  where  proiority=2 and company='snapdeal'  order by posteddate asc";
        SqlDataAdapter sda = new SqlDataAdapter(cmd2, con);
        DataSet ds1 = new DataSet();
        sda.Fill(ds1);

        string cmd3 = "select CONVERT(VARCHAR(10),posteddate,101) as date1,* from coupons_cat  where proiority=2 and company='snapdeal'and  posteddate between '"+ds1.Tables[0].Rows[0]["date2"].ToString()+"' and '"+date11+"' order by posteddate asc";
        SqlDataAdapter sda1 = new SqlDataAdapter(cmd3, con);
        DataSet ds2 = new DataSet();
        sda1.Fill(ds2);


    }
}