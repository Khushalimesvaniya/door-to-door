using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            LinkButton1.Text = "Login";
        }
        else
        {
            LinkButton1.Text = "Logout";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "Login")
        {
            Response.Redirect("login2.aspx");
        }
        else
        {
            Response.Redirect("logout.aspx");
        }
    }
}
