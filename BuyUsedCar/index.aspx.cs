using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuyUsedCar
{
    public partial class index : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Application["firstName"]= TextBox1.Text;
            Application["lastName"] = TextBox2.Text;
            Application["email"] = TextBox3.Text;
            Application["phoneNumber"] = TextBox4.Text;
            Application["hometown"] = TextBox5.Text;
            Application["carModel"] = DropDownList1.SelectedValue;
            Application["carYear"] = DropDownList2.SelectedValue;
            Application["carTransmission"] = DropDownList3.SelectedValue;

            Response.Redirect("result.aspx");
        }
    }
}