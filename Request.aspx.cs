using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Request : System.Web.UI.Page
{
    private Reservation reservation = new Reservation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Reservation"] != null)
            {
                reservation = (Reservation)Session["Reservation"];
                this.DisplayReservation();
            }
            else
            {
                txtArrivalDate.Text = DateTime.Today.ToShortDateString();
                rdoKing.Checked = true;
            }
        }
    }


    private void DisplayReservation()
    {
        txtArrivalDate.Text = reservation.ArrivalDate.ToShortDateString();
        txtDepartureDate.Text = reservation.DepartureDate.ToShortDateString();
        
        ddlNoOfPeople.SelectedValue = reservation.NoOfPeople.ToString();
        
        if (reservation.BedType == "King")
            rdoKing.Checked = true;
        else if (reservation.BedType == "Two Queens")
            rdoDouble.Checked = true;
        else
            rdoSingle.Checked = true;

        txtSpecialRequests.Text = reservation.SpecialRequests;
        txtFirstName.Text = reservation.FirstName;
        txtLastName.Text = reservation.LastName;
        txtEmail.Text = reservation.Email;
        txtPhone.Text = reservation.Phone;
        ddlPreferredMethod.SelectedValue = reservation.PreferredMethod;
    }


    protected void btnClear_Click(object sender, EventArgs e)
    {
    
        txtArrivalDate.Text = DateTime.Today.ToShortDateString();      
        txtDepartureDate.Text ="";
        ddlNoOfPeople.SelectedIndex = -1;
        rdoKing.Checked = true;
        rdoDouble.Checked = false;
        rdoSingle.Checked = false;
        txtSpecialRequests.Text = "";
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        ddlPreferredMethod.SelectedIndex = 0;
        lblMessage.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       if(IsValid){
            reservation.ArrivalDate = Convert.ToDateTime(txtArrivalDate.Text);
            reservation.DepartureDate =  Convert.ToDateTime(txtDepartureDate.Text);
            reservation.NoOfPeople = Convert.ToInt32(ddlNoOfPeople.SelectedValue);
            reservation.NoOfDays = (Convert.ToDateTime(txtDepartureDate.Text).Subtract( Convert.ToDateTime(txtArrivalDate.Text))).TotalDays.ToString();

            if (rdoKing.Checked)
                reservation.BedType = "King";
            else if  (rdoDouble.Checked)
                reservation.BedType = "Two Queen";
            else if (rdoSingle.Checked)
                reservation.BedType = "One Queen";


            reservation.SpecialRequests = txtSpecialRequests.Text;
            reservation.FirstName = txtFirstName.Text;
            reservation.LastName = txtLastName.Text;
            reservation.Phone = txtPhone.Text;
            reservation.Email = txtEmail.Text;
           

            Session["Reservation"] = reservation;
            Response.Redirect("Confirm.aspx");

        }//end of isvald
    }
}