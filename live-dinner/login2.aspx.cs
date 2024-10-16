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

public partial class login2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\live-dinner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        //try
        //{
        String query = "select r_id,uname,pass from registration where uname='" + uname.Text + "'and pass='" + pass.Text + "'";
        SqlCommand com = new SqlCommand(query, con);
        com.CommandType = CommandType.Text;
        SqlDataReader rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            Session["r_id"] = Convert.ToInt16(rdr["r_id"]);
            Session["uname"] = Convert.ToString(rdr["uname"]);
            Response.Redirect("cat.aspx");
        }
        else
        {
            Response.Redirect("login2.aspx");
        }

        // }
        //catch { }
    }
}
