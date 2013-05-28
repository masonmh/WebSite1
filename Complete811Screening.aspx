<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Complete811Screening.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Step 3 Complete Screening Application Q 8 -11</h2>
    <p>
        <asp:Label ID="lblInitialQ0" runat="server" 
            Text="Current Screening Form"></asp:Label>
        </p>
    <p>
      <asp:DropDownList ID="ddlSelectApplicant" runat="server" AutoPostBack="True" 
            DataSourceID="sqlDSddlApplicant" DataTextField="CombinedName"
            DataValueField="ScreeningID" Height="18px" Width="415px">
        </asp:DropDownList>
        <asp:Button ID="btnRefresh" runat="server" 
            PostBackUrl="~/Complete811Screening.aspx" Text="Refresh Page" />
        <asp:SqlDataSource ID="sqlDSddlApplicant" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                     
            
            SelectCommand="select lastname, grossSalary, applicant.screeningID, lastname+' '+CAST(applicant.screeningID as VarChar(255))+' '+CAST(screening.screeningdate as VarChar(10)) as CombinedName from applicant, screening where grossSalary = (select max(grossSalary) from applicant as f where f.screeningID = applicant.screeningID) AND applicant.screeningid = screening.screeningid AND (screening.ScreeningStatus = '4' OR screening.ScreeningStatus IS NULL)">
        </asp:SqlDataSource>
    </p>
       <asp:Panel ID="Panel1" runat="server">
   
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ScreeningID" DataSourceID="SqlDataSourceScreening" 
    AllowSorting="True" CellPadding="3" GridLines="None" BackColor="White" 
        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1">
            <Columns>
                <asp:BoundField DataField="ScreeningID" HeaderText="ScreeningID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ScreeningID" 
                    Visible="False" />
                <asp:CheckBoxField DataField="CriminalConviction" 
                    HeaderText="CriminalConviction" SortExpression="CriminalConviction" 
                    Visible="False" />
                <asp:BoundField DataField="CriminalConvictionReason" HeaderText="CriminalConvictionReason" 
                    SortExpression="CriminalConvictionReason" Visible="False" />
                <asp:CheckBoxField DataField="TenantIsEmployee" HeaderText="TenantIsEmployee" 
                    SortExpression="TenantIsEmployee" Visible="False" />
                <asp:BoundField DataField="DateOfDesiredMoveIn" 
                    HeaderText="DateOfDesiredMoveIn" SortExpression="DateOfDesiredMoveIn" />
                <asp:BoundField DataField="NumOfOccupants" HeaderText="NumOfOccupants" 
                    SortExpression="NumOfOccupants" />
                <asp:BoundField DataField="RequiredNumBed" HeaderText="RequiredNumBed" 
                    SortExpression="RequiredNumBed" />
                <asp:BoundField DataField="RequiredNumBath" HeaderText="RequiredNumBath" 
                    SortExpression="RequiredNumBath" />
                <asp:CheckBoxField DataField="RequiredWD" HeaderText="RequiredWD" 
                    SortExpression="RequiredWD" />
                <asp:BoundField DataField="TargetRent" HeaderText="TargetRent" 
                    SortExpression="TargetRent" />
                <asp:BoundField DataField="OtherDesiredFeatures" 
                    HeaderText="OtherDesiredFeatures" SortExpression="OtherDesiredFeatures" />
                <asp:CheckBoxField DataField="BrokenLease" HeaderText="BrokenLease" 
                    SortExpression="BrokenLease" />
                <asp:CheckBoxField DataField="nonHumanOccupants" HeaderText="nonHumanOccupants" 
                    SortExpression="nonHumanOccupants" Visible="False" />
                <asp:BoundField DataField="numnonrelated" HeaderText="numnonrelated" 
                    SortExpression="numnonrelated" Visible="False" />
                <asp:CheckBoxField DataField="spouseIncluded" HeaderText="spouseIncluded" 
                    SortExpression="spouseIncluded" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceScreening" runat="server" 
    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
    SelectCommand="SELECT [ScreeningID], [CriminalConviction], [CriminalConvictionReason], [TenantIsEmployee], [DateOfDesiredMoveIn], [NumOfOccupants], [RequiredNumBed], [RequiredNumBath], [RequiredWD], [TargetRent], [OtherDesiredFeatures], [BrokenLease], [nonHumanOccupants], [numnonrelated], [spouseIncluded] FROM [Screening] WHERE ([ScreeningID] = @ScreeningID)">
            <SelectParameters>
                <asp:SessionParameter Name="ScreeningID" SessionField="newscreeningid" 
                    Type="Int64" />
            </SelectParameters>
</asp:SqlDataSource>

    <p>
        <asp:Label ID="Label1" runat="server" 
            Text="All Applicants on Screening Form"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ApplicantID" DataSourceID="SqlDataSource1" BackColor="White" 
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
            CellSpacing="1" GridLines="None" Font-Bold="False">
            <Columns>
                <asp:BoundField DataField="ApplicantID" HeaderText="ApplicantID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ApplicantID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="GrossSalary" HeaderText="GrossSalary" 
                    SortExpression="GrossSalary" />
                <asp:CheckBoxField DataField="FullTime" HeaderText="FullTime" 
                    SortExpression="FullTime" />
                <asp:BoundField DataField="OtherIncome" HeaderText="OtherIncome" 
                    SortExpression="OtherIncome" />
                <asp:BoundField DataField="OtherIncomeType" HeaderText="OtherIncomeType" 
                    SortExpression="OtherIncomeType" />
                <asp:BoundField DataField="SSBIncome" HeaderText="SSBIncome" 
                    SortExpression="SSBIncome" />
                <asp:BoundField DataField="SSIIncome" HeaderText="SSIIncome" 
                    SortExpression="SSIIncome" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="CreditScore" HeaderText="CreditScore" SortExpression="CreditScore" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            
            SelectCommand="SELECT [ApplicantID], [FirstName], [LastName], [GrossSalary], [FullTime], [OtherIncome], [OtherIncomeType], [SSBIncome], [SSIIncome], [DOB], [CreditScore] FROM [Applicant] WHERE ([screeningid] = @screeningid) Order By GrossSalary Desc">
            <SelectParameters>
                <asp:SessionParameter Name="screeningid" SessionField="newscreeningid" 
                    Type="Int64" />
            </SelectParameters>
         
        </asp:SqlDataSource>
    </p>
    <p>
        Selected Property:</p>
         <div style="overflow:auto;width:2000px">
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="PropertyID" DataSourceID="SqlDataSourcePropApart" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" 
            BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="PropertyID" />
                <asp:BoundField DataField="CompleteAddress" HeaderText="CompleteAddress" 
                    SortExpression="CompleteAddress" />
                <asp:BoundField DataField="StreetAddress" HeaderText="StreetAddress" 
                    SortExpression="StreetAddress" />
                <asp:BoundField DataField="AptNum" HeaderText="AptNum" 
                    SortExpression="AptNum" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                <asp:BoundField DataField="HousingType" HeaderText="HousingType" 
                    SortExpression="HousingType" />
                <asp:BoundField DataField="NumBedrooms" HeaderText="NumBedrooms" 
                    SortExpression="NumBedrooms" />
                <asp:BoundField DataField="NumBaths" HeaderText="NumBaths" 
                    SortExpression="NumBaths" />
                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                <asp:CheckBoxField DataField="Garage" HeaderText="Garage" 
                    SortExpression="Garage" />
                <asp:BoundField DataField="FloorLocation" HeaderText="FloorLocation" 
                    SortExpression="FloorLocation" />
                <asp:BoundField DataField="BaseRent" HeaderText="BaseRent" 
                    SortExpression="BaseRent" />
                <asp:BoundField DataField="AccessCredit" HeaderText="AccessCredit" 
                    SortExpression="AccessCredit" />
                <asp:BoundField DataField="BaseUtilities" HeaderText="BaseUtilities" 
                    SortExpression="BaseUtilities" />
                <asp:BoundField DataField="WashDryCost" HeaderText="WashDryCost" 
                    SortExpression="WashDryCost" />
                <asp:CheckBoxField DataField="GasInclude" HeaderText="GasInclude" 
                    SortExpression="GasInclude" />
                <asp:CheckBoxField DataField="WaterInclude" HeaderText="WaterInclude" 
                    SortExpression="WaterInclude" />
                <asp:CheckBoxField DataField="ElectricInclude" HeaderText="ElectricInclude" 
                    SortExpression="ElectricInclude" />
                <asp:BoundField DataField="DatePurchase" HeaderText="DatePurchase" 
                    SortExpression="DatePurchase" />
                <asp:BoundField DataField="WeeklyIncomeMultiplier" 
                    HeaderText="WeeklyIncomeMultiplier" 
                    SortExpression="WeeklyIncomeMultiplier" />
                <asp:BoundField DataField="SchoolDistrict" HeaderText="SchoolDistrict" 
                    SortExpression="SchoolDistrict" />
                <asp:BoundField DataField="OtherFeatures" HeaderText="OtherFeatures" 
                    SortExpression="OtherFeatures" />
                <asp:CheckBoxField DataField="EligibleForEmpDiscount" 
                    HeaderText="EligibleForEmpDiscount" 
                    SortExpression="EligibleForEmpDiscount" />
                <asp:BoundField DataField="YardiPropertyCode" HeaderText="YardiPropertyCode" 
                    SortExpression="YardiPropertyCode" />
                <asp:BoundField DataField="LLCName" HeaderText="LLCName" 
                    SortExpression="LLCName" />
                <asp:CheckBoxField DataField="WasherDryerHookups" 
                    HeaderText="WasherDryerHookups" SortExpression="WasherDryerHookups" />
                <asp:CheckBoxField DataField="Occupied" HeaderText="Occupied" 
                    SortExpression="Occupied" />
                <asp:BoundField DataField="LastMoveIn" HeaderText="LastMoveIn" 
                    SortExpression="LastMoveIn" />
                <asp:BoundField DataField="LastMoveOut" HeaderText="LastMoveOut" 
                    SortExpression="LastMoveOut" />
                <asp:BoundField DataField="LastRent" HeaderText="LastRent" 
                    SortExpression="LastRent" />
                <asp:BoundField DataField="userInput" HeaderText="userInput" 
                    SortExpression="userInput" />
                <asp:BoundField DataField="inputDate" HeaderText="inputDate" 
                    SortExpression="inputDate" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSourcePropApart" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            SelectCommand="SELECT * FROM [Property] WHERE ([propertyID] = @propertyID)">
            <SelectParameters>
                <asp:SessionParameter Name="propertyID" SessionField="propertyID" 
                    Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <hr />
    <br />
        <asp:Label ID="lblInitialQ" runat="server" 
            
        Text="All Applicants on Screening Form, For each applicant complete the following information, Scrolling between applicants using the numbers at bottom of page."></asp:Label>
        <br />
        <div align="center" style="float:left;">
    <p>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataKeyNames="ApplicantID" DataSourceID="SqlDataSource3" DefaultMode="Edit">
            <EditItemTemplate>
                
                <table>
                <tr><td>First Name:</td><td>
                    <asp:TextBox ID="FirstNameTextBox" runat="server" 
                        Text='<%# Bind("FirstName") %>' />
                    </td></tr>
                <tr><td>Last Name: </td><td>
                    <asp:TextBox ID="LastNameTextBox" runat="server" 
                        Text='<%# Bind("LastName") %>' />
                    </td></tr>
                <tr><td>Present Landlord: </td><td>
                    <asp:TextBox ID="PresentLandlordTextBox" runat="server" 
                        Text='<%# Bind("PresentLandlord") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ControlToValidate="PresentLandLordTextBox" Display="Dynamic" 
                                 ErrorMessage="Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td>Current Street Address:</td><td>
                    <asp:TextBox ID="CurrentStreetAddressTextBox" runat="server" 
                        Text='<%# Bind("CurrentStreetAddress") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                 ControlToValidate="CurrentStreetAddressTextBox" Display="Dynamic" 
                                 ErrorMessage="Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td>City:</td><td>
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    </td></tr>
                    <tr><td>State: </td><td>
                    <asp:DropDownList ID="dropdownlist3" runat="server" 
                                 DataSourceID="SqlDataSourceState" DataTextField="State" DataValueField="State" 
                                 SelectedValue='<%# Bind("State") %>'>
                             </asp:DropDownList>
                             <asp:TextBox ID="StateTextBox" runat="server" 
                                 Text='<%# Bind("State") %>' Visible="False" />         
                    </td></tr>
                <tr><td>Zip: </td><td>
                    <asp:TextBox ID="ZipTextBox" runat="server" 
                        ontextchanged="ZipTextBox_TextChanged" Text='<%# Bind("Zip") %>' />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                                 runat="server" ControlToValidate="ZipTextBox" Display="Dynamic" 
                                 ErrorMessage="Invalid Number" ValidationExpression="\d+" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                    </td></tr>
                <tr><td>&nbsp;Years Rented: </td><td>
                    <asp:TextBox ID="YearsRentedTextBox" runat="server" 
                        Text='<%# Bind("YearsRented") %>' />
                    </td></tr>
                <tr><td>Month Payment: </td><td>
                    <asp:TextBox ID="MonthPaymentTextBox" runat="server" 
                        Text='<%# Bind("MonthPayment") %>' />
                    </td></tr>
                <tr><td>LandLord Phone: </td><td>
                    <asp:TextBox ID="LandLordPhoneTextBox" runat="server" 
                        Text='<%# Bind("LandLordPhone") %>' />
                    </td></tr>
                <tr><td>License Num:</td><td>
                    <asp:TextBox ID="LicenseNumTextBox" runat="server" 
                        Text='<%# Bind("LicenseNum") %>' />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                 runat="server" ControlToValidate="LicenseNumTextBox" Display="Dynamic" 
                                 ErrorMessage="Invalid Number" ValidationExpression="\d+" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                    </td></tr><tr><td>License State: </td><td>
                    <asp:DropDownList ID="dropdownlist1" runat="server" 
                                 DataSourceID="SqlDataSourceState" DataTextField="State" DataValueField="State" 
                                 SelectedValue='<%# Bind("LicenseState") %>'>
                             </asp:DropDownList>
                        <asp:TextBox ID="LicenseStateTextBox" runat="server" 
                            Text='<%# Bind("LicenseState") %>' Visible="false"/>
                        </td></tr>
                <tr><td>Vehicle Color:</td><td>
                    <asp:TextBox ID="VehicleColorTextBox" runat="server" 
                        Text='<%# Bind("VehicleColor") %>' />
                    </td></tr>
                <tr><td>Vehicle Make:</td><td>
                    <asp:TextBox ID="VehicleMakeTextBox" runat="server" 
                        Text='<%# Bind("VehicleMake") %>' />
                    </td></tr>
                <tr><td>Vehicle Year: </td><td>
                    <asp:TextBox ID="VehicleYearTextBox" runat="server" 
                        Text='<%# Bind("VehicleYear") %>' />
                    </td></tr>
                
                
                <tr><td>Emergency Contact: </td><td>
                    <asp:TextBox ID="EmergencyContactTextBox" runat="server" 
                        Text='<%# Bind("EmergencyContact") %>' />
                    </td></tr>
<tr><td>Emergency Contact Phone: </td><td>
    <asp:TextBox ID="EmergencyContactPhoneTextBox" runat="server" 
        Text='<%# Bind("EmergencyContactPhone") %>' />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                 ControlToValidate="EmergencyContactPhoneTextBox" Display="Dynamic" 
                                 ErrorMessage="Invalid Phone Number" 
                                 ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
    </td></tr>                <tr><td>Emergency Relationship: </td><td>
                        <asp:TextBox ID="EmergencyRelationshipTextBox" runat="server" 
                            Text='<%# Bind("EmergencyRelationship") %>' />
                        </td></tr>
<tr><td>Credit Score: </td><td>
    <asp:TextBox ID="CreditScoreTextBox" runat="server" 
        Text='<%# Bind("CreditScore") %>' />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                                 runat="server" ControlToValidate="CreditScoreTextBox" Display="Dynamic" 
                                 ErrorMessage="Invalid Number" ValidationExpression="\d+" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
    </td></tr>
                </table>
                
                <br />
                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Save Applicant Rent History Data" />
                &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" 
                    Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" 
                    Text='<%# Bind("LastName") %>' />
                <br />

                PresentLandlord:
                <asp:TextBox ID="PresentLandlordTextBox" runat="server" 
                    Text='<%# Bind("PresentLandlord") %>' />
                <br />
                CurrentStreetAddress:
                <asp:TextBox ID="CurrentStreetAddressTextBox" runat="server" 
                    Text='<%# Bind("CurrentStreetAddress") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Zip:
                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                <br />
                YearsRented:
                <asp:TextBox ID="YearsRentedTextBox" runat="server" 
                    Text='<%# Bind("YearsRented") %>' />
                <br />
                MonthPayment:
                <asp:TextBox ID="MonthPaymentTextBox" runat="server" 
                    Text='<%# Bind("MonthPayment") %>' />
                <br />
                LandLordPhone:
                <asp:TextBox ID="LandLordPhoneTextBox" runat="server" 
                    Text='<%# Bind("LandLordPhone") %>' />
                <br />
                UserInput:
                <asp:TextBox ID="UserInputTextBox" runat="server" 
                    Text='<%# Bind("UserInput") %>' />
                <br />
                InputDate:
                <asp:TextBox ID="InputDateTextBox" runat="server" 
                    Text='<%# Bind("InputDate") %>' />
                <br />
                VehicleColor:
                <asp:TextBox ID="VehicleColorTextBox" runat="server" 
                    Text='<%# Bind("VehicleColor") %>' />
                <br />
                VehicleMake:
                <asp:TextBox ID="VehicleMakeTextBox" runat="server" 
                    Text='<%# Bind("VehicleMake") %>' />
                <br />
                VehicleYear:
                <asp:TextBox ID="VehicleYearTextBox" runat="server" 
                    Text='<%# Bind("VehicleYear") %>' />
                <br />
                LicenseNum:
                <asp:TextBox ID="LicenseNumTextBox" runat="server" 
                    Text='<%# Bind("LicenseNum") %>' />
                <br />
                LicenseState:
                <asp:TextBox ID="LicenseStateTextBox" runat="server" 
                    Text='<%# Bind("LicenseState") %>' />
                <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />
                EmergencyContact:
                <asp:TextBox ID="EmergencyContactTextBox" runat="server" 
                    Text='<%# Bind("EmergencyContact") %>' />
                <br />
                EmergencyContactPhone:
                <asp:TextBox ID="EmergencyContactPhoneTextBox" runat="server" 
                    Text='<%# Bind("EmergencyContactPhone") %>' />
                <br />
                EmergencyRelationship:
                <asp:TextBox ID="EmergencyRelationshipTextBox" runat="server" 
                    Text='<%# Bind("EmergencyRelationship") %>' />
                <br />
                CreditScore:
                <asp:TextBox ID="CreditScoreTextBox" runat="server" 
                    Text='<%# Bind("CreditScore") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                ApplicantID:
                <asp:Label ID="ApplicantIDLabel" runat="server" 
                    Text='<%# Eval("ApplicantID") %>' />
                <br />
                PresentLandlord:
                <asp:Label ID="PresentLandlordLabel" runat="server" 
                    Text='<%# Bind("PresentLandlord") %>' />
                <br />
                CurrentStreetAddress:
                <asp:Label ID="CurrentStreetAddressLabel" runat="server" 
                    Text='<%# Bind("CurrentStreetAddress") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Zip:
                <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
                <br />
                YearsRented:
                <asp:Label ID="YearsRentedLabel" runat="server" 
                    Text='<%# Bind("YearsRented") %>' />
                <br />
                MonthPayment:
                <asp:Label ID="MonthPaymentLabel" runat="server" 
                    Text='<%# Bind("MonthPayment") %>' />
                <br />
                LandLordPhone:
                <asp:Label ID="LandLordPhoneLabel" runat="server" 
                    Text='<%# Bind("LandLordPhone") %>' />
                <br />
                UserInput:
                <asp:Label ID="UserInputLabel" runat="server" Text='<%# Bind("UserInput") %>' />
                <br />
                InputDate:
                <asp:Label ID="InputDateLabel" runat="server" Text='<%# Bind("InputDate") %>' />
                <br />
                VehicleColor:
                <asp:Label ID="VehicleColorLabel" runat="server" 
                    Text='<%# Bind("VehicleColor") %>' />
                <br />
                VehicleMake:
                <asp:Label ID="VehicleMakeLabel" runat="server" 
                    Text='<%# Bind("VehicleMake") %>' />
                <br />
                VehicleYear:
                <asp:Label ID="VehicleYearLabel" runat="server" 
                    Text='<%# Bind("VehicleYear") %>' />
                <br />
                LicenseNum:
                <asp:Label ID="LicenseNumLabel" runat="server" 
                    Text='<%# Bind("LicenseNum") %>' />
                <br />
                LicenseState:
                <asp:Label ID="LicenseStateLabel" runat="server" 
                    Text='<%# Bind("LicenseState") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                <br />
                EmergencyContact:
                <asp:Label ID="EmergencyContactLabel" runat="server" 
                    Text='<%# Bind("EmergencyContact") %>' />
                <br />
                EmergencyContactPhone:
                <asp:Label ID="EmergencyContactPhoneLabel" runat="server" 
                    Text='<%# Bind("EmergencyContactPhone") %>' />
                <br />
                EmergencyRelationship:
                <asp:Label ID="EmergencyRelationshipLabel" runat="server" 
                    Text='<%# Bind("EmergencyRelationship") %>' />
                <br />
                CreditScore:
                <asp:Label ID="CreditScoreLabel" runat="server" 
                    Text='<%# Bind("CreditScore") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            
            SelectCommand="SELECT [FirstName], [LastName], [ApplicantID], [PresentLandlord], [CurrentStreetAddress], [City], [Zip], [YearsRented], [MonthPayment], [LandLordPhone], [UserInput], [InputDate], [VehicleColor], [VehicleMake], [VehicleYear], [LicenseNum], [LicenseState], [State], [EmergencyContact], [EmergencyContactPhone], [EmergencyRelationship], [CreditScore] FROM [Applicant] WHERE ([screeningid] = @screeningid)" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [Applicant] WHERE [ApplicantID] = @original_ApplicantID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([PresentLandlord] = @original_PresentLandlord) OR ([PresentLandlord] IS NULL AND @original_PresentLandlord IS NULL)) AND (([CurrentStreetAddress] = @original_CurrentStreetAddress) OR ([CurrentStreetAddress] IS NULL AND @original_CurrentStreetAddress IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([YearsRented] = @original_YearsRented) OR ([YearsRented] IS NULL AND @original_YearsRented IS NULL)) AND (([MonthPayment] = @original_MonthPayment) OR ([MonthPayment] IS NULL AND @original_MonthPayment IS NULL)) AND (([LandLordPhone] = @original_LandLordPhone) OR ([LandLordPhone] IS NULL AND @original_LandLordPhone IS NULL)) AND (([UserInput] = @original_UserInput) OR ([UserInput] IS NULL AND @original_UserInput IS NULL)) AND (([InputDate] = @original_InputDate) OR ([InputDate] IS NULL AND @original_InputDate IS NULL)) AND (([VehicleColor] = @original_VehicleColor) OR ([VehicleColor] IS NULL AND @original_VehicleColor IS NULL)) AND (([VehicleMake] = @original_VehicleMake) OR ([VehicleMake] IS NULL AND @original_VehicleMake IS NULL)) AND (([VehicleYear] = @original_VehicleYear) OR ([VehicleYear] IS NULL AND @original_VehicleYear IS NULL)) AND (([LicenseNum] = @original_LicenseNum) OR ([LicenseNum] IS NULL AND @original_LicenseNum IS NULL)) AND (([LicenseState] = @original_LicenseState) OR ([LicenseState] IS NULL AND @original_LicenseState IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([EmergencyContact] = @original_EmergencyContact) OR ([EmergencyContact] IS NULL AND @original_EmergencyContact IS NULL)) AND (([EmergencyContactPhone] = @original_EmergencyContactPhone) OR ([EmergencyContactPhone] IS NULL AND @original_EmergencyContactPhone IS NULL)) AND (([EmergencyRelationship] = @original_EmergencyRelationship) OR ([EmergencyRelationship] IS NULL AND @original_EmergencyRelationship IS NULL)) AND (([CreditScore] = @original_CreditScore) OR ([CreditScore] IS NULL AND @original_CreditScore IS NULL))" 
            InsertCommand="INSERT INTO [Applicant] ([FirstName], [LastName], [PresentLandlord], [CurrentStreetAddress], [City], [Zip], [YearsRented], [MonthPayment], [LandLordPhone], [UserInput], [InputDate], [VehicleColor], [VehicleMake], [VehicleYear], [LicenseNum], [LicenseState], [State], [EmergencyContact], [EmergencyContactPhone], [EmergencyRelationship], [CreditScore]) VALUES (@FirstName, @LastName, @PresentLandlord, @CurrentStreetAddress, @City, @Zip, @YearsRented, @MonthPayment, @LandLordPhone, @UserInput, @InputDate, @VehicleColor, @VehicleMake, @VehicleYear, @LicenseNum, @LicenseState, @State, @EmergencyContact, @EmergencyContactPhone, @EmergencyRelationship, @CreditScore)" 
            OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [Applicant] SET [FirstName] = @FirstName, [LastName] = @LastName, [PresentLandlord] = @PresentLandlord, [CurrentStreetAddress] = @CurrentStreetAddress, [City] = @City, [Zip] = @Zip, [YearsRented] = @YearsRented, [MonthPayment] = @MonthPayment, [LandLordPhone] = @LandLordPhone, [UserInput] = @UserInput, [InputDate] = @InputDate, [VehicleColor] = @VehicleColor, [VehicleMake] = @VehicleMake, [VehicleYear] = @VehicleYear, [LicenseNum] = @LicenseNum, [LicenseState] = @LicenseState, [State] = @State, [EmergencyContact] = @EmergencyContact, [EmergencyContactPhone] = @EmergencyContactPhone, [EmergencyRelationship] = @EmergencyRelationship, [CreditScore] = @CreditScore WHERE [ApplicantID] = @original_ApplicantID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([PresentLandlord] = @original_PresentLandlord) OR ([PresentLandlord] IS NULL AND @original_PresentLandlord IS NULL)) AND (([CurrentStreetAddress] = @original_CurrentStreetAddress) OR ([CurrentStreetAddress] IS NULL AND @original_CurrentStreetAddress IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([YearsRented] = @original_YearsRented) OR ([YearsRented] IS NULL AND @original_YearsRented IS NULL)) AND (([MonthPayment] = @original_MonthPayment) OR ([MonthPayment] IS NULL AND @original_MonthPayment IS NULL)) AND (([LandLordPhone] = @original_LandLordPhone) OR ([LandLordPhone] IS NULL AND @original_LandLordPhone IS NULL)) AND (([VehicleColor] = @original_VehicleColor) OR ([VehicleColor] IS NULL AND @original_VehicleColor IS NULL)) AND (([VehicleMake] = @original_VehicleMake) OR ([VehicleMake] IS NULL AND @original_VehicleMake IS NULL)) AND (([VehicleYear] = @original_VehicleYear) OR ([VehicleYear] IS NULL AND @original_VehicleYear IS NULL)) AND (([LicenseNum] = @original_LicenseNum) OR ([LicenseNum] IS NULL AND @original_LicenseNum IS NULL)) AND (([LicenseState] = @original_LicenseState) OR ([LicenseState] IS NULL AND @original_LicenseState IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([EmergencyContact] = @original_EmergencyContact) OR ([EmergencyContact] IS NULL AND @original_EmergencyContact IS NULL)) AND (([EmergencyContactPhone] = @original_EmergencyContactPhone) OR ([EmergencyContactPhone] IS NULL AND @original_EmergencyContactPhone IS NULL)) AND (([EmergencyRelationship] = @original_EmergencyRelationship) OR ([EmergencyRelationship] IS NULL AND @original_EmergencyRelationship IS NULL)) AND (([CreditScore] = @original_CreditScore) OR ([CreditScore] IS NULL AND @original_CreditScore IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ApplicantID" Type="Int64" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_PresentLandlord" Type="String" />
                <asp:Parameter Name="original_CurrentStreetAddress" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Zip" Type="String" />
                <asp:Parameter Name="original_YearsRented" Type="String" />
                <asp:Parameter Name="original_MonthPayment" Type="String" />
                <asp:Parameter Name="original_LandLordPhone" Type="String" />
                <asp:Parameter Name="original_UserInput" Type="String" />
                <asp:Parameter Name="original_InputDate" Type="DateTime" />
                <asp:Parameter Name="original_VehicleColor" Type="String" />
                <asp:Parameter Name="original_VehicleMake" Type="String" />
                <asp:Parameter Name="original_VehicleYear" Type="String" />
                <asp:Parameter Name="original_LicenseNum" Type="String" />
                <asp:Parameter Name="original_LicenseState" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_EmergencyContact" Type="String" />
                <asp:Parameter Name="original_EmergencyContactPhone" Type="String" />
                <asp:Parameter Name="original_EmergencyRelationship" Type="String" />
                <asp:Parameter Name="original_CreditScore" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="PresentLandlord" Type="String" />
                <asp:Parameter Name="CurrentStreetAddress" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="YearsRented" Type="String" />
                <asp:Parameter Name="MonthPayment" Type="String" />
                <asp:Parameter Name="LandLordPhone" Type="String" />
                <asp:Parameter Name="UserInput" Type="String" />
                <asp:Parameter Name="InputDate" Type="DateTime" />
                <asp:Parameter Name="VehicleColor" Type="String" />
                <asp:Parameter Name="VehicleMake" Type="String" />
                <asp:Parameter Name="VehicleYear" Type="String" />
                <asp:Parameter Name="LicenseNum" Type="String" />
                <asp:Parameter Name="LicenseState" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="EmergencyContact" Type="String" />
                <asp:Parameter Name="EmergencyContactPhone" Type="String" />
                <asp:Parameter Name="EmergencyRelationship" Type="String" />
                <asp:Parameter Name="CreditScore" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="screeningid" SessionField="newscreeningid" 
                    Type="Int64" />
            </SelectParameters>
         
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="PresentLandlord" Type="String" />
                <asp:Parameter Name="CurrentStreetAddress" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="YearsRented" Type="String" />
                <asp:Parameter Name="MonthPayment" Type="String" />
                <asp:Parameter Name="LandLordPhone" Type="String" />
                <asp:Parameter Name="VehicleColor" Type="String" />
                <asp:Parameter Name="VehicleMake" Type="String" />
                <asp:Parameter Name="VehicleYear" Type="String" />
                <asp:Parameter Name="LicenseNum" Type="String" />
                <asp:Parameter Name="LicenseState" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="EmergencyContact" Type="String" />
                <asp:Parameter Name="EmergencyContactPhone" Type="String" />
                <asp:Parameter Name="EmergencyRelationship" Type="String" />
                <asp:Parameter Name="CreditScore" Type="String" />
                <asp:Parameter Name="screeningID" Type="Int64" />
                <asp:Parameter Name="original_ApplicantID" Type="Int64" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_PresentLandlord" Type="String" />
                <asp:Parameter Name="original_CurrentStreetAddress" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Zip" Type="String" />
                <asp:Parameter Name="original_YearsRented" Type="String" />
                <asp:Parameter Name="original_MonthPayment" Type="String" />
                <asp:Parameter Name="original_LandLordPhone" Type="String" />
                <asp:Parameter Name="original_UserInput" Type="String" />
                <asp:Parameter Name="original_InputDate" Type="DateTime" />
                <asp:Parameter Name="original_VehicleColor" Type="String" />
                <asp:Parameter Name="original_VehicleMake" Type="String" />
                <asp:Parameter Name="original_VehicleYear" Type="String" />
                <asp:Parameter Name="original_LicenseNum" Type="String" />
                <asp:Parameter Name="original_LicenseState" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_EmergencyContact" Type="String" />
                <asp:Parameter Name="original_EmergencyContactPhone" Type="String" />
                <asp:Parameter Name="original_EmergencyRelationship" Type="String" />
                <asp:Parameter Name="original_CreditScore" Type="String" />
            </UpdateParameters>
         
        </asp:SqlDataSource>
    </p>
        <p>
        <asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/ScreeningFormStatus.aspx">Verify/Confirm Screening Application</asp:LinkButton>
    </p>
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
       <asp:SqlDataSource ID="SqlDataSourceState" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                    </div>
                    <div style="float:left;" align="center"> 
<h2>The information entered on this screen will complete the information currently residing on the Rental Verification form below:</h2>
<br />
<br />
    <img src="Documents/811.png" style="height: 312px; width: 669px" />
    </div>

     </asp:Panel>

</asp:Content>