using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Blood_donor
{
    public partial class Alogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            con.Open();
            string q = "proc_adminlogin";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            object p = cmd.ExecuteScalar();
            if ((int)p != 0)
            {
                Session["admin"] = "Admin";
                Response.Redirect("AWelcome.aspx");
            }
            else { Label1.Text="Invalid Register"; Label1.Visible = true; }
            con.Close();            
        }
    }
}