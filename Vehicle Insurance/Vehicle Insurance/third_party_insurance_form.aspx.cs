using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vehicle_Insurance
{
    public partial class third_party_insurance_form : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Add your source;Initial Catalog=vehicle_insurance;Integrated Security=True ; User ID=sa ; Password=your password");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void third_party_form_Click1(object sender, EventArgs e)
        {
            try
            {

                DateTime TodayDate = new DateTime();
                TodayDate = DateTime.Now;


                string tp_entry = $" insert into policy_details(policy_type,vehicle_type,full_name,age,[address],city,[state],pincode ,mobile_no,email,vehicle_number,vehicle_company,vehicle_model,vehicel_purchasedate,vehicle_color,policy_insured_name,insurance_company,policy_startdate,policy_endate) values(@insurance_name,@vehicle_type,@fullname,@age,@address,@city,@state,@pincode,@mobileno,@email,@vehicle_number,@vehicle_company,@vehicle_model,@vehicle_dop,@vehicle_color,@policy_holder,@insurance_company,@startdate,@endate)";

                cmd = new SqlCommand(tp_entry, con);
                cmd.Parameters.AddWithValue("@insurance_name", "Third Party Insurance");
                cmd.Parameters.AddWithValue("@vehicle_type", tp_vehicle.SelectedValue);
                cmd.Parameters.AddWithValue("@fullname", tp_name.Text);
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(tp_age.Text));
                cmd.Parameters.AddWithValue("@address", tp_address.Text);
                cmd.Parameters.AddWithValue("@city", tp_city.Text);
                cmd.Parameters.AddWithValue("@state", tp_state.Text);
                cmd.Parameters.AddWithValue("@pincode", Convert.ToInt32(tp_pincode.Text));
                cmd.Parameters.AddWithValue("@mobileno", Convert.ToInt32(tp_mobileno.Text));
                cmd.Parameters.AddWithValue("@email", Session["email"]);
                cmd.Parameters.AddWithValue("@vehicle_number", tp_vehicle_number.Text);
                cmd.Parameters.AddWithValue("@vehicle_company", tp_vehicle_company.Text);
                cmd.Parameters.AddWithValue("@vehicle_model", tp_vehicle_model.Text);
                cmd.Parameters.AddWithValue("@vehicle_dop", tp_vehicle_dateofpurchase.Text);
                cmd.Parameters.AddWithValue("@vehicle_color", tp_vehicle_color.Text);
                cmd.Parameters.AddWithValue("@policy_holder", tp_policy_holder_name.Text);
                cmd.Parameters.AddWithValue("@insurance_company", tp_insurance_company.SelectedValue);
                cmd.Parameters.AddWithValue("@startdate", TodayDate);
                cmd.Parameters.AddWithValue("@endate", TodayDate.AddYears(Convert.ToInt32(tp_no_of_years.SelectedValue)).ToString("yyyy-MM-dd"));

                con.Open();
                cmd.ExecuteNonQuery();
                
                con.Close();

                
                Response.Redirect("homepage.aspx");

            }

            catch
            {
                Response.Write("<script>alert('Some error occured please try again')</script>");
                
            }


           
        }
    }
}
