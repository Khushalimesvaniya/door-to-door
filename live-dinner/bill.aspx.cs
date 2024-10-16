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

public partial class bill : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\live-dinner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
   int total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            fillgrid();
        }

    }
    protected void fillgrid()
    {
        con.Open();
        String str = "select * from bill where uname='" + Session["uname"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            int amount = Convert.ToInt16(ds.Tables[0].Rows[i][6].ToString());
            total = total + amount;
        }
        GridView1.DataSource = ds;
        GridView1.DataBind();
        lbltotal.Text = Convert.ToString(total);
        //label4.Text = Convert.ToString(total);
        con.Close();
    }

    protected void checkout_click(object sender, EventArgs e)
    {
        Response.Redirect("Thank You.aspx");
    }
}
