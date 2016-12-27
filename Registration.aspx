<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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
            <td>First Name</td>
            <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Last Name</td>
            <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
             
        </tr>
         <tr>
            <td>Email</td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>User Name</td>
            <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
             
        </tr>
         <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtPassword" runat="server"  TextMode="Password"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Confirm Password</td>
            <td><asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
         <tr>
            <td>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
            <td>
                <asp:Label ID="lblErrorSuccess" runat="server" Text=""></asp:Label></td>
        </tr>
        
    </table>

        <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required" Display="None"></asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ControlToValidate="txtUserName" ErrorMessage="User Name is required" Display="None"></asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" Display="None"></asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator ID="ConfirmValidator" runat="server" ControlToValidate="txtConfirm" ErrorMessage="You must confirm your password" Display="None"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="EmailRegularExpression" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>

        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" ErrorMessage="Password don't match" Display="None"></asp:CompareValidator>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

        <asp:LinkButton ID="LbLogin" runat="server" 
PostBackUrl="~/Default.aspx" CausesValidation="false">Log in</asp:LinkButton><br />



    </div>
    </form>
</body>
</html>
