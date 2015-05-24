<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="MyWebApp.WebPages.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Sign Up To SDMS</title>
</head>
<body>
    <form id="form1" runat="server">
    <div dir="ltr">
        <asp:Label ID="fnamelbl" runat="server" Text="First Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="fnametxtbox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lnamelbl" runat="server" Text="Last Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="lnametxtbox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="usernamelbl" runat="server" Text="Username"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="usernametxtbox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Username required" ControlToValidate="usernametxtbox"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="passwordlbl" runat="server" Text="Password"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="passwordtxtbox" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="Password Required" ControlToValidate="passwordtxtbox"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="passwordlngthrev" runat="server" 
                ControlToValidate="passwordtxtbox" 
                ErrorMessage="Enter Password between 8 - 16 " 
                ValidationExpression="^[a-zA-z0-9].{8,16}"></asp:RegularExpressionValidator>
        
        <br />
        
        <br />
        
        <asp:Label ID="confirmpasslbl" runat="server" Text="Confirm Password"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="confirmpasstxtbox" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="passwordcmpvf" runat="server" 
            ControlToCompare="passwordtxtbox" ControlToValidate="confirmpasstxtbox" 
            ErrorMessage="Passwords do not match"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="Emailidlbl" runat="server" Text="Email"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="EmailIdtxtbox" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Please Enter a valid email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            ControlToValidate="EmailIdtxtbox"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="confemaillbl" runat="server" Text="Confirm Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Confmemailtxtbox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="usertypelbl" runat="server" Text="Select User Type"></asp:Label>
        <asp:RadioButtonList ID="Usertyperblist" runat="server" AutoPostBack="True" 
            RepeatDirection="Horizontal" 
            onselectedindexchanged="UserSelectrblist_SelectedIndexChanged">
         <asp:ListItem Value="1">Faculty</asp:ListItem>
         <asp:ListItem Value="2">Student</asp:ListItem>
        </asp:RadioButtonList>
        </div>
        <div id="faculty" runat="server">
        
            <asp:Label ID="fenrolnolbl" runat="server" Text="Enrollment No:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="fenrolnotxtbox" runat="server"></asp:TextBox>
            <br />
            <br />
        
            <asp:Button ID="fsubmitbtn" runat="server" Text="Submit" 
                ToolTip="Submit your details to our system" onclick="fsubmitbtn_Click" />
        
        </div>
        
        <div id="student" runat="server">
        
            <asp:Label ID="Label1" runat="server" Text="Enrollment Number :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="senrolnotxtbox" runat="server"></asp:TextBox>
            <br />
            <br />
        
            <asp:Label ID="DeptLbl" runat="server" Text="Department:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="deptdropdwnlist" runat="server">
                <asp:ListItem>Computer</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="yojlbl" runat="server" Text="Year Of Joining:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="yrofjdropdwnlist" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="Year" DataValueField="Year">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="stusubmitbtn" runat="server" Text="Submit" 
                ToolTip="Submit your details to our system" onclick="stusubmitbtn_Click" />
        
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>"  
        SelectCommand="SELECT [Year] FROM [Group_Master]"></asp:SqlDataSource>
   </form>
</body>
</html>
