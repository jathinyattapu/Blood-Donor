<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Blood_donor.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
            font-size: medium;
        }
    </style>
</head>
<body>
    <div><form id="form1" runat="server">
        <div class="auto-style1">
            <strong><em>Helping Hands<br />
            <br />
            </em>
            <asp:Menu ID="Menu1" runat="server" CssClass="auto-style3" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Register.aspx" Text="Register" Value="Register"></asp:MenuItem>
                    <asp:MenuItem Text="Login" Value="Login">
                        <asp:MenuItem NavigateUrl="~/Alogin.aspx" Text="Admin" Value="Admin"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/ULogin.aspx" Text="User" Value="User"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Search.aspx" Text="Search" Value="Search"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle HorizontalPadding="100px" />
            </asp:Menu>
            <br />
            </strong></div>
    </form></div>
</body>
</html>
