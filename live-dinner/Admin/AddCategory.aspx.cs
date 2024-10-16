using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Admin_AddCategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\live-dinner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)    
    {
        if (Convert.ToString(System.Web.HttpContext.Current.Session["a_um"]) == "")
        {
            HttpContext.Current.Response.Redirect("Login.aspx");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into category (cat_nm,cat_img,description) values(@cat_nm,@cat_img,@description)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@cat_nm", txtcat.Text);
        if (CheckFileType(FileUpload1.FileName))
            cmd.Parameters.AddWithValue("@cat_img", FilePath(FileUpload1.FileName));
        else
            cmd.Parameters.AddWithValue("@cat_img", "Image Not Available");
        cmd.Parameters.AddWithValue("@description", txtdesc.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("cat.aspx");
    }
      String FilePath(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        string filepath = "~/image/" + "img" + ext;
        FileUpload1.SaveAs(MapPath(filepath));
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
}


