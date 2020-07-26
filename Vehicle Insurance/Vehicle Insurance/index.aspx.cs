using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



namespace Vehicle_Insurance
{
    

    public partial class HomePage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Add your source;Initial Catalog=vehicle_insurance;Integrated Security=True ; User ID=sa ; Password=your password");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select id from signup_details where email= @email", con);
            cmd.Parameters.AddWithValue("@email", signup_email.Text);
            con.Open();

            var nId = cmd.ExecuteScalar();

            if (nId != null)
            {
                Response.Write("<script>alert('Email Already Exists!!!')</script>");
            }
            else
            {
                string signup_query = $"insert into signup_details ([name],email,[password])  values('{signup_name.Text}','{signup_email.Text}','{signup_password.Text}' )";
                cmd = new SqlCommand(signup_query, con);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Signup Sucessfull')</script>");

            }
            con.Close();



        }



        protected void Login_Click(object sender, EventArgs e)
        {

            
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from signup_details where email =@email and [password]=@password", con);
            cmd.Parameters.AddWithValue("@email", login_email.Text);
            cmd.Parameters.AddWithValue("@password", login_password.Text);

            SqlDataReader sd = cmd.ExecuteReader();

            if (sd.Read())
            {
                Session["username"] = sd.GetValue(1).ToString();
                sd.Close();
            }

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)

            {
                 
                Session["email"] = login_email.Text;
                Response.Redirect("homepage.aspx");

            }

            else
            {   

                Response.Write("<script>alert('Please enter valid Email and Password')</script>");

            }



        }

        
    }
}
