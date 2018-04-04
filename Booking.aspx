<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Booking.aspx.cs" Inherits="Online_Charity_Website.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h2>Booking</h2>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="form-group">
    <label for="Name">Name :</label>
    <asp:TextBox ID="txtname2" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtname2" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div class="form-group">
    <label for="Address">Address :</label>
    <asp:TextBox ID="txtaddress2" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtaddress2" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div class="form-group">
    <label for="Phone">Phone :</label>
    <asp:TextBox ID="txtphone" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtphone" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div class="form-group">
    <label for="Age">Age :</label>
    <asp:TextBox ID="txtage1" CssClass="form-control"  runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtage1" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div class="form-group">
    <label for="Email">Email :</label>
     <asp:TextBox ID="txtemail" CssClass="form-control"  runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div class="form-group">
    <label for="Room">Room :</label>
     <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Single</asp:ListItem>
                <asp:ListItem>Double</asp:ListItem>
            </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This Field is Required" ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator>

      </div>
    <div class="form-group">
    <label for="Check In">Check In:</label>
    <asp:TextBox ID="txtdate" CssClass="form-control"  runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtdate" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div class="form-group">
    <label for="Check Out">Check Out:</label>
    <asp:TextBox ID="txttime" CssClass="form-control"  runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txttime" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div class="form-group">
    <label for="ID Proof">ID Proof:</label>
    <asp:TextBox ID="txtid" CssClass="form-control"  runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtid" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div class="form-group">
    <label for="ID No">ID No:</label>
    <asp:TextBox ID="txtno" CssClass="form-control"  runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtno" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    <div><asp:Label ID="lblpatient" runat="server" Text="DETAILS OF PATIENT"></asp:Label></div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <div class="form-group">
    <label for="Name">Name:</label>
    <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
     <div class="form-group">
    <label for="Age">Age:</label>
    <asp:TextBox ID="txtage" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtage" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <label for="Contact">Contact:</label>
    <asp:TextBox ID="txtcontact" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtcontact" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <label for="Description">Description:</label>
    <asp:TextBox ID="txtdescription" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtdescription" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <asp:Button ID="btnsubmit"  runat="server" Text="SUBMIT" OnClick="btnsubmit_Click" />
    </div>
</div>
</asp:Content>
<%-- <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style2 {
            height: 23px;
            margin-left: 80px;
        }
        .auto-style3 {
            width: 187px;
        }
        .auto-style4 {
            height: 23px;
            width: 187px;
        }
        .auto-style5 {
            width: 187px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblbooking" runat="server" Text="BOOKING"></asp:Label>
                &nbsp;DETAILS</td>
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
                    <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
&nbsp; </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblphone" runat="server" Text="Phone no"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblemail" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Room"></asp:Label>
                </td>
                <td class="auto-style2">
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbldate" runat="server" Text="Check in"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr style="text-align: center">
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lbltime" runat="server" Text="Check out"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Id Proof"></asp:Label>
                </td>
                <td class="auto-style2">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Id No"></asp:Label>
                </td>
                <td class="auto-style2">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblname1" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblage" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style6">
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbladdress1" runat="server" Text="Contact"></asp:Label>
                </td>
                <td class="auto-style2">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbldescription" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="auto-style2">
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
--%>