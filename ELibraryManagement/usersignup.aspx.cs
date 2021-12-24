using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace ELibraryManagement
{

    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //checking if user exists
                SqlCommand checkid = new SqlCommand("SELECT Id FROM Table_1 WHERE Id='" + eId.Text + "'  ",con);
                SqlDataAdapter sd = new SqlDataAdapter(checkid);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                
                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('User already exists with That ID.');</script>"); //if user exists, no signupgithub

                }
                else
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO Table_1(name, dob, contact_no, email, state, city, pincode, full_address, Id, password) values(@name, @dob, @contact_no, @email, @state, @city, @pincode, @full_address, @Id, @password)", con);
                    cmd.Parameters.AddWithValue("@name", eStudentName.Text);
                    cmd.Parameters.AddWithValue("@dob", eDOB.Text);
                    cmd.Parameters.AddWithValue("@contact_no", eContact.Text);
                    cmd.Parameters.AddWithValue("@email", eEmail.Text);
                    cmd.Parameters.AddWithValue("@state", eState.Text);
                    cmd.Parameters.AddWithValue("@city", eCity.Text);
                    cmd.Parameters.AddWithValue("@pincode", ePin.Text);
                    cmd.Parameters.AddWithValue("@full_address", eAddress.Text);
                    cmd.Parameters.AddWithValue("@Id", eId.Text);
                    cmd.Parameters.AddWithValue("@password", ePassword.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    clearform();

                   
                    Response.Redirect("/WebForm1.aspx");
                    Response.Write("<script>alert('Signup Done')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        void clearform() //creating a func to clear textboxes
        {
            eStudentName.Text = "";
            eDOB.Text = "";
            eContact.Text = "";
            eEmail.Text = "";
            eState.Text = "";
            eCity.Text = "";
            ePin.Text = "";
            eAddress.Text = "";
            eId.Text = "";
            ePassword.Text = "";
        }
    }
}
