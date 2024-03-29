using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleASP
{
    public partial class WebUserControlForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Populate the form.
            WebUserControl1 c1 =
            (WebUserControl1)LoadControl("WebUserControl1.ascx");
           
            //Adding user control inside the form element.
            form1.Controls.Add(c1);

            WebUserControl1 c2 =
             (WebUserControl1)LoadControl("WebUserControl1.ascx"); 
            form1.Controls.Add(c2);
        }
    }
}