<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UWelcome.aspx.cs" Inherits="Blood_donor.UWelcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <em><strong>Helping Hands</strong><br />
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Update.aspx" Text="Update" Value="Update"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Search.aspx" Text="Search" Value="Search"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle HorizontalPadding="100px" />
            </asp:Menu>
            </em>
        </div>
    </form>
</body>
</html>
