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

public partial class checkout : System.Web.UI.Page
{
    SqlConnection con;
    int total = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\live-dinner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into chout (name, address, city, state, pincode, mo_no, e_id) values(@name, @address, @city, @state, @pincode, @mo_no, @e_id)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@name", name.Text);
        cmd.Parameters.AddWithValue("@address", address.Text);
        cmd.Parameters.AddWithValue("@city", city.Text);
        cmd.Parameters.AddWithValue("@state", state.Text);
        cmd.Parameters.AddWithValue("@pincode", pincode.Text);
        cmd.Parameters.AddWithValue("@mo_no", mo_no.Text);
        cmd.Parameters.AddWithValue("@e_id", e_id.Text);
        cmd.ExecuteNonQuery();

        String query1 = "select * from cart where uname='" + Session["uname"] + "'";
        SqlDataAdapter sda = new SqlDataAdapter(query1, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            int i_id = Convert.ToInt16(ds.Tables[0].Rows[i][3].ToString());
            string i_name = Convert.ToString(ds.Tables[0].Rows[i][4].ToString());
            int i_price = Convert.ToInt16(ds.Tables[0].Rows[i][5].ToString());
            int qty = Convert.ToInt16(ds.Tables[0].Rows[i][7].ToString());
            int amount = Convert.ToInt16(ds.Tables[0].Rows[i][8].ToString());

            string query2 = "insert into bill(uname,i_id,i_name,i_price,qty,total,date) values (@uname,@i_id,@i_name,@i_price,@qty,@total,@date)";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.Parameters.AddWithValue("@uname", Session["uname"]);
            cmd2.Parameters.AddWithValue("@i_id", i_id);
            cmd2.Parameters.AddWithValue("@i_name", i_name);
            cmd2.Parameters.AddWithValue("@i_price", i_price);
            cmd2.Parameters.AddWithValue("@qty", qty);
            cmd2.Parameters.AddWithValue("@total", amount);
            cmd2.Parameters.AddWithValue("@date", DateTime.Now.ToString());
            cmd2.ExecuteNonQuery();

        }
            string q = "delete from cart where uname='" + Session["uname"] + "'";
            SqlCommand cmd3 = new SqlCommand(q, con);
            cmd3.ExecuteNonQuery();
            con.Close();
            //Response.Redirect("Thankyou.aspx");




            Response.Redirect("bill.aspx");


        
    }
}