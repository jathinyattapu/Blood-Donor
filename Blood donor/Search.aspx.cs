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
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                Getstates();
                getblood();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            string q = "proc_search";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@b", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList3.SelectedItem.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Donor");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        void Getstates()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            string q = "proc_dispstates";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "states");
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "sname";
            DropDownList2.DataValueField = "sid";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--Select--");
        }
        void getblood()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            string q = "proc_bgroupdisp";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "blood");
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "bgname";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            string q = "proc_dispcities";
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.CommandType = CommandType.StoredProcedure;
            string s1 = DropDownList2.SelectedItem.Value;
            cmd.Parameters.AddWithValue("@a", s1);
            DataSet ds = new DataSet();
            da.Fill(ds, "cities");
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "cname";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "--Select--");
        }
    }
}