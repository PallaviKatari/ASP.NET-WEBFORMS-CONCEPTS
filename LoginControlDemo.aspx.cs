using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleASP
{
    public partial class LoginControlDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (YourValidationFunction(Login1.UserName, Login1.Password))
            {
                // e.Authenticated = true;  
                Login1.Visible = false;
                Label1.Text = "Successfully Logged In";
            }
            else
            {
                e.Authenticated = false;
            }
        }
       
        private bool YourValidationFunction(string Username, string Password)
        {
            bool boolReturnValue = false;
            string strConnection = "Server=CGVAK-LT156\\SQLEXPRESS2019;Database=WebForms;Trusted_Connection=True;TrustServerCertificate=True;";
            SqlConnection sqlConnection = new SqlConnection(strConnection);
            String SQLQuery = "SELECT Username, Password FROM LoginSession";
            SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);
            SqlDataReader Dr;
            sqlConnection.Open();
            Dr = command.ExecuteReader();
            while (Dr.Read())
            {
                if ((Username == Dr["Username"].ToString()) & (Password == Dr["Password"].ToString()))
                {
                    boolReturnValue = true;
                }
                Dr.Close();
                return boolReturnValue;
            }
            return boolReturnValue;
        }
    }
}