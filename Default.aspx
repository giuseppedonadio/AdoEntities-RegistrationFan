<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Enter username</td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Enter password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server"  TextMode="Password" ></asp:TextBox></td>
        </tr>
         <tr>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="log In" OnClick="btnLogin_Click" /></td>
            <td>
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </td>
        </tr>
    </table>
        <asp:LinkButton ID="LinkButton1"  PostBackUrl="~/Registration.aspx" runat="server">Register</asp:LinkButton>
    </div>
    </form>
</body>
</html>