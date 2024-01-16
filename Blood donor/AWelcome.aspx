<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AWelcome.aspx.cs" Inherits="Blood_donor.ULogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1 class="auto-style4">
            <strong><em><span class="auto-style3">Helping Hands</span></em></strong></h1>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Details.aspx" Text="Details" Value="Details"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Search.aspx" Text="Search" Value="Search"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle HorizontalPadding="100px" />
            </asp:Menu>
        </div>
    </form>
</body>
</html>
