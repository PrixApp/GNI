<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MyAppGNI.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        figure img{
            border:1px solid black;
            border-radius:25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row justify-content-around">
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/1.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/1.jpeg"
                        class="img-fluid">
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/2.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/2.jpeg"
                        class="img-fluid" />
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/3.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/3.jpeg"
                        class="img-fluid">
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/4.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/4.jpeg"
                        class="img-fluid" />
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/5.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/5.jpeg"
                        class="img-fluid">
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/6.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/6.jpeg"
                        class="img-fluid" />
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/7.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/7.jpeg"
                        class="img-fluid">
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/8.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/8.jpeg"
                        class="img-fluid" />
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/9.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/9.jpeg"
                        class="img-fluid">
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/10.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/10.jpeg"
                        class="img-fluid" />
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/11.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/11.jpeg"
                        class="img-fluid">
                </a>
            </figure>
        </div>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 m-2">
            <figure>
                <a href="Images/Gallery/12.jpeg" data-size="1600x1067">
                    <img alt="picture" src="Images/Gallery/12.jpeg"
                        class="img-fluid" />
                </a>
            </figure>
        </div>
        
    </div>

    <script>
        document.getElementById("aGallery").className = "nav-link active";
    </script>
</asp:Content>
