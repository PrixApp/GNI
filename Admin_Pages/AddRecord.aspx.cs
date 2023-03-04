using System;
using System.Configuration;
using System.Data.SqlClient;

namespace MyAppGNI.Admin_Pages
{
    public partial class AddRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["reg"] != null)
                {
                    btnSave.Visible = false;
                    try
                    {
                        string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                        SqlConnection MyCon = new SqlConnection(ConStr); MyCon.Open();
                        string Query = "select * from TB_Registration where RegistrationNo=@reg";
                        SqlCommand MyCMD = new SqlCommand(Query, MyCon);
                        MyCMD.Parameters.AddWithValue("@reg", Request.QueryString["reg"].ToString());
                        SqlDataReader MyDR;
                        MyDR = MyCMD.ExecuteReader();
                        if (!MyDR.HasRows)
                        {
                            ErrMsg.Text = "There is some error. Please try later";
                            btnUpdate.Visible = false;
                        }
                        else
                        {
                            MyDR.Read();
                            recID.Value = MyDR["RowID"].ToString();
                            registrationNo.Value = MyDR["RegistrationNo"].ToString();
                            name.Value = MyDR["Name"].ToString();
                            fname.Value = MyDR["FName"].ToString();
                            dob.Value = Convert.ToDateTime(MyDR["DOB"].ToString()).Date.ToString("yyyy-MM-dd");
                            cname.Value = MyDR["CourseName"].ToString();
                            sdate.Value = Convert.ToDateTime(MyDR["StartDate"].ToString()).Date.ToString("yyyy-MM-dd");
                            edate.Value = Convert.ToDateTime(MyDR["EndDate"].ToString()).Date.ToString("yyyy-MM-dd");
                            grade.Value = MyDR["Grade"].ToString();
                        }

                    }
                    catch (Exception ex)
                    {
                        ErrMsg.Text = ex.Message;

                    }
                }
                else
                {
                    btnUpdate.Visible = false;
                    btnSave.Visible = true;
                }
            }
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
            try
            {
                string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                SqlConnection MyCon = new SqlConnection(ConStr); MyCon.Open();
                string Query = @"if not exists (select top 1 * from TB_Registration where RegistrationNo=@reg)
                                    insert into TB_Registration (RegistrationNo,Name,FName,DOB,CourseName,StartDate,EndDate,Grade,Enabled) 
                                    output inserted.RowID values(@reg,@name,@fname,@dob,@cname,@sdate,@edate,@grade,1)                                     
                                    else select 0";
                SqlCommand MyCMD = new SqlCommand(Query, MyCon);
                MyCMD.Parameters.AddWithValue("@reg", registrationNo.Value.ToUpper());
                MyCMD.Parameters.AddWithValue("@name", name.Value.ToUpper());
                MyCMD.Parameters.AddWithValue("@fname", fname.Value.ToUpper());
                MyCMD.Parameters.AddWithValue("@dob", dob.Value);
                MyCMD.Parameters.AddWithValue("@cname", cname.Value.ToUpper());
                MyCMD.Parameters.AddWithValue("@sdate", sdate.Value);
                MyCMD.Parameters.AddWithValue("@edate", edate.Value);
                MyCMD.Parameters.AddWithValue("@grade", grade.Value.ToUpper());
                string rec_No = MyCMD.ExecuteScalar().ToString();
                MyCon.Close(); MyCon.Dispose();
                if (rec_No=="0")
                {
                    ErrMsg.Text = "Duplicate Registration Number";
                }
                else
                {
                    ErrMsg.Text = "Registration Completed Successfully";
                    registrationNo.Value = "";
                    name.Value = "";
                    fname.Value = "";
                    dob.Value = "";
                    cname.Value = "";
                    sdate.Value = "";
                    edate.Value = "";
                    grade.Value = "";
                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;

            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string ConStr = ConfigurationManager.ConnectionStrings["CS_GNI"].ConnectionString;
                SqlConnection MyCon = new SqlConnection(ConStr); MyCon.Open();
                string Query = @"if not exists (select top 1 * from TB_Registration where RegistrationNo=@reg and RowID!=@recID)
                                    update TB_Registration set RegistrationNo=@reg,Name=@name,FName=@fname,DOB=@dob,CourseName=@cname,
                                        StartDate=@sdate,EndDate=@edate,Grade=@grade output 1 where RowID=@recID                                     
                                    else select 0";
                SqlCommand MyCMD = new SqlCommand(Query, MyCon);
                MyCMD.Parameters.AddWithValue("@recID", recID.Value);
                MyCMD.Parameters.AddWithValue("@reg", registrationNo.Value.ToUpper());
                MyCMD.Parameters.AddWithValue("@name", name.Value.ToUpper());
                MyCMD.Parameters.AddWithValue("@fname", fname.Value.ToUpper());
                MyCMD.Parameters.AddWithValue("@dob", dob.Value);
                MyCMD.Parameters.AddWithValue("@cname", cname.Value.ToUpper());
                MyCMD.Parameters.AddWithValue("@sdate", sdate.Value);
                MyCMD.Parameters.AddWithValue("@edate", edate.Value);
                MyCMD.Parameters.AddWithValue("@grade", grade.Value.ToUpper());
                string rec_No = MyCMD.ExecuteScalar().ToString();
                MyCon.Close(); MyCon.Dispose();
                if (rec_No == "0")
                {
                    ErrMsg.Text = "Duplicate Registration Number";
                }
                else
                {
                    ErrMsg.Text = "Registration updated Successfully";
                    //Response.Redirect("EditRecord.aspx");
                }

            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;

            }
        }
    }
}