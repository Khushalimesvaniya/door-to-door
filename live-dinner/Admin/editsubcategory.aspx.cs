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

public partial class Admin_editsubcategory : System.Web.UI.Page
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
                String query = "select * from subcategory where sub_id=" + Request.QueryString["id"];
                SqlCommand com = new SqlCommand(query, con);
                com.CommandType = CommandType.Text;
                SqlDataReader rdr = com.ExecuteReader();
                if (rdr.Read())
                {
                    HiddenField1.Value = Convert.ToString(rdr["sub_id"]);
                    txtsubcat.Text = Convert.ToString(rdr["sub_nm"]);
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
        query = "update subcategory set sub_nm ='" + txtsubcat.Text + "' ,sub_img='" + "~/image/" + FileUpload1.FileName + "' WHERE sub_id=" + Convert.ToInt16(HiddenField1.Value);
        SqlCommand cmd = new SqlCommand(query, con);
        if (CheckFileType(FileUpload1.FileName))
            cmd.Parameters.AddWithValue("@sub_img", FilePath(FileUpload1.FileName));
        else
            cmd.Parameters.AddWithValue("@sub_img", "Image Not Available");
 
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("subcategory.aspx");
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

