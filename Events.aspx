<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Events.aspx.cs" Inherits="Online_Charity_Website.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h2>Events</h2>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="form-group">
    <label for="Event">Event :</label>
     <asp:TextBox ID="txtevents" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtevents" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
    <label for="Purpose of Event">Purpose of Event :</label>
     <asp:TextBox ID="txtevent" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtevent" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
      <label for="Sponsoring Group/Department">Sponsoring Group/Department:</label>
      <asp:TextBox ID="txtgroup1" CssClass="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtgroup1" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
      <label for="Person Responsible For Event">Person Responsible For Event:</label>
        <asp:TextBox ID="txtperson" CssClass="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtperson" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
      <label for="Phone">Phone:</label>
        <asp:TextBox ID="txtphone" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtphone" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
          <div class="form-group">
      <label for="Size of Group">Size of Group:</label>
        <asp:TextBox ID="txtgroup" runat="server" CssClass="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtgroup" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
       <label for="Email">Email:</label>
        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         <div class="form-group">
       <label for="Date">Date:</label>
       <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"  TextMode="Date"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtdate" ForeColor="Red"></asp:RequiredFieldValidator>
       </div>
        <div class="form-group">
       <label for="Time Of Event">Time Of Event:</label>
             &nbsp;&nbsp;&nbsp;<br />
            <br />
           &nbsp;<label for="From">From:</label>
       <asp:TextBox ID="txtfrom" runat="server"  CssClass="form-control" TextMode="Time"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtfrom" ForeColor="Red"></asp:RequiredFieldValidator>

       </div>
        <div>
       <label for="To">To:</label>
        <asp:TextBox ID="txtto" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="This Field is Required" ControlToValidate="txtto" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
        &nbsp;&nbsp;&nbsp;
        
        <div>
         <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click" />
           </div>
        
        </div>
        </asp:Content>
<%-- <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 78%;
        }
        .auto-style2 {
            width: 249px;
        }
        .auto-style3 {
            width: 249px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        #form1 {
            width: 781px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblevents" runat="server" Text="EVENTS"></asp:Label>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblevent" runat="server" Text="Event"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblpurpose" runat="server" Text="Purpose of Event"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbldept" runat="server" Text="Sponsoring Group/Department"></asp:Label>
                </td>
                <td>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblperson" runat="server" Text="Person Responsible For Event"></asp:Label>
                </td>
                <td>
                  
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblphone" runat="server" Text="Phone No"></asp:Label>
                </td>
                <td>
                    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblgroup" runat="server" Text="Size of Group"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblemail" runat="server" Text="E-Mail"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbldate" runat="server" Text="Preferred Date"></asp:Label>
                </td>
                <td style="margin-left: 40px">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="156px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <asp:TextBox ID="txtdate" runat="server" Width="152px"></asp:TextBox>
                    <asp:Button ID="btndate" runat="server" OnClick="Button2_Click" style="margin-left: 9px" Text="Date" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbltime" runat="server" Text="Time of Event"></asp:Label>
                </td>
                <td style="margin-left: 40px">
                    <asp:Label ID="lblfrom" runat="server" Text="From"></asp:Label>
                    <asp:TextBox ID="txtfrom" runat="server" style="margin-left: 61px" Width="66px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblto" runat="server" Text="To"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtto" runat="server" Width="59px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
--%>