<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="MyWebApp.WebPages.View" MasterPageFile="~/WebPages/Faculty.Master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
     <title>View Post</title>
</asp:Content>
 <asp:Content ContentPlaceHolderID="CPH" ID="Content1" runat="server">
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="viewnoticedatasource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" 
            
            SelectCommand="SELECT [Subject], [Type], [Notice], [Comment], [dateofpost] FROM [Post] ORDER BY [dateofpost] DESC">
        </asp:SqlDataSource>
    
    </div>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="viewnoticedatasource" 
        onselectedindexchanged="ListView1_SelectedIndexChanged">
        <ItemTemplate>
            <hr />
                <h3><%# Eval("Subject") %></h3>
                <table>
                <tr>
                   <td>Type:</td>
                   <td><%#Eval("Type") %></td>
                </tr>
                <tr>
                   <td>Notice:</td>
                   <td><%#Eval("Notice") %></td>
                </tr>
                <tr>
                   <td>Comment:</td>
                   <td><%#Eval("Comment") %></td>
                </tr><tr>
                   <td>Date and Time of Post:</td>
                   <td><%#Eval("dateofpost") %></td>
                </tr>
                </table>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <hr />
                <h3><%# Eval("Subject") %></h3>
                <table>
                <tr>
                   <td>Type:</td>
                   <td><%#Eval("Type") %></td>
                </tr>
                <tr>
                   <td>Notice:</td>
                   <td><%#Eval("Notice") %></td>
                </tr>
                <tr>
                   <td>Comment:</td>
                   <td><%#Eval("Comment") %></td>
                </tr><tr>
                   <td>Date and Time of Post:</td>
                   <td><%#Eval("dateofpost") %></td>
                </tr>
                </table>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Subject:
            <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
            <br />
            Type:
            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
            <br />
            Notice:
            <asp:TextBox ID="NoticeTextBox" runat="server" Text='<%# Bind("Notice") %>' />
            <br />
            Comment:
            <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
            <br />
            dateofpost:
            <asp:TextBox ID="dateofpostTextBox" runat="server" 
                Text='<%# Bind("dateofpost") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Clear" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span ID="itemPlaceholder" runat="server" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <EditItemTemplate>
            <span style="">Subject:
            <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
            <br />
            Type:
            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
            <br />
            Notice:
            <asp:TextBox ID="NoticeTextBox" runat="server" Text='<%# Bind("Notice") %>' />
            <br />
            Comment:
            <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
            <br />
            dateofpost:
            <asp:TextBox ID="dateofpostTextBox" runat="server" 
                Text='<%# Bind("dateofpost") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Cancel" />
            <br />
            <br />
            </span>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <span style="">Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
            <br />
            Type:
            <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
            <br />
            Notice:
            <asp:Label ID="NoticeLabel" runat="server" Text='<%# Eval("Notice") %>' />
            <br />
            Comment:
            <asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' />
            <br />
            dateofpost:
            <asp:Label ID="dateofpostLabel" runat="server" 
                Text='<%# Eval("dateofpost") %>' />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    </form>
</asp:Content>
