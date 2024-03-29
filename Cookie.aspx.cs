using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleASP
{
    public partial class Cookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["name"].Value = TextBox1.Text;
            Response.Cookies["name"].Expires = DateTime.Now.AddSeconds(2);
            Label1.Text = "Cookie has been Created";
            TextBox1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["name"] == null)
            {
                TextBox2.Text = "We did not find any Cookie";
            }
            else
            {
                TextBox2.Text = Request.Cookies["name"].Value;
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (password.Text == "1234")
            {
                // Storing email to Session variable
                Session["email"] = email.Text;
            }
            //check for session variable which should not be empty
            if (Session["email"] != null)
            {
                // I will display the stored email
               Label3.Text = "Email is stored to the session.";
                Label4.Text = Session["email"].ToString();
            }
        }
    }
}