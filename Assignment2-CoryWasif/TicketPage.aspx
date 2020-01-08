<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketPage.aspx.cs" Inherits="Assignment2_CoryWasif.TicketPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table{
            margin-bottom: 0px;
            margin: 0 auto;
            text-align:center;
        }
        #form1{
            text-align:center;
        }
        .auto-style5 {
            width: 680px;
            height: 347px;
            
        }
        .auto-style6 {
            width: 251px;
            height: 336px;
        }
        .auto-style7 {
            width: 250px;
            height: 336px;
        }
        .auto-style9 {
            width: 678px;
            height: 150px;
            background-color: #C0C0C0;
        }
        .auto-style10 {
            width: 226px;
        }
    </style>
</head>
<body style="margin: auto; background-image:url('_images/bg.jpg'); background-size: cover; background-repeat:no-repeat">
    <form id="form1" runat="server">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div align="center">
        <asp:Label ID="Label1" text-align="center" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Movie Tickets" BorderStyle="Groove" ForeColor="Silver" Width="213px"></asp:Label>
       </div>
            <br />
        <asp:Label ID="lbUsername" runat="server" ForeColor="#CCCCCC" Text="Welcome"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <table aria-dropeffect="none" class="auto-style5">
            <tr>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="210px" ImageAlign="Middle" ImageUrl="_images/AntManWasp.jpg" Width="165px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:CheckBox ID="cbAntman" runat="server" ForeColor="#CCCCCC" Text="AntMan and Wasp" BackColor="#333333" Font-Bold="True" Font-Size="Medium" />
                    <br />
                </td>
                <td class="auto-style6">
                    <asp:Image ID="Image2" runat="server" Height="210px" ImageAlign="Middle" ImageUrl="_images/EQ2.jpg" Width="165px" />
                    <br />
                    <br />
                    <asp:CheckBox ID="cbEQ2" runat="server" ForeColor="#CCCCCC" Text="The Equalizer 2" BackColor="#333333" Font-Bold="True" Font-Size="Medium" />
                </td>
                <td class="auto-style7">
                    <asp:Image ID="Image3" runat="server" Height="210px" ImageAlign="Middle" ImageUrl="_images/MammaMia.jpg" Width="165px" />
                    <br />
                    <br />
                    <asp:CheckBox ID="cbMammaMia" runat="server" ForeColor="#CCCCCC" Text="Mamma Mia" BackColor="#333333" Font-Bold="True" Font-Size="Medium" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table cellpadding="3" class="auto-style9">
            <tr>
                <td>
                    <asp:CheckBox ID="cbGeneral" runat="server" Font-Bold="True" Font-Size="Medium" Text="General Admission ($15.00)" />
                </td>
                <td class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Quantity"></asp:Label>
&nbsp;
                    <asp:TextBox ID="tbQuantityGen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="cbSenior" runat="server" Font-Bold="True" Font-Size="Medium" Text="Senior Citizen and Children (Under 13 years old) ($5.00)" />
                </td>
                <td class="auto-style10">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Quantity"></asp:Label>
&nbsp;
                    <asp:TextBox ID="tbQuantitySen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="cbTuesday" runat="server" Font-Bold="True" Font-Size="Medium" Text="Tuesday Special ($5.00)" />
                </td>
                <td class="auto-style10">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Quantity"></asp:Label>
&nbsp;
                    <asp:TextBox ID="tbQuantityTue" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lbError" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Double" Font-Bold="True" Font-Italic="True" Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="#CC0000" Text="*Please ensure all your selections are made correctly and quantity is not left blank*" Visible="False"></asp:Label>
        &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div align="center">
        <asp:Button ID="btnCart" runat="server" OnClick="btnCart_Click" Text="View Cart" Font-Bold="True" Font-Size="Large" Width="680px" />
        </div>
            <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
