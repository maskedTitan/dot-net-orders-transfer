<%@ Page Title="Testing RazorPay API" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApiAccessTest.aspx.cs" Inherits="RazorpaySampleApp.ApiAccessTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:TextBox ID="TextBoxKey" Text="rzp_test_2pjQoIV7c1RY6C" placeholder="key" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBoxSecret" Text="nWwe91xQO3NIDzJUp1mUmr9O" placeholder="secret" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox1" placeholder="order_id" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Fetch Order" OnClick="Button1_Click" />
    <br />
    <asp:TextBox ID="TextBox2" TextMode="MultiLine" Rows="20" Columns="80" runat="server"></asp:TextBox>
</asp:Content>
