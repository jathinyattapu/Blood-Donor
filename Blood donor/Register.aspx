<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Blood_donor.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 28%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 164px;
            font-size: medium;
        }
        .auto-style4 {
            text-align: center;
            width: 164px;
        }
        .auto-style5 {
            width: 164px;
            height: 26px;
            font-size: medium;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style2"><em>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style8" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
            </em></p>
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style3"><strong>User Name</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Password</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Confirm Password</strong></td>
                    <td class="auto-style6"><strong>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style7"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Gender</strong></td>
                    <td><strong>
                        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style7" GroupName="a" Text="Male" />
                        <span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style7" GroupName="a" Text="Female" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Languages</strong></td>
                    <td><strong>
                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style7" Text="Tel" />
                        <span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:CheckBox ID="CheckBox2" runat="server" CssClass="auto-style7" Text="Hin" />
                        <span class="auto-style7">&nbsp;&nbsp;&nbsp; </span>
                        <asp:CheckBox ID="CheckBox3" runat="server" CssClass="auto-style7" Text="Eng" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>State</strong></td>
                    <td><strong>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style7" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>City</strong></td>
                    <td><strong>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style7">
                        </asp:DropDownList>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Blood Group</strong></td>
                    <td><strong>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style7">
                        </asp:DropDownList>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Phone Number</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style7"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Email</strong></td>
                    <td><strong>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style7"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="Register" />
                        </strong></td>
                    <td class="auto-style2"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style7" OnClick="Button2_Click" Text="Clear" />
                        </strong></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
