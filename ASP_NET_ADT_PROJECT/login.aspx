<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASP_NET_ADT_PROJECT.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 280px;
        }
        .auto-style3 {
            width: 712px;
            height: 169px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style3">
    <table class="auto-style1" style="background-color: #00FFFF">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="LOGIN PAGE"></asp:Label>
            </td>
            
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="EMAIL ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Cyan" TextMode="Email" Width="301px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="PASSWORD:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="Cyan" TextMode="Password" Width="299px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" BackColor="Cyan" Font-Bold="True" Text="LOGIN" OnClick="Button1_Click1" />
            </td>
            <td style="background-color: #00FFFF">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
