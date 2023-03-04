using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAppGNI
{
    public partial class OnlineAdmission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string name, fname, mobile, email, course;
                name = Request.Form["name"].ToString();
                fname = Request.Form["fname"].ToString();
                mobile = Request.Form["mobile"].ToString();
                email = Request.Form["email"].ToString();
                course = Request.Form["courseName"].ToString();

                string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                SqlConnection MyCon = new SqlConnection(ConStr); MyCon.Open();
                string Query = @"insert into TB_Admission (Name,FName,Mobile,Email,Course,Replied) 
                                values(@name,@fname,@mobile,@email,@course,0)";
                SqlCommand MyCMD = new SqlCommand(Query, MyCon);
                MyCMD.Parameters.AddWithValue("@name", name.ToUpper());
                MyCMD.Parameters.AddWithValue("@fname", fname.ToUpper());
                MyCMD.Parameters.AddWithValue("@mobile", mobile.ToUpper());
                MyCMD.Parameters.AddWithValue("@email", email.ToUpper());
                MyCMD.Parameters.AddWithValue("@course", course.ToUpper());


                MyCMD.ExecuteNonQuery();
                MyCon.Close(); MyCon.Dispose();

                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your enrollment query is received. We will get back to you soon.')", true);


            }
            catch (Exception ex)
            {
                msgStatus.InnerText = ex.ToString();
            }
        }
    }
}