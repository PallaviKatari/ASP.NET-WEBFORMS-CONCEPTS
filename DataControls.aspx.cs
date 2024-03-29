using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SampleASP
{
    public partial class GridView : System.Web.UI.Page
    {
        string conn = "Data Source=G2-100\\MSSQLEXPRESS2016;Initial Catalog=dml;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindGridview();
            }
        }
        private void bindGridview()
        {
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("Select * from emp28", con);
            
            SqlDataReader reader;
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                reader.Close();
            }
            catch (Exception)
            {
            }
            finally
            {
                con.Close();
            }
        }

        
    }
}