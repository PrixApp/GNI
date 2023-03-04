using System;

namespace MyAppGNI.Admin_Pages
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("../Index.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
                Response.Redirect("../Index.aspx");
            }
        }
    }
}