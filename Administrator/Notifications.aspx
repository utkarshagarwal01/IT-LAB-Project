<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Administator.master" AutoEventWireup="true" CodeFile="Notifications.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="true" AllowSorting="true" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="Sid" HeaderText="Student ID" SortExpression="Sid"/>
            <asp:BoundField DataField="Sname" HeaderText="Student Name"/>
            <asp:BoundField DataField="Tid" HeaderText="Teacher ID" SortExpression="Tid"/>
            <asp:TemplateField HeaderText="Teacher Name">
                <ItemTemplate>
                    <%# Eval("Tfname") %>&nbsp;
                    <%# Eval("Tlname") %>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:ButtonField CommandName="Update" Text="Approve" ButtonType="Button" HeaderText="Approve"/>
            <asp:ButtonField ButtonType="Button" Text="Disapprove" HeaderText="Disapprove" />
        </Columns>
        <EmptyDataTemplate>No Record Available</EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ProviderName="System.Data.SqlClient"
        ConnectionString="<%$ ConnectionStrings:TG %>"
        SelectCommand="Select s.Sid,Sname,t.Tid,Tfname,Tlname from Student as s,Teacher as t, Request as r where r.Tid=t.Tid and s.Sid = r.Sid ORDER BY s.Sid,t.Tid;"></asp:SqlDataSource>
</asp:Content>

