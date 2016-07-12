using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Confirm : System.Web.UI.Page
{
    private Reservation reservation;

    protected void Page_Load(object sender, EventArgs e)
    {
        reservation = (Reservation)Session["Reservation"];
        this.DisplayReservation();
    }



    //method to display message back
    private void DisplayReservation()
    {
        lblArrivalDate.Text = reservation.ArrivalDate.ToShortDateString();
        lblDepartureDate.Text = reservation.DepartureDate.ToShortDateString();
        lblNoOfDays.Text = reservation.NoOfDays.ToString();
        lblNoOfPeople.Text = reservation.NoOfPeople.ToString();
        lblBedType.Text = reservation.BedType.ToString();
lblSpecialRequests.Text = reservation.SpecialRequests.ToString();


   
        lblFirstName.Text = reservation.FirstName.ToString();
        lblLastName.Text = reservation.LastName.ToString();
        lblEmail.Text = reservation.Email.ToString();
        lblPhone.Text = reservation.Phone.ToString();
       lblPreferredMethod.Text = reservation.PreferredMethod;
    }//end of DisplayReservation()

    protected void btnConfirm_Click1(object sender, EventArgs e)
    {
        lblMessage.Text = "Thank you for your request.<br />" +
                          "We will get back to you within 24 hours.";

       
    }//end of confirm button


    

    protected void btnModify_Click1(object sender, EventArgs e)
    {

        
        Response.Redirect("Request.aspx");

    }//end of modify click

}