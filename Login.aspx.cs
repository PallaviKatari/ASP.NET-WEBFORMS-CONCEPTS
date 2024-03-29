using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace SampleASP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }                                                   

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool isLogin = Membership.ValidateUser(Login1.UserName, Login1.Password);
            if (isLogin)
            {
                Login1.Visible = true;
                Session["user"] = User.Identity.Name;
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
                Response.Redirect("WelcomePage.aspx");
            }
            //Response.Redirect("WelcomePage.aspx");
        }
    }
}