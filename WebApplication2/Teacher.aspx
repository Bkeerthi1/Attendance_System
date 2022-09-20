<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="WebApplication2.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <div style="background-image: url('Images/background3.jpeg'); width: 1200px">
            <table align="center" style=""height: 340px; width: 392px">
                <tr>
                    <td colspan="2" align="center">
                        <h2>
                            Add Teacher</h2>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>First Name: &nbsp;&nbsp;&nbsp;</b></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="197px" Height="47px"
                            CausesValidation="true" placeholder="Teacher's First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="TextBox2" ErrorMessage="First Name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                               ControlToValidate="TextBox2" ErrorMessage="Name should be in characters"
                               ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Last Name: &nbsp;&nbsp;&nbsp;</b> </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="197px" Height="47px"
                            CausesValidation="true" placeholder="Teacher's Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="TextBox4" ErrorMessage="Last Name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                               ControlToValidate="TextBox4" ErrorMessage="Name should be in characters"
                               ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email Id: &nbsp;&nbsp;&nbsp;</b> </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="197px" Height="47px"
                            TextMode="Email" placeholder="Teacher's Email Id"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="TextBox3" ErrorMessage="Email Id is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Password: &nbsp;&nbsp;&nbsp;</b> </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="197px" Height="47px"
                            TextMode="Password" placeholder="Teacher's Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="TextBox1" ErrorMessage="Password is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="true"
                            Height="47px" Width="96px" Font-Size="Medium" OnClick="Button1_Click" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat ="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:GridView  ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />                                                                      
        </div>
    </center>
</asp:Content>
