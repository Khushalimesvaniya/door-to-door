using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
       protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\live-dinner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    }
protected void  submit_Click(object sender, EventArgs e)
{
    con.Open();
    String query = "insert into registration (name, gender, address, city, state, pincode, mo_no, e_id, uname, pass) values(@name, @gender, @address, @city, @state, @pincode, @mo_no, @e_id, @uname, @pass)";
    SqlCommand cmd = new SqlCommand(query, con);
    cmd.Parameters.AddWithValue("@name", name.Text);
    cmd.Parameters.AddWithValue("@gender", gender.Text);
    cmd.Parameters.AddWithValue("@address", address.Text);
    cmd.Parameters.AddWithValue("@city", city.Text);
    cmd.Parameters.AddWithValue("@state", state.Text);
    cmd.Parameters.AddWithValue("@pincode", pincode.Text);
    cmd.Parameters.AddWithValue("@mo_no", mo_no.Text);
    cmd.Parameters.AddWithValue("@e_id", e_id.Text);
    cmd.Parameters.AddWithValue("@uname", uname.Text);
    cmd.Parameters.AddWithValue("@pass", pass.Text);
    cmd.ExecuteNonQuery();
    con.Close();
    Response.Redirect("login2.aspx");
}
}
