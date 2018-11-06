<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Administrator_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator Login</title>
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>
<body>
    <asp:Panel ID="Panel1" runat="server" CssClass="limiter">
        <asp:Panel ID="Panel2" runat="server" CssClass="container-login100">
            <asp:Panel ID="Panel3" runat="server" CssClass="wrap-login100">
                <form id="form1" runat="server" class="login100-form">
                    <asp:Label ID="Label1" runat="server" Text="Welcome" CssClass="login100-form-title p-b-26"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="" CssClass="login100-form-title p-b-48"></asp:Label>

                    <asp:Panel ID="Panel4" runat="server" CssClass="wrap-input100 validate-input">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input100"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="" data-placeholder="Email" CssClass="focus-input100"></asp:Label>
                    </asp:Panel>

                    <asp:Panel ID="Panel6" runat="server" CssClass="wrap-input100 validate-input">
                        <asp:Label ID="Label4" runat="server" Text="" CssClass="btn-show-pass"><i class="zmdi zmdi-eye"></i></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="input100"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="" data-placeholder="Password" CssClass="focus-input100"></asp:Label>
                    </asp:Panel>

                    <asp:Panel ID="Panel5" runat="server" CssClass="container-login100-form-btn">
                        <asp:Panel ID="Panel7" runat="server" CssClass="wrap-login100-form-btn">
                            <asp:Panel ID="Panel8" runat="server" CssClass="login100-form-bgbtn"></asp:Panel>
                            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="login100-form-btn" BackColor="Turquoise" OnClick="Button1_Click" />
                            </asp:Panel>
                    </asp:Panel>
                    <asp:Label ID="Label6" runat="server" Text="" ForeColor="Red"></asp:Label>
                        
                </form>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>
