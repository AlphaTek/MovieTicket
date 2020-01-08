using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Assignment2_CoryWasif
{


    public partial class TicketPage : System.Web.UI.Page
    {

        double discount = 0;
     
        protected void Page_Load(object sender, EventArgs e)
        {
            
            HttpContext Current = HttpContext.Current;
            if (Session["New"] != null)
            {
                lbUsername.Text = "Welcome " + (string)(Session["New"]);
                discount = 0.2;
                Current.Items.Add("Username", lbUsername.Text);
            }
            else
            {
                lbUsername.Text = "Welcome Guest";
                Current.Items.Add("Username", lbUsername.Text);
            }
        }

     

        protected void btnCart_Click(object sender, EventArgs e)
        {
            try
            {

                lbError.Visible = false;
                double totalCost = 0;
                double genCost = 0;
                double senCost = 0;
                double tueCost = 0;
                int quantity = 0;
                int quantityGen = 0;
                int quantitySen = 0;
                int quantityTue = 0;
                string movie = "";
             //   string ticketType = "";
                string ticketGen = "";
                string ticketSen = "";
                string ticketTue = "";

                HttpContext Current = HttpContext.Current;

                //TODO - add variable for each type of ticket and check against null
                if (cbGeneral.Checked == true)
                {
                    quantityGen = Convert.ToInt32(tbQuantityGen.Text);
                    genCost += 15 * quantityGen;
                    ticketGen += " General Ticket ";

                }

                if (cbSenior.Checked == true)
                {
                    quantitySen = Convert.ToInt32(tbQuantitySen.Text);
                    senCost += 5 * quantitySen;
                    ticketSen += " Senior and/or Child Ticket ";
                }

                if (cbTuesday.Checked == true)
                {
                    quantityTue = Convert.ToInt32(tbQuantityTue.Text);
                    tueCost += 5 * quantityTue;
                    ticketTue += " Tuesday Special Ticket ";

                }



                if (cbAntman.Checked == true)
                {
                    movie += cbAntman.Text.ToString() + " | ";
                }

                if (cbEQ2.Checked == true)
                {
                    movie += cbEQ2.Text.ToString() + " | ";
                }

                if (cbMammaMia.Checked == true)
                {
                    movie += cbMammaMia.Text.ToString() ;
                }

                discount = (genCost + senCost + tueCost) * discount;
                totalCost = (genCost + senCost + tueCost) - discount;

                Current.Items.Add("GenAmount", genCost);
                Current.Items.Add("SenAmount", senCost);
                Current.Items.Add("TueAmount", tueCost);
                Current.Items.Add("TotalAmount", totalCost);
                Current.Items.Add("Discount", discount);

                Current.Items.Add("Movies", movie);
                Current.Items.Add("GenTicket", ticketGen);
                Current.Items.Add("SenTicket", ticketSen);
                Current.Items.Add("TueTicket", ticketTue);

                 Current.Items.Add("Quantity", quantity);
                 Current.Items.Add("QuantityGen", quantityGen);               
                 Current.Items.Add("QuantitySen", quantitySen);    
                 Current.Items.Add("QuantityTue", quantityTue);
               
                

                Server.Transfer("ViewCart.aspx");
            } catch (Exception)
            {
                lbError.Visible = true;
                
            }
        }
    }
}