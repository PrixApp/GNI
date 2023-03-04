<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="MyAppGNI.Verification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .col {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="row d-flex justify-content-center align-items-center h-75 mt-4">
        
        <div class="d-flex justify-content-center">
            <div id="VerifyDiv" class="col-md-6 col-sm-12" runat="server">
                <div class="row">
                <div class="col-sm-12">
                    Name :
                    <asp:Literal ID="ltlName" runat="server" />
                </div>
                <div class="col-sm-12">
                    Father's Name :
                    <asp:Literal ID="ltlFName" runat="server" />
                </div>
                <div class="col-sm-12">
                    Start Date :
                    <asp:Literal ID="ltlStartDate" runat="server" />
                </div>
                <div class="col-sm-12">
                    End Date :
                    <asp:Literal ID="ltlEndDate" runat="server" />
                </div>
                <div class="col-sm-12">
                    Course Name :
                <asp:Literal ID="ltlCourseName" runat="server" />
                </div>
                <div class="col-sm-12">
                    Grade :
                <asp:Literal ID="ltlGrade" runat="server" />
                </div>
            </div>    
            </div>
        </div>
        <div class="col-12 col-md-8 col-lg-6 col-xl-5 mt-2">
            <div class="card shadow-2-strong" style="border-radius: 1rem;">
                <div class="card-body p-2">
                    <h3 class="mb-4">Verfication</h3>
                    <div class="form-outline mb-4">
                        <label class="form-label" for="registrationNo">Registration No</label>
                        <input type="text" id="registrationNo" name="registrationNo" class="form-control form-control-md" required />
                    </div>
                    <div class="form-outline mb-4">
                        <label class="form-label" for="dob">D.O.B</label>
                        <input type="date" id="dob" name="dob" class="form-control form-control-md" required />
                    </div>
                    <asp:Button ID="btnVerify" runat="server" class="btn btn-primary btn-md btn-block" Text="Verify" OnClick="btnVerify_Click" />
                    <hr class="my-4">
                </div>
            </div>
        </div>
    </div>




</asp:Content>
