using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormWebApp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != string.Empty && TextBox2.Text != string.Empty && TextBox3.Text != string.Empty)
            {
                if(TextBox2.Text == TextBox3.Text)
                {
                    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=P:\\FormWebApp\\App_data\\AspLoginFormApp.mdf;Integrated Security=True");
                    con.Open();
                    string regisQuery = "INSERT INTO login VALUES(@username, @password)";
                    SqlCommand cmd = new SqlCommand(regisQuery, con);
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@password", TextBox2.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Register success');</script>");
                }
                else
                    Response.Write("<script>alert('Password not same');</script>");
            }
            else
                Response.Write("<script>alert('Some part missing');</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }
    }
}