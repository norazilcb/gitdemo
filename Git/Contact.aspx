<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Git.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <br />
            Email:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <br />
            Subject:&nbsp; <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
            <br />
            <br />
            Message:<br />
            <asp:TextBox ID="txtMsg" runat="server" Height="106px" TextMode="MultiLine" Width="359px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSendEmail" runat="server" OnClick="btnSendEmail_Click" Text="Send" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
