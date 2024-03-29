using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SampleASP
{
    public partial class Addtocart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["Id"]);
                DataTable dt = GetData(id);
                gvDetails.DataSource = dt;
                gvDetails.DataBind();
            }
        }
        protected void Add(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            DataTable dt = GetData(id);

            if (Session["Data"] != null)
            {
                DataTable dx = (DataTable)Session["Data"];
                dx.Merge(dt);
                Session["Data"] = dx;
                gvCartItems.DataSource = dx;
                gvCartItems.DataBind();
            }
            else
            {
                Session["Data"] = dt;
                gvCartItems.DataSource = dt;
                gvCartItems.DataBind();
            }
        }

        protected void Continue(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        private DataTable GetData(int id)
        {
            string conString = ConfigurationManager.ConnectionStrings["dmlConnectionString"].ConnectionString;
            string query = "SELECT * FROM emp28 WHERE empid = @empid";
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@empid", id);
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }
}
    
