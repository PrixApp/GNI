using System;
using System.Data;
using System.Web.UI;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace MyAppGNI.Admin_Pages
{
    public partial class EditRecord : System.Web.UI.Page
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
                SqlDataAdapter MyADP = new SqlDataAdapter("select * from TB_Registration order by RegistrationNo desc", MyCon);
                DataTable dt = new DataTable();
                MyADP.Fill(dt);
                GridViewRecords.DataSource = dt;
                GridViewRecords.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string value = ((Button)sender).CommandArgument.ToString();
            Response.Redirect("AddRecord.aspx?reg="+value);
        }

        protected void btnEnable_Click(object sender, EventArgs e)
        {
            string value = ((Button)sender).CommandArgument.ToString();
            try
            {
                string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                SqlConnection MyCon = new SqlConnection(ConStr); MyCon.Open();
                SqlCommand MyCMD = new SqlCommand("update TB_Registration set Enabled=~(Enabled) where RegistrationNo=@reg", MyCon);
                MyCMD.Parameters.AddWithValue("@reg", value);
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