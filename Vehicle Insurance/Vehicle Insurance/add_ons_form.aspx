<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_ons_form.aspx.cs" Inherits="Vehicle_Insurance.add_ons_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Ons</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

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
                    <div class=" col-12 text-center ">
                        <h1>Add Ons</h1>
                        <hr />
                    </div>

                    <div class="col-12">
                        <p>
                            Getting involved in an accident means facing an unplanned financial crunch. 
                    A basic car insurance policy type—the third-party liability insurance—does not provide enough coverage.
                     In fact, even a comprehensive car insurance plan may also miss out on a few crucial liabilities.
                     Add on covers in motor insurance come into the picture when you need extended coverage. 
                     Like the name suggests, add-on covers for car insurance offer additional protection to your insured vehicle, which can help you enhance your basic car insurance policy.
                        </p>
                        <hr />
                    </div>

                    <div class="col-12 text-center">
                        <h2>
                            <label for="add on" class="text-capitalize ">Select an add on</label></h2>
                        <asp:DropDownList runat="server" ID="add_on" CssClass="form-control">
                            <asp:ListItem Text="-Select One-" Value="-Select One-" />
                            <asp:ListItem Text="Engine Protection Cover in Car Insurance" Value="Engine Protection Cover in Car Insurance" />
                            <asp:ListItem Text="Garage Cash Cover" Value="Garage Cash Cover" />
                            <asp:ListItem Text="Outstation Emergency (Accident or Breakdown)" Value="Outstation Emergency (Accident or Breakdown)" />
                            <asp:ListItem Text="Roadside Assistance in Car Insurance " Value="Roadside Assistance in Car Insurance " />
                            <asp:ListItem Text="Car Insurance for Minor Damages" Value="Car Insurance for Minor Damages" />
                        </asp:DropDownList>
                        <asp:CompareValidator ErrorMessage="Select a Value" ValueToCompare="-Select One-" Operator="NotEqual" CssClass="small text-danger" ControlToValidate="add_on" runat="server" />
                        <hr />
                    </div>



                    <div class="col-12  text-center	 ">
                        <h3>Personal Details</h3>
                    </div>
                    <div class="col-12 col-lg-6 col-md-6 ">


                        <div class="form-group ">
                            <label for="name">Full Name</label>
                            <asp:TextBox runat="server" ID="ad_name" CssClass="form-control" />
                            <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_name" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="age">Age</label>
                            <asp:TextBox runat="server" ID="ad_age" CssClass="form-control" MaxLength="100" TextMode="Number" />
                            <asp:RangeValidator ErrorMessage="Age must be between 18 and 100" MinimumValue="18" CssClass="small text-danger" MaximumValue="100" Type="Integer" ControlToValidate="ad_age" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <asp:TextBox runat="server" ID="ad_address" CssClass="form-control" TextMode="MultiLine" />
                            <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_address" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="phone number">Mobile Number</label>
                            <asp:TextBox runat="server" ID="ad_mobileno" CssClass="form-control" TextMode="Number" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="ad_mobileno"  CssClass="small text-danger" ErrorMessage="Enter a valid mobile number"
                            ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="col-12 col-lg-6 col-md-6 ">


                        <div class="form-group ">
                            <label for="City">City</label>
                            <asp:TextBox runat="server" ID="ad_city" CssClass="form-control" />
                            <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_city" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="state">State</label>
                            <asp:TextBox runat="server" ID="ad_state" CssClass="form-control" />
                            <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_state" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="Pincode">Pincode</label>
                            <asp:TextBox runat="server" ID="ad_pincode" CssClass="form-control" TextMode="Number"  />
                            <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_pincode" runat="server" />
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
                            <asp:DropDownList runat="server" ID="ad_vehicle" CssClass="form-control">
                                <asp:ListItem Text="-Select One-" Value="-Select One-" />
                                <asp:ListItem Text="Bike" Value="Bike" />
                                <asp:ListItem Text="Scooter" Value="Scooter" />
                                <asp:ListItem Text="Car" Value="Car" />
                            </asp:DropDownList>
                            <asp:CompareValidator ErrorMessage="Select a Value" ValueToCompare="-Select One-" Operator="NotEqual" CssClass="small text-danger" ControlToValidate="ad_vehicle" runat="server" />
                        </div>
                        <div class="form-group ">
                            <label for="Vehicle company">Vehicle Company</label>
                            <asp:TextBox runat="server" ID="ad_vehicle_company" CssClass="form-control" />
                            <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_vehicle_company" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="vehicle model">Vehicle Model</label>
                            <asp:TextBox runat="server" ID="ad_vehicle_model" CssClass="form-control" />
                            <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_vehicle_model" runat="server" />
                        </div>


                    </div>

                    <div class="col-12 col-lg-6 col-md-6 ">

                        <div class="form-group">
                            <label for="vehicle number">Vehicle Number</label>
                            <asp:TextBox runat="server" ID="ad_vehicle_number" CssClass="form-control" />
                            <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_vehicle_number" runat="server" />
                        </div>
                        <div class="form-group ">
                            <label for="Date of purchase">Date of Purchase</label>
                            <asp:TextBox runat="server" ID="ad_vehicle_dateofpurchase" CssClass="form-control" TextMode="Date" />
                            <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_vehicle_dateofpurchase" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="vehicle color">Vehicle Color</label>
                            <asp:TextBox runat="server" ID="ad_vehicle_color" CssClass="form-control" />
                            <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_vehicle_color" runat="server" />
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
                        <asp:TextBox runat="server" ID="ad_policy_holder_name" CssClass="form-control" />
                        <asp:RequiredFieldValidator ErrorMessage="*Required" CssClass="small text-danger" ControlToValidate="ad_policy_holder_name" runat="server" />
                    </div>
                   


                </div>

                <div class="col-12 col-lg-6 col-md-6 ">
                    <div class="form-group ">
                        <label for="No of years">No of years</label>
                        <asp:DropDownList runat="server" ID="ad_no_of_years" CssClass="form-control">
                            <asp:ListItem Text="-Select One-" Value="-Select One-" />
                            <asp:ListItem Text="1" Value="1" />
                            <asp:ListItem Text="2"  Value="2"/>
                            <asp:ListItem Text="3" Value="3" />
                            <asp:ListItem Text="4" Value="4" />
                            <asp:ListItem Text="5" Value="5" />
                        </asp:DropDownList>
                         <asp:CompareValidator ErrorMessage="Select a Value" ValueToCompare="-Select One-" Operator="NotEqual" CssClass="small text-danger" ControlToValidate="ad_no_of_years" runat="server" />
                    </div>
                    
                </div>
            </div>
            <hr />



            </div>

            <center><asp:Button Text="Submit" CssClass="btn btn-primary btn-lg" ID="submit_policy" OnClick="submit_policy_Click" runat="server" /></center>
            <hr class="pt-2" />

            <%-- Footer section --%>

            <footer class="footer font-small mt-5">


                <!-- Copyright -->
                <div class="footer-copyright text-center py-3 fixed-bottom">
                    © 2020 Copyright:Vehicle Insurance
                </div>
                <!-- Copyright -->

            </footer>
            <!-- Footer -->

        </div>
    </form>
</body>
</html>
