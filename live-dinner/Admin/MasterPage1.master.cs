using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a_um"] == null)
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
            Response.Redirect("login.aspx");
        }
        else
        {
            Response.Redirect("logout.aspx");
        }
    }
}
