﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace SampleASP
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            //FormsAuthentication.SetAuthCookie(CreateUserWizard1.UserName, false /* createPersistentCookie */);

            //string continueUrl = CreateUserWizard1.ContinueDestinationPageUrl;
            //if (String.IsNullOrEmpty(continueUrl))
            //{
            //    continueUrl = "Login.aspx";
            //}
            //Response.Redirect(continueUrl);
            Response.Redirect("Login.aspx");
        }
    }
}