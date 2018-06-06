<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ListExample.WebForm1" %>

<!DOCTYPE html>
<link href="Content/bootstrap.css" rel="stylesheet" />
<script src="Scripts/bootstrap.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="ExampleDataSource" EnableTheming="True" GroupItemCount="2">
            <AlternatingItemTemplate>
                <td runat="server" style="">
                    <a href="<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("url") %>'></asp:Literal>">
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </a>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("icon_url") %>'/>
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <td runat="server" style="">
                    Style 1
                    <a href="<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("url") %>'></asp:Literal>">
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </a>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("icon_url") %>'/>
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />url:
                    <asp:Label ID="urlLabel" runat="server" Text='<%# Eval("url") %>' />
                    <br />icon_url:
                    <asp:Label ID="icon_urlLabel" runat="server" Text='<%# Eval("icon_url") %>' />
                    <br />Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="ExampleDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [url], [icon_url], [Id] FROM [Table]"></asp:SqlDataSource>
    </form>
</body>
</html>
