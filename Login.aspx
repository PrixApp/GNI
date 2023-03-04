<%@ Page Title="GNI - Login" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyAppGNI.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Josefin Sans', serif;
            --bootstrap-gutter-x: 0;
        }

        .row {
            margin: 0;
            padding: 0;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="text-danger text-center">
        <asp:Label id="ErrMsg" runat="server"></asp:Label>
    </div>
    <section class="vh-75" style="background-color: white;">
        <div class="container py-3 h-75">
            <div class="row d-flex justify-content-center align-items-center h-75">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow-2-strong" style="border-radius: 1rem;">
                        <div class="card-body p-2">
                            <h3 class="mb-4">Sign in</h3>
                            <div class="form-outline mb-4">
                                <label class="form-label" for="userid">User ID</label>
                                <input type="text" id="userid" name="userid" class="form-control form-control-lg" required />
                            </div>
                            <div class="form-outline mb-4">
                                <label class="form-label" for="typePasswordX-2">Password</label>
                                <input type="password" id="typePasswordX-2" name="password" class="form-control form-control-lg" required />
                            </div>
                            
                            <asp:Button ID="btnSubmit"  runat="server" class="btn btn-primary btn-lg btn-block" Text="LOGIN" OnClick="btnSubmit_Click"/>
                            <hr class="my-4">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <script>
        document.getElementById("aLogin").className = "nav-link active";
    </script>
</asp:Content>
