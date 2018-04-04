<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Blood Bank.aspx.cs" Inherits="Online_Charity_Website.Blood_Bank" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Blood Bank</h2>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="form-group">
                <label for="">Full Name :</label>
                <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        <div class="form-group">
                <label for="">Blood Group :</label>
                 <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                     <asp:ListItem>A+</asp:ListItem>
                     <asp:ListItem>B+</asp:ListItem>
                     <asp:ListItem>AB+</asp:ListItem>
                     <asp:ListItem>0+</asp:ListItem>
                     <asp:ListItem>O-</asp:ListItem>
                     <asp:ListItem>A-</asp:ListItem>
                     <asp:ListItem>B-</asp:ListItem>
                     <asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        <div class="form-group">
                <label for="">State :</label>
                <asp:TextBox ID="txtstate" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtstate" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        <div class="form-group">
                <label for="">City :</label>
                <asp:TextBox ID="txtcity" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtcity" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        <div class="form-group">
                <label for="">Mobile No:</label>
                <asp:TextBox ID="txtmobile" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtmobile" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        <div class="form-group">
                <label for="">Email  :</label>
                <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
        <div class="form-group">
         <label for="">Last Time Blood Donated :</label>
            <asp:TextBox ID="txtdate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtdate" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="form-group">
        <asp:Button ID="txtsubmit" runat="server" Text="SUBMIT" OnClick="txtsubmit_Click" />
                     </div>
        </div>
        </asp:Content>
<%-- <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 53%;
        }
        .auto-style2 {
            width: 182px;
        }
        .auto-style3 {
            width: 251px;
        }
        .auto-style4 {
            width: 182px;
            height: 23px;
        }
        .auto-style5 {
            width: 251px;
            height: 23px;
        }
        .auto-style6 {
            width: 182px;
            height: 26px;
        }
        .auto-style7 {
            width: 251px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BLOOD BANK</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblname" runat="server" Text="Full Name"></asp:Label>
                </td>
                <td class="auto-style3">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Type"></asp:Label>
                </td>
                <td class="auto-style3">
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Blood Group"></asp:Label>
                </td>
                <td class="auto-style3">
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblstate" runat="server" Text="State"></asp:Label>
                </td>
                <td class="auto-style5">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style3">
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Mobile No"></asp:Label>
                </td>
                <td class="auto-style3">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style5">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style3">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style7">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Last Time Blood Donated"></asp:Label>
                </td>
                <td class="auto-style7">
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
--%>