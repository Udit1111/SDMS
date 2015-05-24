<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Faculty.aspx.cs" Inherits="MyWebApp.WebPages.Admin_Faculty" MasterPageFile="~/WebPages/Admin_Master.Master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Faculty Req</title>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Enrollment_No" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="Enrollment_No" HeaderText="Enrollment_No" SortExpression="Enrollment_No" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:ButtonField CommandName="Update" HeaderText="Accept" ShowHeader="True" Text="Accept" ButtonType="Button"/>
                <asp:ButtonField ButtonType="Button" HeaderText="Reject" ShowHeader="true" CommandName="Delete" Text="Reject" />
            </Columns>
        </asp:GridView>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [Enrollment_No], [First_Name], [Last_Name], [Department], [Email] FROM [Faculty_Temp]"></asp:SqlDataSource>
    </form>
</asp:Content>
