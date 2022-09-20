﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="WebApplication2.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <div style="background-image: url('Images/background3.jpeg'); width: 1200px; height: 477px">
            <table align="center" style="width: 386px">
                <tr>
                    <td colspan="2" align="center">
                        <h2>
                            Add Course</h2>
                        <br />
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2">
                        <b>&nbsp;&nbsp;&nbsp;Course:&nbsp;</b>
                        <br />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="230px"
                            CausesValidation="true" placeholder="Course Name"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="TextBox1"
                            ForeColor="Red" ErrorMessage="Enter Course Name"></asp:RequiredFieldValidator></td>
                        
                 
                </tr>
                <tr>
                    <td colspan="2" align="center" >
                        <asp:Button ID="Button1" runat="server" Text="Add" Height="44px"
                             Width="80px" Font-Bold="True" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                </table>
            <div align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CID" Height="202px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="4" Width="257px">
                    <Columns>
                        <asp:TemplateField HeaderText="Course">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("CourseName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("CourseName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <br />
           <br />
           <br />
           <br />
           <br />
           </div>
        </div>
    </center>
</asp:Content>
               