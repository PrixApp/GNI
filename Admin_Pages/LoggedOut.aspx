<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoggedOut.aspx.cs" Inherits="MyAppGNI.Admin_Pages.LoggedOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <script>
        document.addEventListener('readystatechange', event => {

            // When window loaded ( external resources are loaded too- `css`,`src`, etc...) 
            if (event.target.readyState === "complete") {
                window.location.replace("http://www.gnichohla.com");
            }
        });
    </script>
</body>
</html>
