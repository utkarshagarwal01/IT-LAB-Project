<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Administator.master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeFile="NewStudents.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="limiter">
        <asp:Panel ID="Panel2" runat="server" CssClass="container-login100">
            <asp:Panel ID="Panel3" runat="server" CssClass="wrap-login100">
                <form id="form1" class="login100-form">
                    <asp:Label ID="Label1" runat="server" Text="New Student Details" CssClass="login100-form-title p-b-26"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="" CssClass="login100-form-title p-b-48"></asp:Label>

                    <asp:Panel ID="Panel4" runat="server" CssClass="wrap-input100 validate-input">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input100"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="" data-placeholder="Name" CssClass="focus-input100"></asp:Label>
                        <asp:RequiredFieldValidator id="RFV1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter name!" ForeColor="Red"/>
                    </asp:Panel>

                    <asp:Panel ID="Panel9" runat="server" CssClass="wrap-input100 validate-input">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input100"></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" Text="" data-placeholder="E-Mail" CssClass="focus-input100"></asp:Label>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter Email ID!" ForeColor="Red"/>
                        <asp:RegularExpressionValidator id="REV1" runat="server" ControlToValidate="TextBox3" ValidationExpression=".+@.+" ErrorMessage="The email is incorrect" ForeColor="Red" ClientValidationFunction="changeColor"/>
                    </asp:Panel>

                    <asp:Panel ID="Panel10" runat="server" CssClass="wrap-input100 validate-input">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input100"></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Text="" data-placeholder="Date Of Birth" CssClass="focus-input100"></asp:Label>
                        <asp:RequiredFieldValidator id="RFV2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter Date Of Birth!" ForeColor="Red"/>
                    </asp:Panel>
                    
                    <asp:Panel ID="Panel6" runat="server" CssClass="wrap-input100 validate-input">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="input100"></asp:FileUpload>
                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </asp:Panel>

                    <asp:Panel ID="Panel5" runat="server" CssClass="container-login100-form-btn">
                        <asp:Panel ID="Panel7" runat="server" CssClass="wrap-login100-form-btn">
                            <asp:Panel ID="Panel8" runat="server" CssClass="login100-form-bgbtn"></asp:Panel>
                            <asp:Button id="Button1" runat="server" Cssclass="login100-form-btn" Text="Add" BackColor="Turquoise" OnClick="Button1_Click"></asp:Button>
                        </asp:Panel>
                    </asp:Panel>
                </form>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<script src="js/main.js"></script>
</asp:Content>

