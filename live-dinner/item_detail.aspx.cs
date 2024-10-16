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

public partial class item_detail : System.Web.UI.Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\live-dinner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
      
        String query = "select * from items where i_id=" + Request.QueryString["id"];
        SqlCommand com = new SqlCommand(query, con);
        com.CommandType = CommandType.Text;
        SqlDataReader rdr = com.ExecuteReader();
        if (rdr.Read())
        {
            lblpro_id.Text = Convert.ToString(rdr["i_id"]);
            lbl_name.Text = Convert.ToString(rdr["i_name"]);
            lbl_price.Text = Convert.ToString(rdr["i_price"]);
            lbl_dec.Text = Convert.ToString(rdr["i_description"]);
            Image1.ImageUrl = Convert.ToString(rdr["i_image"]);
            hdnscat.Value = Convert.ToString(rdr["sub_id"]);
            hdncat.Value = Convert.ToString(rdr["cat_id"]);
        }
        con.Close();
         
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into cart (cat_id,sub_id,i_id,i_name,i_price,i_image,qty,amount,uname) values(@cat_id,@sub_id,@i_id,@i_name,@i_price,@i_image,@qty,@amount,@uname)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@cat_id", hdncat.Value);
        cmd.Parameters.AddWithValue("@sub_id", hdnscat.Value);
        cmd.Parameters.AddWithValue("@i_id", lblpro_id.Text);
        cmd.Parameters.AddWithValue("@i_name", lbl_name.Text);
        cmd.Parameters.AddWithValue("@i_price", lbl_price.Text);
        cmd.Parameters.AddWithValue("@i_image", Image1.ImageUrl);
        cmd.Parameters.AddWithValue("@qty", TextBox1.Text);
        int amount = Convert.ToInt32(lbl_price.Text) * Convert.ToInt32(TextBox1.Text);
        cmd.Parameters.AddWithValue("@amount", amount);
        cmd.Parameters.AddWithValue("@uname", Session["uname"]);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("viewcart.aspx");
    }
    
}
