using Razorpay.Api;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;

namespace RazorpaySampleApp
{
    public partial class Payment : System.Web.UI.Page
    {
        public string orderId;
        protected void Page_Load(object sender, EventArgs e)
        {
            string key = "rzp_test_2pjQoIV7c1RY6C";
            string secret = "nWwe91xQO3NIDzJUp1mUmr9O";

            
            ListDictionary trf = new ListDictionary();
            trf.Add("amount", 500);
            trf.Add("account", "acc_EDR7BXuzPGG3kQ");
            trf.Add("currency", "INR");

            ArrayList lst = new ArrayList();
            lst.Add(trf);

            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", 10000); // this amount should be same as transaction amount
            input.Add("currency", "INR");
            input.Add("receipt", "12121");
            input.Add("payment_capture", 1);

            input.Add("transfers", lst);
        
            RazorpayClient client = new RazorpayClient(key, secret);

            Razorpay.Api.Order order = client.Order.Create(input);
            orderId = order["id"].ToString();
            Console.WriteLine("order");


        }
    }
}