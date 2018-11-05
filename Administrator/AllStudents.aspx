<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Administator.master" AutoEventWireup="true" CodeFile="AllStudents.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="true">
        <EmptyDataTemplate>No Record Available</EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ProviderName="System.Data.SqlClient"
        ConnectionString="<%$ ConnectionStrings:TG %>"
        SelectCommand="Select * from Student;"></asp:SqlDataSource>
</asp:Content>

