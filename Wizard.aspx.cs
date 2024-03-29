using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleASP
{
    public partial class Wizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // CODE BEHIND ////////////////////////////////
        // Fires when Active Steps changed
        protected void StepChanged(object sender, EventArgs e)
        {
            Label1.Text += "<br /><b>Have a Nice day!!!<b />";
        }

      
        // Fires when Finish button clicked
        protected void FinishButtonClicked(object sender, WizardNavigationEventArgs e)
        {
            Label1.Text = "Following are your details: <br />" +
                "Name: " + txtName.Text + "<br />" +
                "Contact Number: " + txtNumber.Text + "<br />" +
                "Email: " + txtEmail.Text + "<br />" +
                "Address: " + txtAddress.Text + "<br />" +
                "City: " + txtCity.Text;
        }

        protected void Wizard2_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Label2.Text = "Employee details: <br />" +
               "ID: " + TextBox1.Text + "<br />" +
                "NAME : " + TextBox2.Text + "<br />" +
                "Designation: " + TextBox3.Text;

        }

        protected void Wizard2_ActiveStepChanged(object sender, EventArgs e)
        {
            Label2.Text += "<br /><b>Have a Nice day!!!<b />";
        }
    }
}