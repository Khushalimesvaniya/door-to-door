using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_cat : System.Web.UI.Page
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
            fillgrid();
        }
    }
    protected void fillgrid()
    {
        con.Open();
        String str = "select * from category";
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void imgdeltmp_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton ib = (ImageButton)sender;
        GridViewRow gv = (GridViewRow)ib.NamingContainer;
        int id = (Convert.ToInt16(GridView1.DataKeys[gv.RowIndex].Value));
        con.Open();
        string q = "delete from category where cat_id=" + id;
        SqlCommand cmd = new SqlCommand(q, con);
        cmd.ExecuteNonQuery();
        con.Close();
        fillgrid();
    }
    protected void addcat_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addcategory.aspx");
    }

}
