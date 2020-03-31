<%@ Page Title="Page with a Master" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentWithMaster.aspx.cs" Inherits="RazorpaySampleApp.PaymentWithMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script
            src="https://checkout.razorpay.com/v1/checkout.js"
            data-key="rzp_test_2pjQoIV7c1RY6C"
            data-amount="100"
            data-name="Razorpay"
            data-description="Purchase Description"
            data-order_id="<%=orderId%>"
            data-image="https://razorpay.com/favicon.png"
            data-prefill.name="Gaurav Kumar"
            data-prefill.email="gaurav.kumar@example.com"
            data-prefill.contact="9123456789"
            data-theme.color="#F37254"></script>
        <input type="hidden" value="Hidden Element" name="hidden">
</asp:Content>
