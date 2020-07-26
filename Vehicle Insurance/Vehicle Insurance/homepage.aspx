<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Vehicle_Insurance.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" href="styles.css" />
</head>
<body id="homepage">
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
                                <h5 class="nav nav-link">Welcome <%:Session["username"] %></h5>
                            </li>
                            <li class="nav-item ">
                                <asp:Button Text="Logout" ID="Logout" class="nav-link btn" OnClick="Logout_Click" runat="server" />
                            </li>

                        </ul>
                    </div>
                </nav>
                

            </header>

            <section>
                <div class="container">
                    <h1 class="text-center text-capitalize pt-5"> Vehicles Included</h1>
                    <hr class="mx-auto pt-5 w-25 " />

                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-12">
                            <img src="images\bike.png"  class="img-fluid "/>
                        </div>

                        <div class="col-lg-4 col-md-4 col-12">
                            <img src="images\scooter.png"  class="img-fluid  "/>
                        </div>

                        <div class="col-lg-4 col-md-4 col-12">
                            <img src="images\car.jpg"  class="img-fluid  "/>
                        </div>
                    </div>

                    <h1 class="text-center text-capitalize pt-5">Select Insurance Type</h1>
                    <hr class="mx-auto pt-5 w-25 " />

                    <div class="row text-center">
                        <div class=" col-xl-4 col-lg-4 col-md-4 col-12">
                            <div class="card" >
                                <div class="card-body">
                                    <h5 class="card-title">Third-Party Car Insurance Policy</h5>
                                    <p class="card-text">Only covers you against third-party damages and losses.No personal loss covered.</p>
                                    <a href="third_party_insurance_form.aspx" class="btn btn-primary">Select Policy</a>
                                </div>
                            </div>
                        </div>

                        <div class=" col-xl-4 col-lg-4 col-md-4 col-12">
                            <div class="card" >
                                <div class="card-body">
                                    <h5 class="card-title">Comprehensive Insurance Policy</h5>
                                    <p class="card-text">Covers third-party damages and losses as well as for your own personal damages and losses.</p>
                                    <a href="comprehensive_insurance_form.aspx" class="btn btn-primary">Select Policy</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-4 col-md-4 col-12">
                            <div class="card " >
                                <div class="card-body">
                                    <h5 class="card-title">Add-on Insurance Cover for the Vehicle</h5>
                                    <p class="card-text">Few add-ons for optimum protection for your car.</p>
                                    <a href="add_ons_form.aspx" class="btn btn-primary">Select Policy</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <h1 class="text-center text-capitalize pt-5">Your Policies</h1>
                    <hr class="mx-auto pt-5 w-25 " />
                    
                    <center><a href="viewPolicy.aspx"><button type="button"  class=" btn btn-primary" >View your policies </button></a></center>
                    <br />
                    <br />
                    <hr class="mx-auto pt-5 w-25 " />


                </div>
            </section>


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
