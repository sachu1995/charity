<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add News.aspx.cs" Inherits="Online_Charity_Website.Add_News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 53%;
        }
        .auto-style3 {
            width: 207px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Headline "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txthead" runat="server" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsubject" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdate" runat="server" TextMode="Date" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
