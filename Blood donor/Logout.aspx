<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Blood_donor.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: large;
            text-decoration: underline;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <p class="auto-style3">
                <strong><em>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style2" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                </em></strong>
            </p>
            <p>
                <strong><em>Thank You.................. Visit Again..................</em></strong></p>
        </div>
    </form>
</body>
</html>
