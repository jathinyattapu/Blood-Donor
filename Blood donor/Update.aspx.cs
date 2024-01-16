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
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false) { Getdata(); }
        }

        void Getdata()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            string q = "proc_userdetails";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", Session["userdetail"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "donor");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Getdata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Getdata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow r = GridView1.Rows[e.RowIndex];
            TextBox t1 = (TextBox)r.FindControl("Textbox1");
            TextBox t2 = (TextBox)r.FindControl("Textbox2");
            Session["userdetail"] = t2.Text;
            TextBox t3 = (TextBox)r.FindControl("Textbox3");
            TextBox t4 = (TextBox)r.FindControl("Textbox4");
            TextBox t5 = (TextBox)r.FindControl("Textbox5");
            TextBox t6 = (TextBox)r.FindControl("Textbox6");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            con.Open();
            string q = "proc_userdetailsup";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", t1.Text);
            cmd.Parameters.AddWithValue("@b", t2.Text);
            cmd.Parameters.AddWithValue("@c", t3.Text);
            cmd.Parameters.AddWithValue("@d", t4.Text);
            cmd.Parameters.AddWithValue("@e", t5.Text);
            cmd.Parameters.AddWithValue("@f", t6.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;            
            Getdata();
        }
    }
}