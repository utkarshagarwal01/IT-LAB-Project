<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty/FacultyMaster.master" Theme="SkinFile" AutoEventWireup="true" CodeFile="AllStudents.aspx.cs" Inherits="Faculty_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:GridView ID="GridView1" OnDataBinding="GridView1_DataBinding" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand" runat="server" DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="true" AutoGenerateColumns="false">
        <EmptyDataTemplate>No Students</EmptyDataTemplate>
        <columns>
            <asp:BoundField HeaderText="Student ID" DataField="Sid"/>
            <asp:BoundField HeaderText="Student Name" DataField="Sname"/>
            <asp:BoundField HeaderText="Email" DataField="Smail"/>
            <asp:BoundField HeaderText="Date of Birth" DataField="Sdob" DataFormatString="{0:dd/MM/yyyy}"/>
            <asp:BoundField HeaderText="Teacher ID" DataField="Tid" NullDisplayText=" "/>
            <asp:TemplateField HeaderText="Teacher Name">
                <ItemTemplate>
                    <%# Eval("Tfname") %>&nbsp;
                    <%# Eval("Tlname") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField CommandName="Apply" Text="Apply" ButtonType="Button" HeaderText="Apply for Guardianship" Visible="True" />
        </columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ProviderName="System.Data.SqlClient"
        ConnectionString="<%$ ConnectionStrings:TG %>"
        SelectCommand="Select * from Student as s LEFT JOIN Teacher as t on s.tid=t.tid ;"></asp:SqlDataSource>
</asp:Content>

