<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrincipalHod_Post.aspx.cs" Inherits="MyWebApp.WebPages.PrincipalHod_Post" MasterPageFile="~/WebPages/PHChildPost.master" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Child1" runat="server">
    <form id="form2" runat="server">
        <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
        <div>
            <asp:Label ID="tolbl" runat="server" Text="To:"></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:CheckBoxList ID="tolist1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Hod_Dept" DataValueField="Id">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT [Id], [Hod_Dept] FROM [HOD]"></asp:SqlDataSource>
            &nbsp;<br />
            <br />
            <asp:Label ID="subjectlbl" runat="server" Text="Subject :"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="subjtext" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
       
            <asp:Label ID="noticelbl" runat="server" Text="Notice "></asp:Label>
            <br />
            <br />
            <asp:Label ID="writenoticelbl" runat="server" Text="Write Notice Below :"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
            OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" 
            RepeatDirection="Horizontal">
            <asp:ListItem Value="Write">Write Notice</asp:ListItem>
            <asp:ListItem Value="Upload">Upload Notice</asp:ListItem>
        </asp:RadioButtonList>
            <br />


            <div id="writenotice" runat="server">
            <asp:TextBox ID="noticetxtbx" runat="server" TextMode="MultiLine"  Columns ="50" Rows ="10"></asp:TextBox>
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

            <div id="uploadnotice" runat="server">
            <br />
            <ajaxToolkit:AsyncFileUpload ID="AssignmentUpload" runat="server" />
            <br />
            <br />
            </div>
        <asp:Label ID="ncommentlbl" runat="server" Text=" Comment :"></asp:Label>
            <br />
            <asp:TextBox ID="ncmnttxtbx" runat="server" Height="49px" TextMode="MultiLine" Width="220px"></asp:TextBox>
            <br />
            <asp:Button ID="nsubmitbtn" runat="server" onclick="nsubmitbtn_Click" Text="Submit" />
            <br />
    </form>
</asp:Content>
