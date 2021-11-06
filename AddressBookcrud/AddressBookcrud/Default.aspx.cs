using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AddressBookcrud
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-852AUF0;Initial Catalog=ProjectDB;Integrated Security=True");
        protected void savebtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into personalInfo_Tab values('"+fullnametb.Text+"','"+int.Parse(phonenumtb.Text)+"','"+emailtb.Text+"','"+citytb.Text+"','"+districttb.Text+"','"+addresstb.Text+ "','" + addresstb.Text+districttb.Text+citytb.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this,this.GetType(),"Script","alert('New Contact Saved');",true);
            LoadRecord();
        }
        void LoadRecord()
        {   
            SqlCommand comm = new SqlCommand("select fullName,pnumber,email,city,district,fullAddress from personalInfo_Tab ", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }

        protected void editbtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update personalInfo_Tab set fullName= '"+fullnametb.Text + "', pnumber='" + int.Parse(phonenumtb.Text) + "',email='" + emailtb.Text + "',city='" + citytb.Text + "',district='" + districttb.Text + "',address='" + addresstb.Text + "',fullAddress='" + addresstb.Text + districttb.Text + citytb.Text + "' where fullName='"+fullnametb.Text +"'",con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Editted');", true);
            LoadRecord();
        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete personalInfo_Tab where fullName='" + fullnametb.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
            LoadRecord();
        }

        protected void searchbtn_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select*from personalInfo_Tab where fullName='" + fullnametb.Text + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void getbtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select*from personalInfo_Tab where fullName='" + fullnametb.Text + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                phonenumtb.Text =r.GetValue(1).ToString();
                emailtb.Text = r.GetValue(2).ToString();
                citytb.Text = r.GetValue(3).ToString();
                districttb.Text = r.GetValue(4).ToString();
                addresstb.Text = r.GetValue(5).ToString();

            }
        }
    }

}