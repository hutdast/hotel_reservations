<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirm.aspx.cs" Inherits="Confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Chapter 8: Reservations</title>
    <link href="Styles/Main.css" rel="stylesheet" />
    <link href="Styles/Confirm.css" rel="stylesheet" />
    <style type="text/css">
        #message {
            height: 37px;
            width: 545px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Royal Inns and Suites</h1>
        <h2>Where you&rsquo;re always treated like royalty</h2>
    </header>
    <section>
        <form id="form1" runat="server">
            <h1>Request Confirmation</h1>
            <h2>Please confirm your reservation request</h2>
            <label>First name</label>
            <asp:Label ID="lblFirstName" runat="server" CssClass="entry"></asp:Label><br />
            <label>Last name</label>
            <asp:Label ID="lblLastName" runat="server" CssClass="entry"></asp:Label><br />
            <label>Email</label>
            <asp:Label ID="lblEmail" runat="server" CssClass="entry"></asp:Label><br />
            <label>Phone</label>
            <asp:Label ID="lblPhone" runat="server"></asp:Label><br />
            <label>Preferred method</label>
            <asp:Label ID="lblPreferredMethod" runat="server"></asp:Label><br />
            <h2>Request data</h2>
            <label>Arrival date:</label>
            <asp:Label ID="lblArrivalDate" runat="server"></asp:Label><br />
            <label>Departure date</label>
            <asp:Label ID="lblDepartureDate" runat="server"></asp:Label><br />
            <label>No. of days</label>
            <asp:Label ID="lblNoOfDays" runat="server"></asp:Label><br />
            <label>No. of people</label>
            <asp:Label ID="lblNoOfPeople" runat="server"></asp:Label><br />
            <label>Bed type</label>
            <asp:Label ID="lblBedType" runat="server"></asp:Label><br />
            <label>Special requests</label>
            <asp:Label ID="lblSpecialRequests" runat="server"></asp:Label><br />
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm Request" CssClass="button" OnClick="btnConfirm_Click1" />
            <asp:Button ID="btnModify" runat="server" Text="Modify Request" CssClass="button" OnClick="btnModify_Click1" /><br />
            <p id="message">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
        </form>    
    </section>
    <footer>
        <p>&copy; 2015, Royal Inns and Suites</p>
    </footer>
</body>
</html>