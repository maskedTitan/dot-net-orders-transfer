using Razorpay.Api;
using System;

namespace RazorpaySampleApp
{
    public partial class ApiAccessTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string key = TextBoxKey.Text;
            string secret = TextBoxSecret.Text;

            string orderId = TextBox1.Text.Trim();
            RazorpayClient razorpayClient = new RazorpayClient(key, secret);
            Order order = razorpayClient.Order.Fetch(orderId);

            TextBox2.Text = order.Attributes("id");

        }
    }
}