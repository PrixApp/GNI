using System;
using System.Data;
using System.Web.UI;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace MyAppGNI.Admin_Pages
{
    public partial class Contacts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ShowGridData();
            }

        }
        public void ShowGridData()
        {
            try
            {
                string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                SqlConnection MyCon = new SqlConnection(ConStr);
                SqlDataAdapter MyADP = new SqlDataAdapter("select * from TB_ContactUs order by Replied, RowID desc", MyCon);
                DataTable dt = new DataTable();
                MyADP.Fill(dt);
                GridViewAdmissions.DataSource = dt;
                GridViewAdmissions.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }
        protected void btnReplied_Click(object sender, EventArgs e)
        {
            string value = ((Button)sender).CommandArgument.ToString();
            try
            {
                string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                SqlConnection MyCon = new SqlConnection(ConStr); MyCon.Open();
                SqlCommand MyCMD = new SqlCommand("update TB_ContactUs set Replied=~(Replied) where RowID=@rid", MyCon);
                MyCMD.Parameters.AddWithValue("@rid", value);
                MyCMD.ExecuteNonQuery();
                MyCon.Close();
                MyCon.Dispose();
                ShowGridData();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}