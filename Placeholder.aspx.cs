using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleASP
{
    public partial class Placeholder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink hyperlink1 = new HyperLink();
            hyperlink1.Text = "GOOGLE";
            hyperlink1.NavigateUrl = "http://www.google.com/";
            PlaceHolder1.Controls.Add(hyperlink1);


            HyperLink hyperlink2 = new HyperLink();
            hyperlink2.Text = "YAHOO";
            hyperlink2.NavigateUrl = "http://www.yahoo.com/";
            PlaceHolder2.Controls.Add(hyperlink2);


            HyperLink hyperlink3 = new HyperLink();
            hyperlink3.Text = "MICROSOFT";
            hyperlink3.NavigateUrl = "http://www.microsoft.com/";
            PlaceHolder3.Controls.Add(hyperlink3);


            HyperLink hyperlink4 = new HyperLink();
            hyperlink4.Text = "AMAZON";
            hyperlink4.NavigateUrl = "http://www.amazon.com/";
            PlaceHolder4.Controls.Add(hyperlink4);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Image img = new Image();
            img.ImageUrl = @"~/Images/img3.jpg";
            img.BorderWidth = 3;
            img.Height = 100;
            img.Width = 100;
            
            img.BorderColor = System.Drawing.Color.BlueViolet;
            PlaceHolder5.Controls.Add(img);
        }
    }
}