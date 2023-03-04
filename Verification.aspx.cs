using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAppGNI
{
    public partial class Verification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                VerifyDiv.Visible= false;
            }
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            string reg, dob;
            reg = Request.Form["registrationNo"].ToString().ToUpper();
            dob = Request.Form["dob"].ToString();
            try
            {
                string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                SqlConnection MyCon = new SqlConnection(ConStr); MyCon.Open();
                string Query = "select * from TB_Registration where RegistrationNo=@reg and DOB=@dob";
                SqlCommand MyCMD = new SqlCommand(Query, MyCon);
                MyCMD.Parameters.AddWithValue("@reg", reg);
                MyCMD.Parameters.AddWithValue("@dob", dob);
                SqlDataReader MyDR;
                MyDR = MyCMD.ExecuteReader();
                if (MyDR.HasRows)
                {
                    MyDR.Read();
                    ltlName.Text = MyDR["Name"].ToString();
                    ltlFName.Text = MyDR["FName"].ToString();
                    ltlCourseName.Text = MyDR["CourseName"].ToString();
                    ltlStartDate.Text = Convert.ToDateTime(MyDR["StartDate"].ToString()).Date.ToString("dd-MM-yyyy");
                    ltlEndDate.Text = Convert.ToDateTime(MyDR["EndDate"].ToString()).Date.ToString("dd-MM-yyyy");
                    ltlGrade.Text = MyDR["Grade"].ToString();
                    MyCon.Close(); MyCon.Dispose();
                }
                else
                {
                    VerifyDiv.InnerText = "Wrong Credentials";
                    MyCon.Close(); MyCon.Dispose();
                    
                }

            }
            catch (Exception ex)
            {
                VerifyDiv.InnerText = ex.Message;

            }
            VerifyDiv.Visible = true;

        }
    }
}