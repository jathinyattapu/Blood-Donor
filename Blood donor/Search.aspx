<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Blood_donor.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 25%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style8 {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <em>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style8" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
            </em>
        </p>
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style4"><strong>Blood Group</strong></td>
                    <td><strong>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style4">
                        </asp:DropDownList>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>State</strong></td>
                    <td><strong>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="auto-style4" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>City</strong></td>
                    <td><strong>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style4">
                        </asp:DropDownList>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" OnClick="Button1_Click" Text="Search" />
                        </strong></td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
