<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyPost.aspx.cs" Inherits="MyWebApp.WebPages.FacultyPost" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     
    <style type="text/css">
        #TextArea1 {
            height: 65px;
            width: 403px;
        }
        #TextArea2 {
            height: 57px;
            width: 407px;
        }
        #TextArea3
        {
            height: 51px;
            width: 407px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="tolbl" runat="server" Text="To:"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:CheckBoxList ID="tolist1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Group_Name" 
            DataValueField="Group_Master_Id" 
            AutoPostBack="True">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" 
            SelectCommand="SELECT [Group_Master_Id], [Group_Name] FROM [Group_Master]">
        </asp:SqlDataSource>
&nbsp;<br />
        <br />
        <asp:Label ID="subjectlbl" runat="server" Text="Subject :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="subjtext" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="typelbl" runat="server" Text="Type :"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
            OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" 
            RepeatDirection="Horizontal">
            <asp:ListItem>Notice</asp:ListItem>
            <asp:ListItem>Assignment</asp:ListItem>
        </asp:RadioButtonList>
    
        <br />
    
    </div>
        <div id="asgn" runat="server">
        <asp:Label ID="assgnmentlbl" runat="server" Text="Assignment"></asp:Label>
            <br />
            <br />
            <asp:Label ID="selectfilelbl" runat="server" Text="Upload Assignment"></asp:Label>
            <br />
            <asp:FileUpload ID="AssignmentUpload" runat="server" />
            <br />
            <br />
            <asp:Label ID="acmmntlbl" runat="server" Text="Comment :"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="acmnttxtbx" runat="server" Height="77px" TextMode="MultiLine" 
                Width="235px"></asp:TextBox>
            <br />
            <asp:Button ID="asubmitbtn" runat="server" onclick="asubmitbtn_Click" 
                Text="Submit" />
            <br />
            </div>
        <div id="noti" visible="false" runat="server">
        <asp:Label ID="noticelbl" runat="server" Text="Notice "></asp:Label>
            <br />
            <br />
            <asp:Label ID="writenoticelbl" runat="server" Text="Write Notice Below :"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="noticetxtbx" runat="server" Height="58px" TextMode="MultiLine" 
                Width="223px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="ncommentlbl" runat="server" Text=" Comment :"></asp:Label>
            <br />
            <asp:TextBox ID="ncmnttxtbx" runat="server" Height="49px" TextMode="MultiLine" 
                Width="220px"></asp:TextBox>
            <br />
            <asp:Button ID="nsubmitbtn" runat="server" Text="Submit" 
                onclick="nsubmitbtn_Click" />
            <br />
            </div>
    </form>
</body>
</html>
