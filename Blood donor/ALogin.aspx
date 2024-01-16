<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ALogin.aspx.cs" Inherits="Blood_donor.Alogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 23%;
        }
        .auto-style2 {
            width: 125px;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            font-weight: bold;
            font-style: italic;
        }
        .auto-style8 {
            text-decoration: none;
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
                        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>User Id</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Password</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2"><strong><em>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="Login" />
                        </em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
