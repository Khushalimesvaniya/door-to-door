
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

public partial class Admin_Additems : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\live-dinner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
          if (Convert.ToString(System.Web.HttpContext.Current.Session["a_um"]) == "")
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
            //con.Close();

            //con.Open();
            String query = "select i_id from items where i_id=(select max(i_id) from items)";
            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.Text;
            SqlDataReader rdr = com.ExecuteReader();
            if (rdr.Read())
            {
                int count;
                count = Convert.ToInt16(rdr["i_id"]);
                count = count + 1;
                HiddenField1.Value = Convert.ToString(count);
            }
            else
            {
                HiddenField1.Value = "1";    
            }
        }
    }
    protected void ddlcat_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlsubcat.Items.Clear();
        con.Open();
        ddlsubcat.Items.Add(new ListItem("-Select One-", " "));
        string str = "select * from subcategory where cat_id=" + ddlcat.SelectedValue;
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        ddlsubcat.DataSource = ds;
        ddlsubcat.DataBind();
        con.Close();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into items(i_name,i_price,i_image,qty,total_qty,i_description,sub_id,cat_id) values(@i_name,@i_price,@i_image,@qty,@total_qty,@i_description,@sub_id,@cat_id)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@i_name", txtiname.Text);
        cmd.Parameters.AddWithValue("@i_price", txtiprice.Text);
       
        if (CheckFileType(FileUpload1.FileName))
            cmd.Parameters.AddWithValue("@i_image", FilePath(FileUpload1.FileName));
        else
            cmd.Parameters.AddWithValue("@i_image", "Image Not Available");
        cmd.Parameters.AddWithValue("@qty", txtqty.Text);
        cmd.Parameters.AddWithValue("@total_qty", txttotalqty.Text);
        cmd.Parameters.AddWithValue("@i_description", txtidesc.Text);
        cmd.Parameters.AddWithValue("@sub_id", ddlsubcat.SelectedValue);
        cmd.Parameters.AddWithValue("@cat_id", ddlcat.SelectedValue);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("items.aspx");
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

