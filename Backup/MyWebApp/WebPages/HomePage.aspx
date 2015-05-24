<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MyWebApp._Default"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Welcome to SDMS Portal!!!</title>
    <!--<link href="CSS/HomePage.css" rel="stylesheet" type="text/css" />-->
    <link href="CSS/style.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form" runat="server">
    <div id = "block">
        <!--<asp:Label ID="usrnmlbl" runat="server" CssClass="lbl"></asp:Label>-->
        <label id="user" for="name">p</label>

        <asp:TextBox ID="Usernmtxtbx" runat="server" placeholder="Username" ToolTip="Enter Username" required></asp:TextBox>
        
        <label id="pass" for="password">k</label>
        <!--<asp:Label ID="passwdlbl" runat="server" CssClass="lbl">k</asp:Label>-->
        
        <asp:TextBox ID="Passtxtbx" runat="server" TextMode="Password" placeholder="Password" ToolTip="Enter Password" required></asp:TextBox>
        
        <asp:Button ID="loginbtn" runat="server" onclick="loginbtn_Click" Text="a" style=" Font-Names="Wingdings 3" />
    </div>
    <div id="option">   
        <p>LOGIN</p>
        <!--<a href="XX">forgot?</a> -->
        <a href="Signup.aspx">SIGNUP</a>      
    </div>
        <asp:Label ID="Resultlbl" runat="server"></asp:Label>
    </form>
</body>
</html>

