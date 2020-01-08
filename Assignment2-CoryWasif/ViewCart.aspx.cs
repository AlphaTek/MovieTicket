using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2_CoryWasif
{
    public partial class ViewCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext Current = HttpContext.Current;

            lbMovie.Text = Current.Items["Movies"].ToString();

            lbTotal.Text = Current.Items["TotalAmount"].ToString();

            lbDiscount.Text = Current.Items["Discount"].ToString();
          
            lbGenCost.Text = Current.Items["GenAmount"].ToString();
            lbSenCost.Text = Current.Items["SenAmount"].ToString();
            lbTueCost.Text = Current.Items["TueAmount"].ToString();

            lbGenTicket.Text = Current.Items["GenTicket"].ToString();
            lbSenTicket.Text = Current.Items["SenTicket"].ToString();
            lbTueTicket.Text = Current.Items["TueTicket"].ToString();

            lbUser.Text = Current.Items["Username"].ToString();
            lbGenQuantity.Text = Current.Items["QuantityGen"].ToString();
            lbSenQuantity.Text = Current.Items["QuantitySen"].ToString();
            lbTueQuantity.Text = Current.Items["QuantityTue"].ToString();

  


        }
    }
}