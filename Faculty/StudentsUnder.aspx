<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" Theme="SkinFile" AutoEventWireup="true" CodeFile="StudentsUnder.aspx.cs" Inherits="Faculty_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="true" AutoGenerateColumns="false">
        <EmptyDataTemplate>No Students</EmptyDataTemplate>
        <columns>
            <asp:BoundField HeaderText="Student ID" DataField="Sid"/>
            <asp:BoundField HeaderText="Student Name" DataField="Sname"/>
            <asp:BoundField HeaderText="Email" DataField="Smail"/>
            <asp:BoundField HeaderText="Date of Birth" DataField="Sdob"/>
            
        </columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ProviderName="System.Data.SqlClient"
        ConnectionString="<%$ ConnectionStrings:TG %>"
        SelectCommand="Select * from Student where Tid=@id;">
        <SelectParameters>
            <asp:CookieParameter Name="id" CookieName="Faculty"/>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

