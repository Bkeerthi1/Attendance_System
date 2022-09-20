using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Teacher where TUserID='" + TextBox1.Text + "' and TPassword='" + TextBox2.Text + "'", con);
            SqlDataAdapter sda1 = new SqlDataAdapter("Select * from Student where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            DataTable dt1 = new DataTable();
            sda.Fill(dt);
            sda1.Fill(dt1); 

            if (TextBox1.Text == "Admin" & TextBox2.Text == "123")
            {
                Response.Redirect("Admin_Home.aspx");
            }
            else if (dt.Rows.Count == 1)
            {
                Session["TeacherID"] = dt.Rows[0][0].ToString();
                Session["TeacherName"] = dt.Rows[0][1].ToString();
                Session["TUserId"] = TextBox1.Text;
                Response.Redirect("Teacher_Home.Aspx");

            }
            else if (dt1.Rows.Count == 1)
            {
                Session["StudentEmail"] = TextBox1.Text;
                int sid = Convert.ToInt32(dt1.Rows[0][0]);
                Session["SiD"] = sid;
                Response.Redirect("Student_Home.Aspx");

            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Login Failed....";
            }
        }

       
    }
}