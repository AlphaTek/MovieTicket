<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="Assignment2_CoryWasif.ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 766px;
        }
        table{
            border: 2px solid black;
            text-align: center;
            margin-right: auto;
            margin-left: auto;
        }
        .auto-style2 {
            width: 159px;
        }
        .auto-style3 {
            width: 105px;
        }
        .auto-style4 {
            width: 151px;
        }
        .auto-style5 {
            width: 159px;
            height: 23px;
        }
        .auto-style6 {
            width: 105px;
            height: 23px;
        }
        .auto-style7 {
            width: 151px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
            width: 466px;
        }
        .auto-style11 {
            width: 466px;
        }
    </style>
</head>
<body style="background-image: url('_images/cart3.jpg'); background-size: cover; background-repeat: no-repeat">
    <form id="form1" runat="server">
        <div style="font-family: 'Leelawadee UI Semilight'; font-size: medium; font-weight: bold;">
         
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
         
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">Movie</td>
                    <td class="auto-style6">Tickets</td>
                    <td class="auto-style7">Quantity</td>
                    <td class="auto-style6">Discount $</td>
                    <td class="auto-style8">Cost</td>
                </tr>
                <tr>
                    <td class="auto-style2" rowspan="3">
            <asp:Label ID="lbMovie" runat="server" Text="Movie Name"></asp:Label>
                    </td>
                    <td class="auto-style3">
            <asp:Label ID="lbGenTicket" runat="server" Text="Ticket Type"></asp:Label>
                    </td>
                    <td class="auto-style4">
            <asp:Label ID="lbGenQuantity" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lbGenCost" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:Label ID="lbSenTicket" runat="server" Text="Ticket Type"></asp:Label>
                    </td>
                    <td class="auto-style4">
            <asp:Label ID="lbSenQuantity" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lbSenCost" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:Label ID="lbTueTicket" runat="server" Text="Ticket Type"></asp:Label>
                    </td>
                    <td class="auto-style4">
            <asp:Label ID="lbTueQuantity" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lbTueCost" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lbDiscount" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        Total Cost:
            <asp:Label ID="lbTotal" runat="server" Text="Total Cost"></asp:Label>
                    </td>
                </tr>
            </table>
         
        </div>

            <br />
         <center>
            <asp:Label ID="lbUser" runat="server" Text="UserName" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="Black"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
            <asp:Label ID="lbUser0" runat="server" Text="Enjoy the Show!!" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="X-Large" ForeColor="Black"></asp:Label>
            <br />
        <br />
             </center>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
            </p>
    </form>
</body>
</html>
