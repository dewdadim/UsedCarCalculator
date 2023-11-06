using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuyUsedCar
{
    public partial class result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String[] carName = { "Proton X50", "Honda Civic", "Mercedes-AMG A45" };

            String firstName = Application["firstName"].ToString();
            String lastName = Application["lastName"].ToString();
            String email = Application["email"].ToString();
            String phoneNumber = Application["phoneNumber"].ToString();
            String hometown = Application["hometown"].ToString();
            String carModelIndex = Application["carModel"].ToString();
            String carYear = Application["carYear"].ToString();
            String carTransmission = Application["carTransmission"].ToString();

            if 
                (firstName != "" &&
                lastName != "" &&
                email != "" &&
                phoneNumber != "" &&
                hometown != "" &&
                carModelIndex != null &&
                carYear != null &&
                carTransmission != null)
            {

                double carPriceFinal = CalculateCarPrice(Int32.Parse(carModelIndex), Int32.Parse(carYear), carTransmission);

                //Response.Write(firstName + lastName + email + phoneNumber + hometown + carName[Int32.Parse(carModelIndex)] + carYear.ToString() + carTransmission + carPriceFinal);

                Label6.Text = "Hey " + firstName + " " + lastName + ", here is the car price!";

                Label1.Text = carName[Int32.Parse(carModelIndex)].ToString();
                Label2.Text = carYear.ToString();
                Label3.Text = carTransmission.ToString();
                Label4.Text = Math.Round(carPriceFinal, MidpointRounding.ToEven).ToString();


                Image1.ImageUrl = "~/Image/" + carModelIndex.ToString() + ".png";
                Label5.Text = Math.Round(carPriceFinal, MidpointRounding.ToEven).ToString();

            }
            
            else
            {
                Response.Redirect("index.aspx");
            }
            
        }

        private double CalculateCarPrice(int carModelIndex, int carYear, String carTransmission)
        {

            int[] carPriceList = { 95000, 96000, 398000 };
            double carPriceFinal=0;

            if(carYear == 2021)
            {
                carPriceFinal = carPriceList[carModelIndex] - (carPriceList[carModelIndex] * 0.01);
            } 
            else if(carYear == 2020)
            {
                carPriceFinal = carPriceList[carModelIndex] - (carPriceList[carModelIndex] * 0.02);
            }
            else if(carYear == 2019)
            {
                carPriceFinal = carPriceList[carModelIndex] - (carPriceList[carModelIndex] * 0.04);
            }

            if(carTransmission == "Manual")
            {
                carPriceFinal = carPriceFinal - (carPriceFinal * 0.08);
            }

            return carPriceFinal;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}