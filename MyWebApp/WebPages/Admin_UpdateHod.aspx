<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_UpdateHod.aspx.cs" Inherits="MyWebApp.WebPages.Admin_UpdateHod" MasterPageFile="~/WebPages/Admin_Master.Master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Update HOD</title>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" DefaultMode="Edit">
            <EditItemTemplate>
                Hod_Dept:
                <asp:TextBox ID="Hod_DeptTextBox" runat="server" Text='<%# Bind("Hod_Dept") %>' />
                <br />
                Enrollment_No:
                <asp:TextBox ID="Enrollment_NoTextBox" runat="server" Text='<%# Bind("Enrollment_No") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Hod_Dept:
                <asp:TextBox ID="Hod_DeptTextBox" runat="server" Text='<%# Bind("Hod_Dept") %>' ReadOnly="True" />
                <br />
                Enrollment_No:
                <asp:TextBox ID="Enrollment_NoTextBox" runat="server" Text='<%# Bind("Enrollment_No") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Hod_Dept:
                <asp:Label ID="Hod_DeptLabel" runat="server" Text='<%# Bind("Hod_Dept") %>' />
                <br />
                Enrollment_No:
                <asp:Label ID="Enrollment_NoLabel" runat="server" Text='<%# Bind("Enrollment_No") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />

            </ItemTemplate>
            <PagerSettings Mode="NextPreviousFirstLast" />
        </asp:FormView>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [Hod_Dept], [Enrollment_No], [Name] FROM [HOD]"></asp:SqlDataSource>
    </form>
</asp:Content>
