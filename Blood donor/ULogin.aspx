<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ULogin.aspx.cs" Inherits="Blood_donor.ULogin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 28%;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            width: 136px;
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style6 {
            width: 136px;
            font-size: large;
            height: 38px;
        }
        .auto-style7 {
            height: 38px;
        }
        .auto-style8 {
            font-size: large;
            font-style: italic;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <em>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style8" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
            </em>
            <table align="center" class="auto-style1">
                <tr>
                    <td colspan="2"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Label" Visible="False"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>User Name</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Password</strong></td>
                    <td class="auto-style7"><strong>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style8" OnClick="Button1_Click" Text="Login" />
                        </strong></td>
                </tr>
            </table>
        </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
