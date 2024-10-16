using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Net;
using System.Net.Mail;

public partial class _default : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\live-dinner\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    }
    private void EmailSender()
    {
        //MailMessage mail = new MailMessage();
        //mail.From = new MailAddress(txtEmail.Text);
        //mail.To.Add("Receiver Mail");
        //mail.Subject = "Enquiry Form";
        //mail.Body = "<h4>" + "Enquiry Form" + " " + txtName.Text + "</h2>" + "<br><br>" +
        //    "Subject:" + txtSubject.Text + "<br>" + "Email : " + txtEmail.Text.Trim() + "<br>" +
        //    "InQuiry : " + txtinquiry.Text.Trim() + "<br>" + "Thank You";
        //mail.IsBodyHtml = true;
        //SmtpClient smpt = new SmtpClient("Your Email");
        //NetworkCredential SMTPUserInfo; smpt.Send(mail);

    }
    //private void Empty()
    //{
    //    txtName.Text = string.Empty; txtSubject.Text = string.Empty;
    //    txtEmail.Text = string.Empty; txtinquiry.Text = string.Empty;
    //}
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        con.Open();
        String query = "insert into feedback (name, subject, email, support, product, inquiry) values(@name,@subject, @email, @support, @product, @inquiry)";
        SqlCommand cmd = new SqlCommand(query, con);
        string support;
        if (rbsvs.Checked == true)
            support = "very satisfied";
        else if (rbsn.Checked == true)
            support = "Neutral";
        else
            support = "Unsatisfied";

        string product;
        if (rbpvs.Checked == true)
            product = "very satisfied";
        else if (rbpn.Checked == true)
            product = "Neutral";
        else
            product = "Unsatisfied";

        cmd.Parameters.AddWithValue("@name",txtName.Text);
        cmd.Parameters.AddWithValue("@subject", txtSubject.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@inquiry", txtinquiry.Text);
        cmd.Parameters.AddWithValue("@support", support);
        cmd.Parameters.AddWithValue("@product", product);
       
       

        
        cmd.ExecuteNonQuery();
        Response.Redirect("login2.aspx");
        con.Close();

       
    }
        
 
   
}
