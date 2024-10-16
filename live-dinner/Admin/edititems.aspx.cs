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

public partial class Admin_edititems : System.Web.UI.Page
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
           // try
            //{
                con.Open();
                String query = "select * from items where i_id=" + Request.QueryString["id"];
                SqlCommand com = new SqlCommand(query, con);
                com.CommandType = CommandType.Text;
                SqlDataReader rdr = com.ExecuteReader();
                if (rdr.Read())
                {
                    HiddenField1.Value = Convert.ToString(rdr["i_id"]);
                    txtiname.Text = Convert.ToString(rdr["i_name"]);
                    txtiprice.Text = Convert.ToString(rdr["i_price"]);
                    txtidesc.Text = Convert.ToString(rdr["i_description"]);

                }
                con.Close();
            //}
            //catch { }
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        con.Open();
        string query;
        query = "update items set i_name ='" + txtiname.Text + "' ,i_price=@i_price,i_description=@i_description, i_image='" + "~/image/" + FileUpload1.FileName + "' WHERE i_id=" + Convert.ToInt16(HiddenField1.Value);
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@i_price", txtiprice.Text);
        if (CheckFileType(FileUpload1.FileName))
            cmd.Parameters.AddWithValue("@i_image", FilePath(FileUpload1.FileName));
        else
            cmd.Parameters.AddWithValue("@i_image", "Image Not Available");
        
        cmd.Parameters.AddWithValue("@i_description", txtidesc.Text);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("items.aspx");
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
