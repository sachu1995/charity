<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Prayer Request.aspx.cs" Inherits="Online_Charity_Website.Prayer_Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Prayer Request</h2>
        
            <div class="form-group">
                <label for="Name">Name :</label>
                <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
        <div class="form-group">
            <label for="Address">Address:</label>
            <asp:TextBox ID="txtaddress" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="Phone">Phone No:</label>
            <asp:TextBox ID="txtphone" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
            <div class="form-group">
             <label for="Email">Email:</label>
                <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        <div class="form-group">
            <label for="Your Prayer">Your Prayer:</label>
            <asp:TextBox ID="txtprayer" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
       <div class="form-group">
           <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" Width="80px" OnClick="btnsubmit_Click" style="height: 26px" />
       </div>
        
    </div>
 </asp:Content>

<%--<body style="width: 498px">
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblprayer" runat="server" Text="PRAYER REQUEST"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Your Prayer"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtprayer" runat="server" Height="18px" Width="161px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" Width="80px" OnClick="btnsubmit_Click" style="height: 26px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>--%>
