<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" height :450px;">
        <table style="width:565px; height: 421px; background-color:#00FFFF; margin:0 auto">
                <tr>
                    <td colspan="2" align="center">
                        &nbsp;<img id="Img1"
                            src="Images/login.jpg" alt="" runat="server"
                            style="height: 190px; width:199px"/></td>

                </tr>
                <tr>
                    <td colspan="2" align="center" >
                        <h2>Teacher,Admin &amp; Student Login </h2>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width:50%">
                        <b>Email Id/User ID:</b>
                   </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat ="server" BackColor="Transparent" Height="29px"
                            Width="166px" Font-Bold="True" placeholder="Enter Email_Id/User ID"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="TextBox1" ErrorMessage="Enter Email-ID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width:50%">
                        <b>Password:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat ="server" BackColor="Transparent" Height="29px"
                            Width="166px" TextMode="Password" Font-Bold="True" placeholder="Enter Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" >
                        <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
                            Height="46px" Width="201px" onclick="Button1_Click" BackColor="#CC0000"  /><hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Font_Bold="True"></asp:Label>
                    </td>
                    <td align="right">
                    </td>
               </tr>
                    
           </table>
        </div>
        </form>
</body>
</html>
