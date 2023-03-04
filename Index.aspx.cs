using System;
using System.Configuration;
using System.Data.SqlClient;


namespace MyAppGNI
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                string name, emailID, subject, message;
                name = Request.Form["name"].ToString();
                emailID = Request.Form["email"].ToString();
                subject = Request.Form["subject"].ToString();
                message = Request.Form["message"].ToString();
                
                string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                SqlConnection MyCon = new SqlConnection(ConStr); MyCon.Open();
                string Query = @"insert into TB_ContactUs (Name,Email,Subject,Message,Replied) 
                                values(@name,@email,@subject,@message,0)";
                SqlCommand MyCMD = new SqlCommand(Query, MyCon);
                MyCMD.Parameters.AddWithValue("@name", name.ToUpper());
                MyCMD.Parameters.AddWithValue("@email", emailID.ToUpper());
                MyCMD.Parameters.AddWithValue("@subject", subject.ToUpper());
                MyCMD.Parameters.AddWithValue("@message", message.ToUpper());

                MyCMD.ExecuteNonQuery();
                MyCon.Close(); MyCon.Dispose();
                
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('We have received your query. We will get back to you soon.')", true);
            }
            catch (Exception ex)
            {
                msgStatus.InnerText = ex.ToString();
            }

        }
    }
}