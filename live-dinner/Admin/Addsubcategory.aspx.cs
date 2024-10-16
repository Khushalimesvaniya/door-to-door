using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_Addsubcategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\live-dinner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Convert.ToString(Session["a_um"]) == "")
        {
            HttpContext.Current.Response.Redirect("Login.aspx");
        }
        if (IsPostBack != true)
        {
            con.Open();
            ddlcat.Items.Add(new ListItem("-Select One-", " "));
            string str = "select * from category";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ddlcat.DataSource = ds;
            ddlcat.DataBind();
            con.Close();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into subcategory (sub_nm,cat_id,sub_img) values(@sub_nm,@cat_id,@sub_img)";
        SqlCommand cmd = new SqlCommand(query, con);
        
        cmd.Parameters.AddWithValue("@sub_nm", txtscat.Text);
        cmd.Parameters.AddWithValue("@cat_id", ddlcat.SelectedValue);
        if (CheckFileType(FileUpload.FileName))
            cmd.Parameters.AddWithValue("@sub_img", FilePath(FileUpload.FileName));
        else
            cmd.Parameters.AddWithValue("@sub_img", "Image Not Available");
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("subcategory.aspx");
    }
    String FilePath(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        string filepath = "~/image/" + "img" + ext;
        FileUpload.SaveAs(MapPath(filepath));
        return filepath;
    }
    bool CheckFileType(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        switch (ext.ToLower())
        {
            case ".gif":
                return true;
            case ".png":
                return true;
            case ".jpg":
                return true;
            case ".jpeg":
                return true;
            default:
                return false;
        }
    }
    protected void ddlcat_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

 }
