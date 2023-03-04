using System;
using System.Configuration;
using System.Data.SqlClient;

namespace MyAppGNI
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string userID, password;
            userID = Request.Form["userid"].ToString();
            password = Request.Form["Password"].ToString();
            try
            {
                string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                SqlConnection MyCon = new SqlConnection(ConStr); MyCon.Open();
                string Query = "select * from TB_UserMaster where UserId=@uid and Password=@pwd";
                SqlCommand MyCMD = new SqlCommand(Query, MyCon);
                MyCMD.Parameters.AddWithValue("@uid", userID);
                MyCMD.Parameters.AddWithValue("@pwd", password);
                SqlDataReader MyDR;
                MyDR= MyCMD.ExecuteReader();
                if (!MyDR.HasRows)
                {
                    ErrMsg.Text = "Wrong UserID or Password";
                    MyCon.Close(); MyCon.Dispose();
                }
                else
                {
                    Session["user"] = userID;
                    MyCon.Close(); MyCon.Dispose();
                    Response.Redirect("/Admin_Pages/AdminHome.aspx");
                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
                
            }
        }
    }
}