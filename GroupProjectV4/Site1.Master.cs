using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace GroupProjectV4
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check for Authentication Cookie
            FormsAuthenticationTicket ticket;
            if (Request.Cookies[FormsAuthentication.FormsCookieName] != null)
            {
                ticket = FormsAuthentication.Decrypt(Request.Cookies[FormsAuthentication.FormsCookieName].Value);
                UserNameTxtBox.Text = ticket.Name;

                // get SQL Connection String
                string constr = ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString;

                // Set up SQL Query
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("GetRole");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", ticket.Name);
                cmd.Connection = con;

                con.Open();
                string role = Convert.ToString(cmd.ExecuteScalar());
                con.Close();

                RoleTxtBox.Text = role;
            }
            else UserNameTxtBox.Text = null;


        }
    }
}