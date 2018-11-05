<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Administator.master" AutoEventWireup="true" CodeFile="Notifications.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="true">
        <Columns>
            <asp:ButtonField CommandName="Update" Text="Approve" ButtonType="Button" />
            <asp:ButtonField ButtonType="Button" Text="Disapprove" />
        </Columns>
        <EmptyDataTemplate>No Record Available</EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ProviderName="System.Data.SqlClient"
        ConnectionString="<%$ ConnectionStrings:TG %>"
        SelectCommand="Select Sid,Sname,RequestTid,Tfname from Student as s,Teacher as t where RequestTid=t.Tid and s.RequestTid is not null;"></asp:SqlDataSource>
</asp:Content>

