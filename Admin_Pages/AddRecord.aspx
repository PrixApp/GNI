<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin.Master" AutoEventWireup="true" CodeBehind="AddRecord.aspx.cs" Inherits="MyAppGNI.Admin_Pages.AddRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        input[type=text],input[type=date]{
            font-size:small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:HiddenField ID="recID" runat="server" />
    <div class="text-danger text-center">
        <asp:Label ID="ErrMsg" runat="server"></asp:Label>
    </div>
    <div class="row d-flex justify-content-center align-items-center h-75 m-2">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
            <div class="card shadow-2-strong" style="border-radius: 1rem;">
                <div class="card-body p-2">
                    <h3 class="mb-3">Add Student</h3>
                    <div class="form-outline mb-1">
                        <label class="form-label" for="name">Registation Number</label>
                        <input type="text" id="registrationNo" name="registrationNo" runat="server" class="form-control form-control-lg" required />
                    </div>
                    <div class="form-outline mb-1">
                        <label class="form-label" for="name">Name</label>
                        <input type="text" id="name" name="name" runat="server" class="form-control form-control-lg" required />
                    </div>
                    <div class="form-outline mb-1">
                        <label class="form-label" for="fname">Father's Name</label>
                        <input type="text" id="fname" name="fname" runat="server" class="form-control form-control-lg" required />
                    </div>
                    <div class="form-outline mb-1">
                        <label class="form-label" for="dob">D.O.B</label>
                        <input type="date" id="dob" name="dob" runat="server" class="form-control form-control-lg" required />
                    </div>
                    <div class="form-outline mb-1">
                        <label class="form-label" for="cname">Course Name</label>
                        <input type="text" id="cname" name="cname" runat="server" class="form-control form-control-lg" required />
                    </div>
                    <div class="form-outline mb-1">
                        <label class="form-label" for="sdate">Start Date</label>
                        <input type="date" id="sdate" name="sdate" runat="server" class="form-control form-control-lg" required />
                    </div>
                    <div class="form-outline mb-1">
                        <label class="form-label" for="edate">End Date</label>
                        <input type="date" id="edate" name="edate" runat="server" class="form-control form-control-lg" required />
                    </div>
                    <div class="form-outline mb-1">
                        <label class="form-label" for="grade">Grade</label>
                        <input type="text" id="grade" name="grade" runat="server" class="form-control form-control-lg" required />
                    </div>
                    <asp:Button ID="btnSave" runat="server" class="btn btn-success btn-md btn-block mt-2" Text="SAVE" OnClick="btnSave_Click" />
                    <asp:Button ID="btnUpdate" runat="server" class="btn btn-primary btn-md btn-block" Text="UPDATE" OnClick="btnUpdate_Click" />
                    <hr class="my-4">
                </div>
            </div>
        </div>
    </div>
    <script>
        document.getElementById("AddRecord").className = "nav-link active";
    </script>
</asp:Content>
