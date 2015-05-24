<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyPost.aspx.cs" Inherits="MyWebApp.WebPages.FacultyPost"  MasterPageFile="~/WebPages/Faculty.Master"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
     <title>Faculty Post</title>
</asp:Content>
 
    <asp:Content ContentPlaceHolderID="CPH" ID="Content1" runat="server">
        <form id="form1" runat="server">
                    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </ajaxToolkit:ToolkitScriptManager>
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
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem Value="Write">Write Notice</asp:ListItem>
                <asp:ListItem Value="Upload">Upload Notice</asp:ListItem>
            </asp:RadioButtonList>
            <br />

            <div id="writenotice" runat="server">
            <asp:TextBox ID="noticetxtbx" runat="server" TextMode="MultiLine" 
                 Columns ="50" Rows ="10"></asp:TextBox>
            <ajaxToolkit:HtmlEditorExtender ID="noticetxtbx_HtmlEditorExtender" runat="server" Enabled="True" TargetControlID="noticetxtbx" EnableSanitization ="true" DisplaySourceTab ="true">
                <Toolbar> 
                <ajaxToolkit:Undo />
                <ajaxToolkit:Redo />
                <ajaxToolkit:Bold />
                <ajaxToolkit:Italic />
                <ajaxToolkit:Underline />
                <ajaxToolkit:StrikeThrough />
                <ajaxToolkit:Subscript />
                <ajaxToolkit:Superscript />
                <ajaxToolkit:JustifyLeft />
                <ajaxToolkit:JustifyCenter />
                <ajaxToolkit:JustifyRight />
                <ajaxToolkit:JustifyFull />
                <ajaxToolkit:InsertOrderedList />
                <ajaxToolkit:InsertUnorderedList />
                <ajaxToolkit:CreateLink />
                <ajaxToolkit:UnLink />
                <ajaxToolkit:RemoveFormat />
                <ajaxToolkit:SelectAll />
                <ajaxToolkit:UnSelect />
                <ajaxToolkit:Delete />
                <ajaxToolkit:Cut />
                <ajaxToolkit:Copy />
                <ajaxToolkit:Paste />
                <ajaxToolkit:BackgroundColorSelector />
                <ajaxToolkit:ForeColorSelector />
                <ajaxToolkit:FontNameSelector />
                <ajaxToolkit:FontSizeSelector />
                <ajaxToolkit:Indent />
                <ajaxToolkit:Outdent />
                <ajaxToolkit:InsertHorizontalRule />
                <ajaxToolkit:HorizontalSeparator />
                <ajaxToolkit:InsertImage />
            </Toolbar>
            </ajaxToolkit:HtmlEditorExtender>
            <br />
            </div>
            <br />
            <br />
            

            <div id="uploadnotice" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Upload Notice"></asp:Label>
            <ajaxToolkit:AsyncFileUpload ID="AssignmentUpload0" runat="server" />
            <br />
            </div>
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
    </asp:Content>
