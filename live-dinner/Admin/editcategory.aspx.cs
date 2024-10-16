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


public partial class Admin_editcategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\live-dinner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
         if (IsPostBack != true)
        {

            if (Convert.ToString(System.Web.HttpContext.Current.Session["a_um"]) == "")
            {
                HttpContext.Current.Response.Redirect("Login.aspx");
            }
            try
            {
                con.Open();
                String query = "select * from category where cat_id=" + Request.QueryString["id"];
                SqlCommand com = new SqlCommand(query, con);
                com.CommandType = CommandType.Text;
                SqlDataReader rdr = com.ExecuteReader();
                if (rdr.Read())
                {
                    HiddenField1.Value = Convert.ToString(rdr["cat_id"]);
                    txtcat.Text = Convert.ToString(rdr["cat_nm"]);

                }
                con.Close();
            }
            catch { }
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        con.Open();
        string query;
        query = "update category set cat_nm ='" + txtcat.Text + "' ,cat_img='" + "~/image/" + FileUpload1.FileName+"' WHERE cat_id=" + Convert.ToInt16(HiddenField1.Value);
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.CommandType = CommandType.Text;
        if (CheckFileType(FileUpload1.FileName))
            cmd.Parameters.AddWithValue("@cat_img", FilePath(FileUpload1.FileName));
        else
            cmd.Parameters.AddWithValue("@cat_img", "Image Not Available");
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("cat.aspx");
    }
    String FilePath(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        string filepath = "~/image/" + " " + ext;
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


