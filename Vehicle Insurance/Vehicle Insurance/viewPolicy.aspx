<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewPolicy.aspx.cs" Inherits="Vehicle_Insurance.viewPolicy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Policy</title>

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
                <nav class="navbar navbar-expand-lg navbar-dark fixed_top">
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

            <asp:GridView runat="server" CssClass="table table-bordered table-responsive text-center " AutoGenerateColumns="False" DataKeyNames="policy_no" DataSourceID="SqlDataSource1">

                <Columns >
                    <asp:BoundField DataField="policy_no" HeaderText="policy_no" ReadOnly="True" InsertVisible="False" SortExpression="policy_no"></asp:BoundField>
                    <asp:BoundField DataField="policy_type" HeaderText="policy_type" SortExpression="policy_type"></asp:BoundField>
                    <asp:BoundField DataField="vehicle_type" HeaderText="vehicle_type" SortExpression="vehicle_type"></asp:BoundField>
                    <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name"></asp:BoundField>
                    <asp:BoundField DataField="age" HeaderText="age" SortExpression="age"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city"></asp:BoundField>
                    <asp:BoundField DataField="state" HeaderText="state" SortExpression="state"></asp:BoundField>
                    <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode"></asp:BoundField>
                    <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no"></asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                    <asp:BoundField DataField="vehicle_number" HeaderText="vehicle_number" SortExpression="vehicle_number"></asp:BoundField>
                    <asp:BoundField DataField="vehicle_company" HeaderText="vehicle_company" SortExpression="vehicle_company"></asp:BoundField>
                    <asp:BoundField DataField="vehicle_model" HeaderText="vehicle_model" SortExpression="vehicle_model"></asp:BoundField>
                    <asp:BoundField DataField="vehicel_purchasedate" HeaderText="vehicel_purchasedate" SortExpression="vehicel_purchasedate" DataFormatString="{0:MM/dd/yyyy}" ></asp:BoundField>
                    <asp:BoundField DataField="vehicle_color" HeaderText="vehicle_color" SortExpression="vehicle_color"></asp:BoundField>
                    <asp:BoundField DataField="policy_insured_name" HeaderText="policy_insured_name" SortExpression="policy_insured_name"></asp:BoundField>
                    <asp:BoundField DataField="insurance_company" HeaderText="insurance_company" SortExpression="insurance_company"></asp:BoundField>
                    <asp:BoundField DataField="policy_startdate" HeaderText="policy_startdate" SortExpression="policy_startdate" DataFormatString="{0:MM/dd/yyyy}" ></asp:BoundField>
                    <asp:BoundField DataField="policy_endate" HeaderText="policy_endate" SortExpression="policy_endate" DataFormatString="{0:MM/dd/yyyy}" ></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1"  ConnectionString='<%$ ConnectionStrings:vehicle_insuranceConnectionString %>' DeleteCommand="DELETE FROM [policy_details] WHERE [policy_no] = @policy_no" InsertCommand="INSERT INTO [policy_details] ([policy_type], [vehicle_type], [full_name], [age], [address], [city], [state], [pincode], [mobile_no], [email], [vehicle_number], [vehicle_company], [vehicle_model], [vehicel_purchasedate], [vehicle_color], [policy_insured_name], [insurance_company], [policy_startdate], [policy_endate]) VALUES (@policy_type, @vehicle_type, @full_name, @age, @address, @city, @state, @pincode, @mobile_no, @email, @vehicle_number, @vehicle_company, @vehicle_model, @vehicel_purchasedate, @vehicle_color, @policy_insured_name, @insurance_company, @policy_startdate, @policy_endate)" SelectCommand="SELECT * FROM [policy_details] WHERE ([email] = @email)" UpdateCommand="UPDATE [policy_details] SET [policy_type] = @policy_type, [vehicle_type] = @vehicle_type, [full_name] = @full_name, [age] = @age, [address] = @address, [city] = @city, [state] = @state, [pincode] = @pincode, [mobile_no] = @mobile_no, [email] = @email, [vehicle_number] = @vehicle_number, [vehicle_company] = @vehicle_company, [vehicle_model] = @vehicle_model, [vehicel_purchasedate] = @vehicel_purchasedate, [vehicle_color] = @vehicle_color, [policy_insured_name] = @policy_insured_name, [insurance_company] = @insurance_company, [policy_startdate] = @policy_startdate, [policy_endate] = @policy_endate WHERE [policy_no] = @policy_no">
                <DeleteParameters>
                    <asp:Parameter Name="policy_no" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters >
                    <asp:Parameter Name="policy_type" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vehicle_type" Type="String"></asp:Parameter>
                    <asp:Parameter Name="full_name"  Type="String"></asp:Parameter>
                    <asp:Parameter Name="age" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="city" Type="String"></asp:Parameter>
                    <asp:Parameter Name="state" Type="String"></asp:Parameter>
                    <asp:Parameter Name="pincode" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="mobile_no" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vehicle_number" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vehicle_company" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vehicle_model" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="vehicel_purchasedate"></asp:Parameter>
                    <asp:Parameter Name="vehicle_color" Type="String"></asp:Parameter>
                    <asp:Parameter Name="policy_insured_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="insurance_company" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="policy_startdate" Type="DateTime"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="policy_endate" Type="DateTime"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter SessionField="email" Name="email" Type="String"></asp:SessionParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="policy_type" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vehicle_type" Type="String"></asp:Parameter>
                    <asp:Parameter Name="full_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="age" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="city" Type="String"></asp:Parameter>
                    <asp:Parameter Name="state" Type="String"></asp:Parameter>
                    <asp:Parameter Name="pincode" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="mobile_no" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vehicle_number" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vehicle_company" Type="String"></asp:Parameter>
                    <asp:Parameter Name="vehicle_model" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="vehicel_purchasedate"></asp:Parameter>
                    <asp:Parameter Name="vehicle_color" Type="String"></asp:Parameter>
                    <asp:Parameter Name="policy_insured_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="insurance_company" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="policy_startdate" Type="DateTime"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="policy_endate" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="policy_no" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>


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
