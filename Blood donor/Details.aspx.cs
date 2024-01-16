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
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false) { Getdata(); }
        }

        void Getdata()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            string q = "proc_details";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "donor");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
                if (e.CommandName == "CmdEdit")
                {
                    int i = Convert.ToInt32(e.CommandArgument);
                    GridViewRow r = GridView1.Rows[i];
                    Label l1 = (Label)r.FindControl("Label1");
                    Label l2 = (Label)r.FindControl("Label2");
                    Label l3 = (Label)r.FindControl("Label3");
                    Label l4 = (Label)r.FindControl("Label4");
                    Label l5 = (Label)r.FindControl("Label5");
                    Label l6 = (Label)r.FindControl("Label6");
                    Label l7 = (Label)r.FindControl("Label7");
                    Label l8 = (Label)r.FindControl("Label8");
                    Label l9 = (Label)r.FindControl("Label9");
                    Label l10 = (Label)r.FindControl("Label10");
                    Session["a1"] = l1.Text;
                    Session["a2"] = l2.Text;
                    Session["a3"] = l3.Text;
                    Session["a4"] = l4.Text;
                    Session["a5"] = l5.Text;
                    Session["a6"] = l6.Text;
                    Session["a7"] = l7.Text;
                    Session["a8"] = l8.Text;
                    Session["a9"] = l9.Text;
                    Session["a10"] = l10.Text;
                    Session["b"] = 1;
                Response.Redirect("Register.aspx");
                }
                else if (e.CommandName == "CmdDelete")
                {
                    int i = Convert.ToInt32(e.CommandArgument);
                    GridViewRow r = GridView1.Rows[i];
                    Label l1 = (Label)r.FindControl("Label1");
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
                    con.Open();
                    string q = "proc_detailsdel";
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@a", l1.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Getdata();
                }            
        }
    }
}