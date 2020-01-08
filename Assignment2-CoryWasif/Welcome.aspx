<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Assignment2_CoryWasif.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        div{
            margin-top: 80px;
        }
        #wrap{
            margin-left:auto;
            margin-right:auto;
            width:900px;
            align-content: center;
        }
        
        .auto-style1 {
            width: 434px;
        }
        .auto-style2 {
            width: 92px;
        }
        .auto-style3 {
            width: 175px;
        }
=
    </style>
</head>
<body style="background-image:url('_images/bg.jpg'); background-size: cover; background-repeat:no-repeat">
    <form id="form1" runat="server">
        <div id="wrap" >
            
            <div style="width: 439px; float:left;height: 282px;padding-top:50px;background-color:rgba(83,134,139,0.5);border-radius: 25px;">
                <br />
                <br />
                <br />
                &nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ibGuest" runat="server" BorderColor="#FFFFCC" BorderStyle="Dotted" ImageUrl="_images/continueasguest.png" PostBackUrl="~/TicketPage.aspx" CausesValidation="False" />
            </div>
            <div style="width: 439px;height: 282px; float:left;padding-top:50px;margin-left: 10px;background-color:rgba(83,134,139,0.5);border-radius: 25px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="34px" ImageUrl="_images/haveanaccount.png" Width="303px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="tbUsername" runat="server" ValidationGroup="Login" Height="25px" Width="195px" placeHolder="Username" Font-Size="Large"></asp:TextBox>
                            <br />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUsername" ErrorMessage="Please enter Username" ForeColor="#FFCC00" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" ValidationGroup="Login" Height="25px" Width="195px" placeHolder="Password" Font-Size="Large"></asp:TextBox>
                            <br />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPassword" ErrorMessage="Please enter Password" ForeColor="#FFCC00" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="tbLogin" runat="server" Text="Login" OnClick="tbLogin_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnAdminLogin" runat="server" Text="Admin Login" OnClick="btnAdminLogin_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style3">
                            <asp:Label ID="lblCheck" runat="server" ForeColor="#FFCC00" Visible="False" Font-Bold="True" Font-Size="Medium"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Image ID="Image2" runat="server" Height="34px" ImageUrl="_images/needanaccount.png" Width="303px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRegister" runat="server" Text="Register" PostBackUrl="~/Register.aspx" CausesValidation="False" />
            </div>
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br />
        </div>
    </form>
        
    
    </body>
</html>
