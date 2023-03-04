<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Pages/Admin.Master" AutoEventWireup="true" CodeBehind="Admissions.aspx.cs" Inherits="MyAppGNI.Admin_Pages.Admissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            color: black;
            font-size:1vw;
        }
        .btn{
            min-width:120px;
            font-size:1vw;
        }
        td{
            border:1px solid black;
            padding-left:2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="text-center m-5">
        <asp:GridView ID="GridViewAdmissions" runat="server"  EmptyDataText="No records to display"
        AutoGenerateColumns="False" Width="95%" CellPadding="4" ForeColor="#333333"  >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="S.No." HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="false">
                <ItemTemplate>
                    <asp:Literal ID="rowId" Text='<%# Container.DataItemIndex + 1 %>' runat="server"></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="false">
                <ItemTemplate>
                    <asp:Literal ID="ltlName" runat="server" Text='<%#Eval("Name")%>' />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Father's Name" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="false">
                <ItemTemplate>
                    <asp:Literal ID="ltlFName" runat="server" Text='<%#Eval("FName")%>' />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="false">
                <ItemTemplate>
                    <asp:Literal ID="ltlMobile" runat="server" Text='<%#Eval("Mobile")%>' />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="false">
                <ItemTemplate>
                    <asp:Literal ID="ltlEmail" runat="server" Text='<%#Eval("Email")%>' />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course Name" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="false">
                <ItemTemplate>
                    <asp:Literal ID="ltlCourseName" runat="server" Text='<%#Eval("Course")%>' />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Action" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="false">
                <ItemTemplate>                    
                    <asp:Button ID="btnReply" runat="server" OnClick="btnReplied_Click" 
                        CommandArgument='<%#Eval("RowID")%>'
                        class='<%#Convert.ToBoolean(Eval("Replied"))==false?"btn btn-danger m-1":"btn btn-success m-1"%>' 
                        Text='<%#Convert.ToBoolean(Eval("Replied"))==false?"Not Replied":"Replied"%>' />                    
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    </div>
    <script>
        document.getElementById("Admissions").className = "nav-link active";
    </script>


</asp:Content>
