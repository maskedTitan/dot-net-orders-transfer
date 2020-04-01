<%@ Page Title="Page with a Master" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentWithMaster.aspx.cs" Inherits="RazorpaySampleApp.PaymentWithMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    thsi si child
    <button id="rzp-butthon1">Pay</button>
    <script src="https://checkout.razorpay.com/v1/checkout.js">
    </script>
    <script>
        var options = {
            "key": "rzp_test_2pjQoIV7c1RY6C", // Enter the Key ID generated from the Dashboard    
            "amount": "50000", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise   
            "currency": "INR",
            "name": "Acme Corp",
            "description": "Test Transaction",
            "image": "https://example.com/your_logo",
            "order_id": "<%=orderId%>", //This is a sample Order ID. Pass the `id` obtained in the response of Step 1    
            "handler": function (response) { alert(response.razorpay_payment_id); alert(response.razorpay_order_id); alert(response.razorpay_signature) },
            "prefill": { "name": "Gaurav Kumar", "email": "gaurav.kumar@example.com", "contact": "9999999999" },
            "notes": { "address": "Razorpay Corporate Office" },
            "theme": { "color": "#F37254" }
        }; var rzp1 = new Razorpay(options); document.getElementById('rzp-butthon1').onclick = function (e) { rzp1.open(); e.preventDefault(); }

    </script>
</asp:Content>
