using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleASP
{
    public partial class CrossPagePosting1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            //if (Page.PreviousPage != null)
            //{
            //    Label1.Text = "You came from – " + Page.PreviousPage.Title;
            //}

            Page previousPage = Page.PreviousPage;
            if (previousPage != null && previousPage.IsCrossPagePostBack )

            {



                Label1.Text = ((TextBox)previousPage.FindControl("TextBox1")).Text;


               

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Text=Session["name"].ToString() + " " + Session["pass"].ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label3.Text = "<h1>Application Hits-->" + Application["hits"].ToString();
            Label4.Text = "<h1>Session Count-->" + Session["count"].ToString();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Session["uname"] = null;
            //Response.Redirect("Login.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session["name"] = TextBox1.Text;
            //ViewState["name"] = TextBox1.Text;
            TextBox1.Text = "";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Label5.Text = Session["name"].ToString();
           // Label5.Text = ViewState["name"].ToString();
        }
    }
}