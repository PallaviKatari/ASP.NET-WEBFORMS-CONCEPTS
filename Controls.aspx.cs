using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleASP
{
    public partial class Controls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label3.Text = TextBox1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label4.Text = "Below is the selected color </br> Item=" +
            RadioButtonList_New.SelectedItem.Text + "</br> Value =" +
            RadioButtonList_New.SelectedValue + "</br> Index =" +
            RadioButtonList_New.SelectedIndex;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (RadioButtonList_New.RepeatDirection == RepeatDirection.Vertical)
            {
                RadioButtonList_New.RepeatDirection = RepeatDirection.Horizontal;
            }
            else
            {
                RadioButtonList_New.RepeatDirection = RepeatDirection.Vertical;
            }
        }

        protected void RadioButtonList_New_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //check if user has selected a file
            if (FileUpload1.HasFile)
            {
                try
                {
                    /*save file to location.
                    Make sure the directory path is correct.*/
                    FileUpload1.SaveAs("E:\\" + FileUpload1.FileName);
                    FileUpload_Msg.Text = "File uploaded successfully.";
                }
                catch
                {
                    FileUpload_Msg.Text = "Error - Unable to save file. Please try again.";
                }
            }
            else
            {
                FileUpload_Msg.Text = "Error - No file chosen.";
            }

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label5.Text = "Selected Item(s):<br /><br />";
            // Iterate through the Items collection of the CheckBoxList
            // control and display the selected items.
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                { Label5.Text += CheckBoxList1.Items[i].Text + "<br />"; }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}