<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="third party insurance form.aspx.cs" Inherits="Vehicle_Insurance.third_party_insurance_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Third Party Insurance</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>



    <form runat="server">

        <header>
            <nav class="navbar navbar-expand-lg navbar-dark ">
                <a class="navbar-brand" href="#">Vehicle Insurance</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item ">
                            <a href="homepage.aspx" class="nav-link btn">Back</a>
                        </li>

                    </ul>
                </div>
            </nav>
        </header>

        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h1>Third Insurance Policy</h1>
                    <hr />
                </div>
                <div class="col-12  text-center	 ">
                    <h3>Personal Details</h3>
                </div>
                <div class="col-12 col-lg-6 col-md-6 ">


                    <div class="form-group ">
                        <label for="name">Full Name</label>
                        <asp:TextBox runat="server" ID="tp_name" CssClass="form-control" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="tp_name" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="age">Age</label>
                        <asp:TextBox runat="server" ID="tp_age" CssClass="form-control"  TextMode="Number" />
                        <asp:RangeValidator ErrorMessage="Age must be between 18 And 100" CssClass="small text-danger" ControlToValidate="tp_age"  MinimumValue="18" MaximumValue="100" Type="Integer" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <asp:TextBox runat="server" ID="tp_address" CssClass="form-control" TextMode="MultiLine" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="tp_address" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="phone number">Mobile Number</label>
                        <asp:TextBox runat="server" ID="tp_mobileno" CssClass="form-control" TextMode="Number" MaxLength="10" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="tp_mobileno"  CssClass="small text-danger" ErrorMessage="Enter a valid mobile number"
                            ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="col-12 col-lg-6 col-md-6 ">


                    <div class="form-group ">
                        <label for="City">City</label>
                        <asp:TextBox runat="server" ID="tp_city" CssClass="form-control" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="tp_city" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="state">State</label>
                        <asp:TextBox runat="server" ID="tp_state" CssClass="form-control" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="tp_state" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="Pincode">Pincode</label>
                        <asp:TextBox runat="server" ID="tp_pincode" CssClass="form-control" TextMode="Number" MaxLength="6" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger"  ControlToValidate="tp_pincode" runat="server" />
                    </div>

                    <div class="form-group">
                        <label class="pt-4" for="email">Email</label>
                        <h4 class="text-secondary"><%:Session["email"]%></h4>
                    </div>



                </div>

            </div>
            <hr />

            <div class="row">
                <div class="col-12  text-center	 ">
                    <h3>Vehicle Details</h3>
                </div>
                <div class="col-12 col-lg-6 col-md-6 ">

                    <div class="form-group ">
                        <label for="Vehicle Type">Vehicle Type</label>
                        <asp:DropDownList runat="server" ID="tp_vehicle" CssClass="form-control">
                            <asp:ListItem Text="-Select One-" Value="-Select One-" />
                            <asp:ListItem Text="Bike" Value="Bike" />
                            <asp:ListItem Text="Scooter" Value="Scooter" />
                            <asp:ListItem Text="Car" Value="Car" />
                        </asp:DropDownList>
                        <asp:CompareValidator ErrorMessage="Select a Value" ValueToCompare="-Select One-" Operator="NotEqual" CssClass="small text-danger" ControlToValidate="tp_vehicle" runat="server" />
                    </div>
                    <div class="form-group ">
                        <label for="Vehicle company">Vehicle Company</label>
                        <asp:TextBox runat="server" ID="tp_vehicle_company" CssClass="form-control" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger"  ControlToValidate="tp_vehicle_company" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="vehicle model">Vehicle Model</label>
                        <asp:TextBox runat="server" ID="tp_vehicle_model" CssClass="form-control" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger"  ControlToValidate="tp_vehicle_model" runat="server" />
                    </div>


                </div>

                <div class="col-12 col-lg-6 col-md-6 ">

                    <div class="form-group">
                        <label for="vehicle number">Vehicle Number</label>
                        <asp:TextBox runat="server" ID="tp_vehicle_number" CssClass="form-control" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger"  ControlToValidate="tp_vehicle_number" runat="server" />
                    </div>
                    <div class="form-group ">
                        <label for="Date of purchase">Date of Purchase</label>
                        <asp:TextBox runat="server" ID="tp_vehicle_dateofpurchase" CssClass="form-control" TextMode="Date" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger"  ControlToValidate="tp_vehicle_dateofpurchase" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="vehicle color">Vehicle Color</label>
                        <asp:TextBox runat="server" ID="tp_vehicle_color" CssClass="form-control" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger"  ControlToValidate="tp_vehicle_color" runat="server" />
                    </div>


                </div>
            </div>
            <hr />

            <div class="row">
                <div class="col-12  text-center	 ">
                    <h3>Policy Details</h3>
                </div>
                <div class="col-12 col-lg-6 col-md-6 ">


                    <div class="form-group ">
                        <label for="policy holder name">Insured's Name</label>
                        <asp:TextBox runat="server" ID="tp_policy_holder_name" CssClass="form-control" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger"  ControlToValidate="tp_policy_holder_name" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="Company">Insurance Company</label>
                        <asp:DropDownList runat="server" ID="tp_insurance_company" CssClass="form-control">
                            <asp:ListItem Text="-Select One-" Value="-Select One-" />
                            <asp:ListItem Text="Bajaj Allianz General Insurance Co. Ltd" Value="Bajaj Allianz General Insurance Co. Ltd" />
                            <asp:ListItem Text="Bharti AXA General Insurance Co. Ltd" Value="Bharti AXA General Insurance Co. Ltd" />
                            <asp:ListItem Text="HDFC ERGO General Insurance Co.Ltd." Value="HDFC ERGO General Insurance Co.Ltd." />
                            <asp:ListItem Text="ICICI Lombard General Insurance Co. Ltd." Value="ICICI Lombard General Insurance Co. Ltd." />
                            <asp:ListItem Text="Liberty General Insurance Ltd." Value="Liberty General Insurance Ltd." />
                            <asp:ListItem Text="National Insurance Co. Ltd." Value="National Insurance Co. Ltd." />
                        </asp:DropDownList>
                        <asp:CompareValidator ErrorMessage="Select a Value" ValueToCompare="-Select One-" Operator="NotEqual" CssClass="small text-danger" ControlToValidate="tp_insurance_company" runat="server" />
                    </div>


                </div>

                <div class="col-12 col-lg-6 col-md-6 ">

                    <div class="form-group ">
                        <label for="No of years">No of years</label>
                        <asp:DropDownList runat="server" ID="tp_no_of_years" CssClass="form-control">
                            <asp:ListItem Text="-Select One-" Value="-Select One-" />
                            <asp:ListItem Text="1" Value="1" />
                            <asp:ListItem Text="2" Value="2" />
                            <asp:ListItem Text="3" Value="3" />
                            <asp:ListItem Text="4" Value="4" />
                            <asp:ListItem Text="5" Value="5" />
                        </asp:DropDownList>
                         <asp:CompareValidator ErrorMessage="Select a Value" ValueToCompare="-Select One-" Operator="NotEqual" CssClass="small text-danger" ControlToValidate="tp_no_of_years" runat="server" />
                    </div>
                </div>
            </div>
            <hr />

        </div>
        <center><asp:Button Text="Submit" CssClass="btn btn-primary btn-lg" ID="third_party_form" OnClick="third_party_form_Click1"  runat="server" /></center>
        <hr class="pt-2" />
    </form>


    <%-- Footer section --%>

    <footer class="footer font-small mt-5">


        <!-- Copyright -->
        <div class="footer-copyright text-center py-3 fixed-bottom">
            © 2020 Copyright:Vehicle Insurance
        </div>
        <!-- Copyright -->

    </footer>
    <!-- Footer -->


</body>
</html>
