<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Chapter 8: Reservations</title>
    <link href="Styles/Main.css" rel="stylesheet"/>
    <link href="Styles/Request.css" rel="stylesheet" />
</head>
<body>
    <header>
        <h1>Royal Inns and Suites</h1>
        <h2>Where you&rsquo;re always treated like royalty</h2>
    </header>
    <section>
        <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtArrivalDate">
            <h1>Reservation Request</h1>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="* means that the field is required" CssClass="validator" />
            <h2>Request data</h2>
            <label class="label">Arrival date</label>
            <asp:TextBox ID="txtArrivalDate" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvArrivalDate" runat="server" 
                    ControlToValidate="txtArrivalDate" text="*" CssClass="validator" Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvArrivalDate" runat="server" Text="Must be a valid date" CssClass="validator"
                    Display="Dynamic" ControlToValidate="txtArrivalDate" Type="Date" Operator="DataTypeCheck">
                </asp:CompareValidator><br />
            <label class="label">Departure date</label>
            <asp:TextBox ID="txtDepartureDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDepartureDate" runat="server" 
                    ControlToValidate="txtDepartureDate" text="*" CssClass="validator" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvDepartureDate" runat="server" Display="Dynamic" text="Must be after arrival date" CssClass="validator"
                    ControlToValidate="txtDepartureDate" Type="Date" Operator="GreaterThan" ControlToCompare="txtArrivalDate">
                </asp:CompareValidator><br />

            <label class="label">Number of people</label>
            <asp:DropDownList ID="ddlNoOfPeople" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList><br />          

            <label class="label">Bed type</label>
            <asp:RadioButton ID="rdoKing" runat="server" Text="King" GroupName="Bed" />
            <asp:RadioButton ID="rdoDouble" runat="server" Text="Two Queens" GroupName="Bed" />
            <asp:RadioButton ID="rdoSingle" runat="server" Text="One Queen" GroupName="Bed" /><br />

            <h2>Special requests</h2>
            <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="MultiLine"></asp:TextBox><br />
       
            <h2>Contact information</h2>
            <label class="label">First name</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                    ControlToValidate="txtFirstName" text="*" CssClass="validator" Display="Dynamic">
                </asp:RequiredFieldValidator><br />
            <label class="label">Last name</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                    ControlToValidate="txtLastName" text="*" CssClass="validator" Display="Dynamic">
                </asp:RequiredFieldValidator><br />
            <label class="label">Email address</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ControlToValidate="txtEmail" text="*" CssClass="validator" Display="Dynamic">
                </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" Text="Must be valid email address" 
                ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="validator" ></asp:RegularExpressionValidator><br />
            <label class="label">Telephone number</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                    ControlToValidate="txtPhone" text="*" CssClass="validator" Display="Dynamic">
                </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPhone" runat="server" Display="Dynamic" Text="Use this format: 999-999-9999"
                 ControlToValidate="txtPhone" CssClass="validator" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>    
            <br />
            <label class="label">Preferred method</label>
            <asp:DropDownList ID="ddlPreferredMethod" runat="server">
                <asp:ListItem>Email</asp:ListItem>
                <asp:ListItem>Telephone</asp:ListItem>
            </asp:DropDownList><br />

            <label class="label">&nbsp;</label>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" CssClass="button" />&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="button" CausesValidation="False" OnClick="btnClear_Click" /><br />
            <p ID="message">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </p>
    </form>
    </section>
    <footer>
        <p>&copy; 2015, Royal Inns and Suites</p>
    </footer>
</body>
</html>
