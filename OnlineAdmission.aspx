<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="OnlineAdmission.aspx.cs" Inherits="MyAppGNI.OnlineAdmission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row text-center">
        <div class="col-lg-12 display-6">Online Admission Application Form</div>
    </div>
    <div id="msgStatus" runat="server" class="text-center"></div>
    <div class="w-75 row ms-auto me-auto">        
        <div class="row mt-2">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <label for="name" class="">Name</label>
                <input type="text" id="name" name="name" maxlength="50" class="form-control" required />
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <label for="fname" class="">Father's name</label>
                <input type="text" id="fname" name="fname" maxlength="50" class="form-control" required />
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <label for="mobile" class="">Mobile No</label>
                <input type="number" id="mobile" name="mobile" class="form-control" max="9999999999" required />
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <label for="email" class="">Email ID</label>
                <input type="email" id="email" name="email" maxlength="50" class="form-control" required />
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-sm-12">
                <label for="courseName" class="">Course of Interest</label>
                <input type="text" id="courseName" name="courseName" maxlength="500" class="form-control" required />
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-sm-12">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </div>
</asp:Content>
