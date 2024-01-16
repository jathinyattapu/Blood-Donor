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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {                
                Getstates();
                Getblood(); 
                if (Convert.ToInt32(Session["b"]) == 1)
                {
                    Cdetails();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Register")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
                con.Open();
                string q = "proc_insertdonor";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@b", TextBox1.Text);
                cmd.Parameters.AddWithValue("@c", TextBox2.Text);
                string s1 = "", s2 = "";
                if (RadioButton1.Checked == true) { s1 = RadioButton1.Text; } else { s1 = RadioButton2.Text; }
                cmd.Parameters.AddWithValue("@d", s1);
                if (CheckBox1.Checked == true) { s2 = CheckBox1.Text; }
                else
                if (CheckBox2.Checked == true) { s2 = s2 + " " + CheckBox2.Text; }
                else
                if (CheckBox3.Checked == true) { s2 = s2 + " " + CheckBox3.Text; }
                cmd.Parameters.AddWithValue("@e", s2);
                cmd.Parameters.AddWithValue("@f", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@g", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@h", DropDownList3.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@i", TextBox4.Text);
                cmd.Parameters.AddWithValue("@j", TextBox5.Text);
                int p = cmd.ExecuteNonQuery();
                con.Close();
                Clear();
                if (p != 0)
                {
                    Response.Redirect("Home.aspx");
                }
                else 
                { Response.Write("Invalid Register"); }
            } 
            else
            if (Button1.Text == "Update")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
                con.Open();
                string q = "proc_detailsedit";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@a", Session["a1"].ToString());
                cmd.Parameters.AddWithValue("@b", TextBox1.Text);
                cmd.Parameters.AddWithValue("@c", TextBox2.Text);
                string s1 = "", s2 = "";
                if (RadioButton1.Checked == true) { s1 = RadioButton1.Text; } else { s1 = RadioButton2.Text; }
                cmd.Parameters.AddWithValue("@d", s1);
                if (CheckBox1.Checked == true) { s2 = CheckBox1.Text; }
                else
                if (CheckBox2.Checked == true) { s2 = s2 + " " + CheckBox2.Text; }
                else
                if (CheckBox3.Checked == true) { s2 = s2 + " " + CheckBox3.Text; }
                cmd.Parameters.AddWithValue("@e", s2);
                cmd.Parameters.AddWithValue("@f", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@g", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@h", DropDownList3.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@i", TextBox4.Text);
                cmd.Parameters.AddWithValue("@j", TextBox5.Text);
                int p = cmd.ExecuteNonQuery();
                con.Close();
                Clear();
                if (p != 0)
                {
                    Response.Redirect("Details.aspx");
                }
                else
                { Response.Write("Invalid Update"); }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
                Clear();
        }

        public void Clear()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text=" ";
            RadioButton1.Checked = RadioButton2.Checked = false;
            CheckBox1.Checked = CheckBox2.Checked = CheckBox3.Checked = false;           
        }
        void Getstates()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            string q = "proc_dispstates";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "states");
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "sname";
            DropDownList1.DataValueField = "sid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0,"--Select--");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Getcities();
        }

        void Getcities()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            string q = "proc_dispcities";
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.CommandType = CommandType.StoredProcedure;
            string s1 = DropDownList1.SelectedItem.Value;
            cmd.Parameters.AddWithValue("@a", s1);
            DataSet ds = new DataSet();
            da.Fill(ds, "cities");
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "cname";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--Select--");
        }

        void Getblood()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            string q = "proc_bgroupdisp";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "blood");
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "bgname";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "--Select--");
        }

        void Cdetails()
        {
            Button1.Text = "Update";
            TextBox1.Text = Session["a2"].ToString();
            TextBox2.Text = TextBox3.Text = Session["a3"].ToString();   
            if (RadioButton1.Text == Session["a4"].ToString())
            { RadioButton1.Checked = true; }
            else { RadioButton2.Checked = true; }
            string[] s1 = (Session["a5"].ToString()).Split();
            foreach (string s in s1)
            {
                if (CheckBox1.Text == s) { CheckBox1.Checked = true; }
                else
                if (CheckBox2.Text == s) { CheckBox2.Checked = true; }
                else
                if (CheckBox3.Text == s) { CheckBox3.Checked = true; }
            }          
            DropDownList1.SelectedItem.Text = Session["a6"].ToString();
            Getcities();
            DropDownList2.SelectedItem.Text = Session["a7"].ToString();            
            DropDownList3.SelectedItem.Text = Session["a8"].ToString();
            TextBox4.Text = Session["a9"].ToString();
            TextBox5.Text = Session["a10"].ToString();            
        }
    }
}