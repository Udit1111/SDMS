﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MyWebApp.WebPages.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Available Groups :"></asp:Label>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Group_Name" HeaderText="Group_Name" 
                SortExpression="Group_Name" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" 
        SelectCommand="SELECT [Group_Name], [Year] FROM [Group_Master]">
    </asp:SqlDataSource>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Create New Group"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="New Group Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Grpnametxtbox" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="New Year:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="yeartxtbx" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Addgrpbtn" runat="server" onclick="Addgrpbtn_Click" 
            Text="Add Group" />
    </p>
    </form>
</body>
</html>
