<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Login.aspx.cs" Inherits="Online_Charity_Website.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Login</h2>
        <div class="form-group">
            <label for="Username">Username:</label>
             <asp:TextBox ID="txtname" CssClass="form-control" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="Password">Password:</label>
             <asp:TextBox ID="txtpasswd" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
         <div class="form-group">
        <asp:Button ID="btn" runat="server" Text="LOGIN" Width="59px" OnClick="btn_Click" />
             </div>
    </div>
</asp:Content> 
 <%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 192px;
            margin-left: 160px;
        }
        .auto-style4 {
            height: 26px;
            width: 192px;
        }
        .auto-style5 {
            width: 192px;
            height: 23px;
            margin-left: 160px;
        }
        .auto-style6 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="LOGIN" style="text-align: right"></asp:Label>
                </td>
                <td class="auto-style6">
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblname" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtname" runat="server" style="margin-bottom: 0px" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblpasswd" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpasswd" runat="server" Width="142px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    
                &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>
        <p>
            &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
    --%>
