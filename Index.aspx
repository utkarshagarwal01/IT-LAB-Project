<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TEACHER GUARDIAN MANAGEMENT SYSTEM</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>TEACHER GUARDIAN MANAGEMENT SYSTEM</h1>
            <asp:Button ID="Button1" runat="server" Text="Administrator" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Faculty" OnClick="Button2_Click"/>
        </div>
    </form>
</body>
</html>
