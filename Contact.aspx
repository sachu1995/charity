<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Contact.aspx.cs" Inherits="Online_Charity_Website.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h2>Contact</h2>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="form-group">
    <label for="Name">Name :</label>
    <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div class="form-group">
    <label for="Email">Email :</label>
    <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
    <label for="Phone">Phone :</label>
    <asp:TextBox ID="txtphone" CssClass="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtphone" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
    <label for="Subject">Subject :</label>
   <asp:TextBox ID="txtsubject" CssClass="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtsubject" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
     <label for="Message">Message:</label>
     <asp:TextBox ID="txtmessage" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtmessage" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
        <asp:Button ID="btnsend" runat="server" Text="SEND" Width="80px"  style="height: 26px" OnClick="btnsend_Click"/>
        </div>
        </div>
        </asp:Content>
<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 46%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 176px;
            margin-left: 80px;
        }
        .auto-style4 {
            height: 23px;
            width: 176px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblcontact" runat="server" Text="CONTACT "></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblemail" runat="server" Text="E-Mail "></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblphone" runat="server" Text="Phone "></asp:Label>
                </td>
                <td>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblsubject" runat="server" Text="Subject"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblmessage" runat="server" Text="Message"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                   
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
--%>