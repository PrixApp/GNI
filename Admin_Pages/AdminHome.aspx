<%@ Page Title="GNI - Admin Home" Language="C#" MasterPageFile="~/Admin_Pages/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="MyAppGNI.Admin_Pages.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="text-center display-4">Admin Area</div>
    <script>
        document.getElementById("Home").className = "nav-link active";
    </script>
</asp:Content>
