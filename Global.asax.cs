using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace SampleASP
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application["startMessage"] = "The application has started.";

            Application["hits"] = 0;
            
        }
        
        protected void Session_Start(object sender, EventArgs e)
        {
            Application["hits"] = Int32.Parse(Application["hits"].ToString()) + 1;
            Session["count"] = 0;
            Session["count"] = Int32.Parse(Session["count"].ToString()) + 1;
            //Session["name"] = 0;
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {
        }
        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
        }
        protected void Application_Error(object sender, EventArgs e)
        {
        }
        protected void Session_End(object sender, EventArgs e)
        {
        }
        protected void Application_End(object sender, EventArgs e)
        {
        }



    }
}