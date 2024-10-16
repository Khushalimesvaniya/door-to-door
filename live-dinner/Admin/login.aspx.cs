using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Admin_login : System.Web.UI.Page
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
      String query = "select a_id,a_um,a_pass from admin where a_um='" + uname.Text + "'and a_pass='" + pass.Text + "'";
      SqlCommand com = new SqlCommand(query, con);
      com.CommandType = CommandType.Text;
      SqlDataReader rdr = com.ExecuteReader();
      if (rdr.Read())
      {
          Session["a_id"] = Convert.ToInt16(rdr["a_id"]);
          Session["a_um"] = Convert.ToString(rdr["a_pass"]);
          Response.Redirect("home.aspx");
      }
      else
      {
          Response.Redirect("login.aspx");
      }

    }
}
