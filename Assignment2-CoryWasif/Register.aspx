<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Assignment2_CoryWasif.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 703px;
        }
        .auto-style2 {
            width: 135px;
        }
        .auto-style3 {
            width: 192px;
        }
        .auto-style4 {
            width: 135px;
            margin-left: 40px;
        }
        .label{
            background-color:rgba(83,134,139,0.2);
        }
        table{
            margin-bottom: 0px;
            margin: 0 auto;
            text-align:center;

        }
        .auto-style5 {
            width: 302px;
        }
    </style>
    <script type="text/javascript">
        //hides User exists label after a 1.5 second time period if user exists already
    function HideLabel() {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=lblExist.ClientID %>").style.display = "none";
        }, seconds * 300);
    };
</script>
</head>
<body style="background-image:url('_images/signupbg.jpg'); background-size: cover; background-repeat:no-repeat">
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ibCancel" runat="server" CausesValidation="False" Height="40px" ImageAlign="Left" ImageUrl="_images/cancel.png" PostBackUrl="~/Welcome.aspx" Width="45px" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="135px" ImageUrl="_images/joinnow.png" Width="181px" />
&nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
            <asp:TextBox ID="tbFirst" runat="server" Width="230px" placeHolder="Enter First Name" CausesValidation="True" Font-Size="Large" Height="36px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbFirst" ErrorMessage="*Please Enter a First Name" Font-Bold="True" Font-Size="Medium" ForeColor="#FFCC00"></asp:RequiredFieldValidator>
                    </td>
                    <td>
            <asp:TextBox ID="tbLast" runat="server" Width="230px" placeHolder="Enter Last Name" Font-Size="Large" Height="36px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbFirst" ErrorMessage="*Please Enter a Last Name" Font-Bold="True" Font-Size="Medium" ForeColor="#FFCC00"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3"> 
            <asp:TextBox ID="tbUsername" runat="server" Width="230px" placeHolder="Enter Username" CausesValidation="True" Font-Size="Large" Height="36px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbUsername" ErrorMessage="*Please Enter a Username" Font-Bold="True" Font-Size="Medium" ForeColor="#FFCC00"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblExist" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FFCC00" Text="*User Exists Already" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="tbPassword" runat="server" Width="230px" placeHolder="Enter Password" CausesValidation="True" Font-Size="Large" Height="36px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbPassword" ErrorMessage="*Please Enter a Password" Font-Bold="True" Font-Size="Medium" ForeColor="#FFCC00"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:ImageButton ID="ibSubmit" runat="server" Height="50px" ImageAlign="Right" ImageUrl="_images/submit.png" OnClick="ibSubmit_Click" Width="186px" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="219px" ImageAlign="Right" ImageUrl="_images/popcorn.png" Width="380px" />
            </div>
    </form>
</body>
</html>
