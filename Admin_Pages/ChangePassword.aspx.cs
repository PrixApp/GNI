using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAppGNI.Admin_Pages
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string oldpassword, newpassword, userid;
                oldpassword = Request.Form["oldpassword"].ToString();
                newpassword = Request.Form["newpassword"].ToString();
                userid = Session["user"].ToString();
                
                string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                SqlConnection MyCon = new SqlConnection(ConStr); MyCon.Open();
                string Query = @"update TB_UserMaster set Password=@npass where UserID=@uid and Password=@opass ";
                SqlCommand MyCMD = new SqlCommand(Query, MyCon);
                MyCMD.Parameters.AddWithValue("@opass", oldpassword.ToUpper());
                MyCMD.Parameters.AddWithValue("@npass", newpassword.ToUpper());
                MyCMD.Parameters.AddWithValue("@uid", userid.ToUpper());
                
                int reff=MyCMD.ExecuteNonQuery();
                MyCon.Close(); MyCon.Dispose();

                if (reff == 0)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your old password is wrong.')", true);
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Your password updated.')", true);
                }
                


            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}