<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="MyAppGNI.Admin_Pages.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row display-6 mt-5 justify-content-center">
        Change Password
    </div>
    <div class="row w-lg-50 w-md-75 w-sm-100 mt-2 justify-content-center">
        <div class="col-lg-4 col-md-6 col-sm-12">
            <label class="form-label" for="oldpassword">Old Password</label>
            <input type="password" id="oldpassword" name="oldpassword" minlength="6" class="form-control form-control-md" required />
        </div>
    </div>
    <div class="row w-lg-50 w-md-75 w-sm-100 mt-2 justify-content-center">
        <div class="col-lg-4 col-md-6 col-sm-12">
            <label class="form-label" for="oldpassword">New Password</label>
            <input type="password" id="newpassword" name="newpassword" minlength="6" class="form-control form-control-md" required />
        </div>
    </div>
    <div class="row w-lg-50 w-md-75 w-sm-100 mt-2 justify-content-center">
        <div class="col-lg-4 col-md-6 col-sm-12">
            <label class="form-label" for="confirmpassword">Confirm Password</label>
            <input type="password" id="confirmpassword" name="confirmpassword" minlength="6" class="form-control form-control-md" required />
        </div>
    </div>
    <div class="row w-lg-50 w-md-75 w-sm-100 mt-2 justify-content-center">
        <div class="col-lg-4 col-md-6 col-sm-12">
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success form-control-md" Text="Submit"
                OnClientClick="comparePass(event)" OnClick="btnSubmit_Click" />
        </div>

    </div>
    <script>
        function comparePass(e) {
            const conPass = document.getElementById("confirmpassword").value;
            const newPass = document.getElementById("newpassword").value;
            if (conPass != newPass) {
                alert("Password and Confirm password not matched");
                e.preventDefault();
                return false;
            } else {
                return true;
            }
        }
        document.getElementById("ChangePassword").className = "nav-link active";
        
        
    </script>
</asp:Content>
