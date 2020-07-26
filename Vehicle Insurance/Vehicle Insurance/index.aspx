<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Vehicle_Insurance.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vehicle Insurance</title>


    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="styles.css" />
</head>
<body>

    <div>

        <%--Header Section--%>

        <header>
            <nav class="navbar navbar-expand-lg navbar-dark ">
                <a class="navbar-brand" href="#">Vehicle Insurance</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="modal" data-target="#modalLoginForm">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="modal" data-target="#modalRegisterForm">Signup</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <h1 class="display-2">Vehicle Insurance</h1>
                    <p class="lead">Get your car a service and protection Insurance at affordable rate.</p>
                </div>
            </div>
        </header>

        <form id="form1" method="post" runat="server">

            <!-- login form modal -->
            <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header text-center">
                            <h4 class="modal-title w-100 font-weight-bold">Log in</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        
                        <div class="modal-body mx-3">
                            <div class="md-form mb-5">
              
                                <asp:TextBox ID="login_email" CssClass="form-control validate" TextMode="Email" runat="server" />
                                <label data-error="wrong" data-success="right" for="defaultForm-email">Your email</label>
                                <asp:RegularExpressionValidator ErrorMessage="Enter Valid Email" ValidationGroup="login" ControlToValidate="login_email" CssClass="small text-danger" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                    Display="Dynamic" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="login" CssClass="small text-danger" runat="server" ControlToValidate="login_email"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="*Required" />
                            </div>

                            <div class="md-form mb-4">
                                <asp:TextBox runat="server" TextMode="Password" ID="login_password" CssClass="form-control validate" />
                                <label data-error="wrong" data-success="right" for="defaultForm-pass">Your password</label>
                                <asp:RequiredFieldValidator ErrorMessage="*Required" ValidationGroup="login" ControlToValidate="login_password" runat="server" CssClass="small text-danger" />
                            </div>

                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <asp:Button Text="Login" ID="Login" CssClass="btn btn-warning" ValidationGroup="login" OnClick="Login_Click" runat="server" />
                        </div>
                    </div>
                </div>
            </div>




            <!-- signup form modal -->

            <div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header text-center">
                            <h4 class="modal-title w-100 font-weight-bold">Sign up</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body mx-3">
                            <div class="md-form mb-5">
                                <asp:TextBox ID="signup_name" CssClass="form-control validate" runat="server" />
                                <label data-error="wrong" data-success="right" for="orangeForm-name">Your name</label>
                                <asp:RequiredFieldValidator ErrorMessage="*Required" ValidationGroup="signup" ControlToValidate="signup_name" CssClass="small text-danger" runat="server" />
                            </div>
                            <div class="md-form mb-5">
                                
                                <asp:TextBox ID="signup_email" TextMode="Email" CssClass="form-control validate" runat="server" />
                                <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
                                <asp:RegularExpressionValidator ErrorMessage="Enter Valid Email" ValidationGroup="signup" ControlToValidate="signup_email" CssClass="small text-danger" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                    Display="Dynamic" runat="server" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="small text-danger" ValidationGroup="signup" runat="server" ControlToValidate="signup_email"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="*Required" />
                            </div>

                            <div class="md-form mb-4">
                                <asp:TextBox ID="signup_password" TextMode="Password" CssClass="form-control validate" runat="server" />
                                <label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
                                <asp:RequiredFieldValidator ErrorMessage="*Required" ValidationGroup="signup" ControlToValidate="signup_password" CssClass="small text-danger" runat="server" />
                            </div>

                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <asp:Button Text="Sign Up" ID="SignUp" CssClass="btn btn-primary" ValidationGroup="signup" OnClick="SignUp_Click" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <%-- carosuel  --%>
        <div class="container">
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                
                </ol>
                <div class="carousel-inner ">
                    <div class="carousel-item active ">
                        <img src="images\car banner1.jpg" class="d-block w-100 img-fluid " alt="..."/>
                    </div>
                    <div class="carousel-item">
                        <img src="images\car banner4.jpg" class="d-block w-100 img-fluid" alt="..."/>
                    </div>
                
                </div>
                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

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

</body>
</html>
