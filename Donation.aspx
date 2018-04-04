<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Donation.aspx.cs" Inherits="Online_Charity_Website.Donation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h2>Donation</h2>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="form-group">
    <label for="Full Name">Full Name :</label>
     <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
    <label for="Email">Email :</label>
     <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
     <div class="form-group">
    <label for="Phone">Phone :</label>
      <asp:TextBox ID="txtphone" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtphone" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
        <label for="Amount">Amount :</label>
       <asp:TextBox ID="txtamount" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtamount" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
        <label for="Purpose">Purpose :</label>
        <asp:TextBox ID="txtpurpose" CssClass="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtpurpose" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
        <asp:Button ID="btnpay" runat="server"  style="margin-left: 0px" Text="Make Payment" Width="114px" OnClick="btnpay_Click1" />
        </div></div>

    </asp:Content>
<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 54%;
        }
        .auto-style2 {
            width: 220px;
        }
        .auto-style3 {
            width: 220px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body style="width: 757px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DONATION DETAILS</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblname" runat="server" Text="Full Name"></asp:Label>
                </td>
                <td>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblemail" runat="server" Text="E-Mail "></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblphone" runat="server" Text="Phone No"></asp:Label>
                </td>
                <td class="auto-style4">
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblamount" runat="server" Text="Amount"></asp:Label>
                </td>
                <td>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblpurpose" runat="server" Text="Purpose"></asp:Label>
                </td>
                <td>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="margin-left: 320px">&nbsp;</td>
                <td style="font-weight: 700">
                    <asp:Button ID="btnpay" runat="server" OnClick="btnpay_Click" style="margin-left: 0px" Text="Make Payment" Width="114px" />
                </td>
            </tr>
        </table>
    <div style="margin-left: 160px">
    
    </div>
    </form>
</body>
</html>
--%>