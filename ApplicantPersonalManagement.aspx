<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="ApplicantPersonalManagement.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        APPLICANT PERSONAL MANAGEMENT
    </h2>
    <h2>
        &nbsp;</h2>
    <p>
        <asp:DropDownList ID="ddlSelectApplicant" runat="server" AutoPostBack="True" 
            DataSourceID="sqlDSddlApplicant" DataTextField="CombinedName"
            DataValueField="ApplicantID" Height="18px" Width="415px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="sqlDSddlApplicant" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            SelectCommand="SELECT [FirstName], [MiddleName], [LastName], [FirstName] + [MiddleName] + [LastName] + [SSN] As CombinedName, [SSN], [ApplicantID] FROM [Applicant]">
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataSourceID="SqlRNADatabase" DataKeyNames="ApplicantID">
            <EditItemTemplate>
                ApplicantID:
                <asp:Label ID="ApplicantIDLabel1" runat="server" 
                    Text='<%# Eval("ApplicantID") %>' />
                <br />
                             First Name:
                <asp:TextBox ID="FirstNameTextBox" runat="server" 
                    Text='<%# Bind("FirstName") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FirstNameTextBox" Display="Dynamic" 
                    ErrorMessage="First Name is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                <br />
               Middle Name:
                <asp:TextBox ID="MiddleNameTextBox" runat="server" 
                    Text='<%# Bind("MiddleName") %>' />
               
                <br />
                Last Name:
                <asp:TextBox ID="LastNameTextBox" runat="server" 
                    Text='<%# Bind("LastName") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="LastNameTextBox" Display="Dynamic" 
                    ErrorMessage="Last Name is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                
                SSN:
                <asp:TextBox ID="SSNTextBox" runat="server" 
                    Text='<%# Bind("SSN") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="SSNTextBox" Display="Dynamic" 
                    ErrorMessage="SSN is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="SSNTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid SSN" ValidationGroup="AllValidators" 
                    ValidationExpression="\d{3}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
               
                
                <br />
                Driver License Num:
                <asp:TextBox ID="DriverLicenseNumberTextBox" runat="server" 
                    Text='<%# Bind("DriverLicenseNumber") %>' />

                <br />
                Driver License State:
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Bind("DriverLicenseState") %>'>
                </asp:DropDownList>
                <br />
                Phone Number:
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("PhoneNumber") %>' />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="PhoneNumberTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               
               
                <br />
                Date of Birth:
                <asp:TextBox ID="DOBTextBox" runat="server" 
                    Text='<%# Bind("DOB") %>' />
                     <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="DOBTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DOBTextBox" Display="Dynamic" 
                    ErrorMessage="DOB is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                 Gross Salary:
                <asp:TextBox ID="GrossSalaryTextBox" runat="server" 
                    Text='<%# Bind("GrossSalary") %>' />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                ControlToValidate="GrossSalaryTextBox" Display="Dynamic" 
                    ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                <br />
                 Salary Schedule:
                <asp:DropDownList ID="SalaryScheduleTextBox" runat="server" Width="164px" 
                    SelectedValue='<%# Bind("SalarySchedule") %>' >
                    <asp:ListItem Value="0">Select a Schedule</asp:ListItem>
                    <asp:ListItem Value="1">Weekly</asp:ListItem>
                    <asp:ListItem Value="2">Biweekly</asp:ListItem>
                    <asp:ListItem Value="3">Monthly</asp:ListItem>
                </asp:DropDownList>
                <br />
                &nbsp;<asp:CheckBox ID="ckbxFullTime" runat="server" 
                    Checked='<%# Bind("FullTime") %>' Text="Full Time?" />
                <br />
                 Date of Hire:
                <asp:TextBox ID="DOHTextBox" runat="server" 
                    Text='<%# Bind("DOH") %>' />
                 <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="DOHTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DOHTextBox" Display="Dynamic" 
                    ErrorMessage="DOH is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                Other Income:
                <asp:TextBox ID="OtherIncomeTextBox" runat="server" 
                    Text='<%# Bind("OtherIncome") %>' />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="OtherIncomeTextBox" Display="Dynamic" 
                    ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                
                <br />
                Other Income Type:
                <asp:TextBox ID="OtherIncomeTypeTextBox" runat="server" 
                    Text='<%# Bind("OtherIncomeType") %>' TextMode="MultiLine" />
                <br />          
                Employer:
                <asp:TextBox ID="EmployerTextBox" runat="server" 
                    Text='<%# Bind("Employer") %>' />
                <br />
                Employer Contact:
                <asp:TextBox ID="EmployerContactTextBox" runat="server" 
                    Text='<%# Bind("EmployerContact") %>' />
                <br />
                Employer Number:
                <asp:TextBox ID="EmployerNumberTextBox" runat="server" 
                    Text='<%# Bind("EmployerNumber") %>' />
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="EmployerNumberTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               <br />
                 Check if any criminal convictions within the last 5 years by either applicant:<br />
                <asp:CheckBox ID="CriminalConvictionsCheckBox" runat="server" 
                    Checked='<%# Bind("CriminalConvictions") %>' />
                 &nbsp;If checked, please explain:
                <asp:TextBox ID="CriminalExplainTextBox" runat="server" 
                    Text='<%# Bind("CriminalExplain") %>' TextMode="MultiLine" />
                <br />
                 Any Non-Human Occupants:
                <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                    Checked='<%# Bind("nonHumanOccupants") %>' />
                <br />
                 Kind of Pet #1:
                <asp:TextBox ID="PetKind1TextBox" runat="server" 
                    Text='<%# Bind("PetKind1") %>' />
                <br />
                 Weight of Pet 1:
                <asp:TextBox ID="PetWeight1TextBox" runat="server" 
                    Text='<%# Bind("PetWeight1") %>' />
                 <br />
                 Age of Pet 1:
                 <asp:TextBox ID="PetAge1TextBox" runat="server" Text='<%# Bind("PetAge1") %>' />
                <br />
                 Breed of Pet 1:
                 <asp:TextBox ID="PetBreed1TextBox" runat="server" 
                     Text='<%# Bind("PetBreed1") %>' />
                <br />
                 Kind of Pet 2:
                 <asp:TextBox ID="PetKind2TextBox" runat="server" 
                     Text='<%# Bind("PetKind2") %>' />
                 <br />
                 Weight of Pet 2:
                 <asp:TextBox ID="PetWeight2TextBox" runat="server" 
                     Text='<%# Bind("PetWeight2") %>' />
                 <br />
                 Age of Pet 2:
                 <asp:TextBox ID="PetAge2TextBox" runat="server" Text='<%# Bind("PetAge2") %>' />
                 <br />
                 Breed of Pet 2:
                 <asp:TextBox ID="PetBreed2TextBox" runat="server" 
                     Text='<%# Bind("PetBreed2") %>' />
                 <br />
                 Present Landlord:
                <asp:TextBox ID="PresentLandlordTextBox" runat="server" 
                    Text='<%# Bind("PresentLandlord") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="PresentLandlordTextBox" Display="Dynamic" 
                    ErrorMessage="Landlord is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                
                 <br />
                 Landlord Phone #:
                <asp:TextBox ID="LandLordPhoneTXT" runat="server" 
                    Text='<%# Bind("LandLordPhone") %>' />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="LandLordPhoneTXT" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               
                <br />
                 Current Street Address:
                <asp:TextBox ID="CurrentStreetAddressTextBox" runat="server" 
                    Text='<%# Bind("CurrentStreetAddress") %>' />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="CurrentStreetAddressTextBox" Display="Dynamic" 
                    ErrorMessage="Current Street Address is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="CityTextBox" Display="Dynamic" 
                    ErrorMessage="City is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               <br />
                State:
                
                <asp:SqlDataSource ID="SqlDataSourceState" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Bind("State") %>'>
                </asp:DropDownList>
                <br />
                Zip:
                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="ZipTextBox" Display="Dynamic" 
                    ErrorMessage="Zip is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="ZipTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Zip code" ValidationGroup="AllValidators" 
                    ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
           
                <br />
                 Number of Years at Current Place:
                <asp:TextBox ID="YearsRentedTextBox" runat="server" 
                    Text='<%# Bind("YearsRented") %>' />
                <br />
                 Current Monthly Rent:
                <asp:TextBox ID="MonthPaymentTextBox" runat="server" 
                    Text='<%# Bind("MonthPayment") %>' />
                <br />
                 Vehicle Make:
                <asp:TextBox ID="VehicleMakeTextBox" runat="server" 
                    Text='<%# Bind("VehicleMake") %>' />
                <br />
                 Vehicle Color:
                <asp:TextBox ID="VehicleColorTextBox" runat="server" 
                    Text='<%# Bind("VehicleColor") %>' />
                <br />
                 Vehicle Year:
                <asp:TextBox ID="VehicleYearTextBox" runat="server" 
                    Text='<%# Bind("VehicleYear") %>' />
                 <br />
                 License Plate State:
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Bind("LicenseState") %>'>
                </asp:DropDownList>
                 <br />
                 License&nbsp; Plate Number:
                 <asp:TextBox ID="LicenseNumTextBox" runat="server" 
                     Text='<%# Bind("LicenseNum") %>' />
                 <br />
                 Emergency Contact:
                 <asp:TextBox ID="EmergencyContactTextBox" runat="server" 
                     Text='<%# Bind("EmergencyContact") %>' />
                <br />
                 Emergency Contact Relationship:
                <asp:TextBox ID="EmergencyRelationshipTextBox" runat="server" 
                    Text='<%# Bind("EmergencyRelationship") %>' />
                <br />
                 Emergency Contact Phone #:
                <asp:TextBox ID="EmergencyContactPhoneTextBox" runat="server" 
                    Text='<%# Bind("EmergencyContactPhone") %>' />
                <br />
      <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" ValidationGroup="AllValidators"/>
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                   First Name:
                <asp:TextBox ID="FirstNameTextBox" runat="server" 
                    Text='<%# Bind("FirstName") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FirstNameTextBox" Display="Dynamic" 
                    ErrorMessage="First Name is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                <br />
               Middle Name:
                <asp:TextBox ID="MiddleNameTextBox" runat="server" 
                    Text='<%# Bind("MiddleName") %>' />
               
                <br />
                Last Name:
                <asp:TextBox ID="LastNameTextBox" runat="server" 
                    Text='<%# Bind("LastName") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="LastNameTextBox" Display="Dynamic" 
                    ErrorMessage="Last Name is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                
                SSN:
                <asp:TextBox ID="SSNTextBox" runat="server" 
                    Text='<%# Bind("SSN") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="SSNTextBox" Display="Dynamic" 
                    ErrorMessage="SSN is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="SSNTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid SSN" ValidationGroup="AllValidators" 
                    ValidationExpression="\d{3}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
               
                
                <br />
                Driver License Num:
                <asp:TextBox ID="DriverLicenseNumberTextBox" runat="server" 
                    Text='<%# Bind("DriverLicenseNumber") %>' />

                <br />
                Driver License State:
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList4" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Bind("DriverLicenseState") %>'>
                </asp:DropDownList>
                <br />
                Phone Number:
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("PhoneNumber") %>' />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="PhoneNumberTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               
               
                <br />
                Date of Birth:
                <asp:TextBox ID="DOBTextBox" runat="server" 
                    Text='<%# Bind("DOB") %>' />
                     <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="DOBTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DOBTextBox" Display="Dynamic" 
                    ErrorMessage="DOB is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                 Gross Salary:
                <asp:TextBox ID="GrossSalaryTextBox" runat="server" 
                    Text='<%# Bind("GrossSalary") %>' />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                ControlToValidate="GrossSalaryTextBox" Display="Dynamic" 
                    ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                <br />
                 Salary Schedule:
                <asp:DropDownList ID="SalaryScheduleTextBox" runat="server" Width="164px" 
                    SelectedValue='<%# Bind("SalarySchedule") %>' >
                    <asp:ListItem Value="0">Select a Schedule</asp:ListItem>
                    <asp:ListItem Value="1">Weekly</asp:ListItem>
                    <asp:ListItem Value="2">Biweekly</asp:ListItem>
                    <asp:ListItem Value="3">Monthly</asp:ListItem>
                </asp:DropDownList>
                <br />
                &nbsp;<asp:CheckBox ID="ckbxFullTime" runat="server" 
                    Checked='<%# Bind("FullTime") %>' Text="Full Time?" />
                <br />
                 Date of Hire:
                <asp:TextBox ID="DOHTextBox" runat="server" 
                    Text='<%# Bind("DOH") %>' />
                 <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="DOHTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DOHTextBox" Display="Dynamic" 
                    ErrorMessage="DOH is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                Other Income:
                <asp:TextBox ID="OtherIncomeTextBox" runat="server" 
                    Text='<%# Bind("OtherIncome") %>' />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="OtherIncomeTextBox" Display="Dynamic" 
                    ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                
                <br />
                Other Income Type:
                <asp:TextBox ID="OtherIncomeTypeTextBox" runat="server" 
                    Text='<%# Bind("OtherIncomeType") %>' TextMode="MultiLine" />
                <br />          
                Employer:
                <asp:TextBox ID="EmployerTextBox" runat="server" 
                    Text='<%# Bind("Employer") %>' />
                <br />
                Employer Contact:
                <asp:TextBox ID="EmployerContactTextBox" runat="server" 
                    Text='<%# Bind("EmployerContact") %>' />
                <br />
                Employer Number:
                <asp:TextBox ID="EmployerNumberTextBox" runat="server" 
                    Text='<%# Bind("EmployerNumber") %>' />
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="EmployerNumberTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               <br />
                 Check if any criminal convictions within the last 5 years by either applicant:<br />
                <asp:CheckBox ID="CriminalConvictionsCheckBox" runat="server" 
                    Checked='<%# Bind("CriminalConvictions") %>' />
                 &nbsp;If checked, please explain:
                <asp:TextBox ID="CriminalExplainTextBox" runat="server" 
                    Text='<%# Bind("CriminalExplain") %>' TextMode="MultiLine" />
                <br />
                 Any Non-Human Occupants:
                <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                    Checked='<%# Bind("nonHumanOccupants") %>' />
                <br />
                 Kind of Pet #1:
                <asp:TextBox ID="PetKind1TextBox" runat="server" 
                    Text='<%# Bind("PetKind1") %>' />
                <br />
                 Weight of Pet 1:
                <asp:TextBox ID="PetWeight1TextBox" runat="server" 
                    Text='<%# Bind("PetWeight1") %>' />
                 <br />
                 Age of Pet 1:
                 <asp:TextBox ID="PetAge1TextBox" runat="server" Text='<%# Bind("PetAge1") %>' />
                <br />
                 Breed of Pet 1:
                 <asp:TextBox ID="PetBreed1TextBox" runat="server" 
                     Text='<%# Bind("PetBreed1") %>' />
                <br />
                 Kind of Pet 2:
                 <asp:TextBox ID="PetKind2TextBox" runat="server" 
                     Text='<%# Bind("PetKind2") %>' />
                 <br />
                 Weight of Pet 2:
                 <asp:TextBox ID="PetWeight2TextBox" runat="server" 
                     Text='<%# Bind("PetWeight2") %>' />
                 <br />
                 Age of Pet 2:
                 <asp:TextBox ID="PetAge2TextBox" runat="server" Text='<%# Bind("PetAge2") %>' />
                 <br />
                 Breed of Pet 2:
                 <asp:TextBox ID="PetBreed2TextBox" runat="server" 
                     Text='<%# Bind("PetBreed2") %>' />
                 <br />
                 Present Landlord:
                <asp:TextBox ID="PresentLandlordTextBox" runat="server" 
                    Text='<%# Bind("PresentLandlord") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="PresentLandlordTextBox" Display="Dynamic" 
                    ErrorMessage="Landlord is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                
                 <br />
                 Landlord Phone #:
                <asp:TextBox ID="LandLordPhoneTXT" runat="server" 
                    Text='<%# Bind("LandLordPhone") %>' />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="LandLordPhoneTXT" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               
                <br />
                 Current Street Address:
                <asp:TextBox ID="CurrentStreetAddressTextBox" runat="server" 
                    Text='<%# Bind("CurrentStreetAddress") %>' />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="CurrentStreetAddressTextBox" Display="Dynamic" 
                    ErrorMessage="Current Street Address is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="CityTextBox" Display="Dynamic" 
                    ErrorMessage="City is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <asp:SqlDataSource ID="SqlDataSourceState" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Bind("State") %>'>
                </asp:DropDownList>
                <br />
                Zip:
                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="ZipTextBox" Display="Dynamic" 
                    ErrorMessage="Zip is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="ZipTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Zip code" ValidationGroup="AllValidators" 
                    ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
           
                <br />
                 Number of Years at Current Place:
                <asp:TextBox ID="YearsRentedTextBox" runat="server" 
                    Text='<%# Bind("YearsRented") %>' />
                <br />
                 Current Monthly Rent:
                <asp:TextBox ID="MonthPaymentTextBox" runat="server" 
                    Text='<%# Bind("MonthPayment") %>' />
                <br />
                 Vehicle Make:
                <asp:TextBox ID="VehicleMakeTextBox" runat="server" 
                    Text='<%# Bind("VehicleMake") %>' />
                <br />
                 Vehicle Color:
                <asp:TextBox ID="VehicleColorTextBox" runat="server" 
                    Text='<%# Bind("VehicleColor") %>' />
                <br />
                 Vehicle Year:
                <asp:TextBox ID="VehicleYearTextBox" runat="server" 
                    Text='<%# Bind("VehicleYear") %>' />
                 <br />
                 License Plate State:
                  <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList5" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Bind("LicenseState") %>'>
                </asp:DropDownList>
                 <br />
                 License&nbsp; Plate Number:
                 <asp:TextBox ID="LicenseNumTextBox" runat="server" 
                     Text='<%# Bind("LicenseNum") %>' />
                 <br />
                 Emergency Contact:
                 <asp:TextBox ID="EmergencyContactTextBox" runat="server" 
                     Text='<%# Bind("EmergencyContact") %>' />
                <br />
                 Emergency Contact Relationship:
                <asp:TextBox ID="EmergencyRelationshipTextBox" runat="server" 
                    Text='<%# Bind("EmergencyRelationship") %>' />
                <br />
                 Emergency Contact Phone #:
                <asp:TextBox ID="EmergencyContactPhoneTextBox" runat="server" 
                    Text='<%# Bind("EmergencyContactPhone") %>' />
                <br />
               
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" ValidationGroup="AllValidators"/>
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
				
				<asp:TextBox ID="UserInputTextBox" runat="server" 
                    Text='<%# Bind("UserInput") %>' Visible="False" />
                <asp:TextBox ID="InputDateTextBox" runat="server" 
                    Text='<%# Bind("InputDate") %>' Visible="False" />
				
		   </InsertItemTemplate>
            <ItemTemplate>

 <asp:TextBox ID="UserInputTextBox" runat="server" 
                    Text='<%# Bind("UserInput") %>' Visible="false" />
                <asp:TextBox ID="InputDateTextBox" runat="server" 
                    Text='<%# Bind("InputDate") %>' Visible="FALSE" />			

			  ApplicantID:
                  <asp:Label ID="ApplicantIDLabel" runat="server" 
                      Text='<%# Eval("ApplicantID") %>' />
               <br />
                  Last Name:
                  <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
               
                <br />
                  First Name:
                  <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
          
                <br />
              
                  Middle Name:
                  <asp:Label ID="MiddleNameLabel" runat="server" 
                      Text='<%# Bind("MiddleName") %>' />
             
                <br />
              
                SSN:
                  <asp:Label ID="SSNLabel" runat="server" Text='<%# Bind("SSN") %>' />

                <br />
                  Driver License Number:
                  <asp:Label ID="DriverLicenseNumberLabel" runat="server" 
                      Text='<%# Bind("DriverLicenseNumber") %>' />
              
                <br />
                  Driver License State:
                   <asp:Label ID="Label1" runat="server" Text='<%# Bind("DriverLicenseState") %>' 
                    Visible="False" />
                 <asp:SqlDataSource ID="SqlDataSourceState" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Eval("DriverLicenseState") %>' Enabled = false>
                </asp:DropDownList>
               
                <br />
                  Gross Salary:
                  <asp:Label ID="GrossSalaryLabel" runat="server" 
                      Text='<%# Bind("GrossSalary") %>' />
               
                <br />
                  EmployerContact:
                  <asp:Label ID="EmployerContactLabel" runat="server" 
                      Text='<%# Bind("EmployerContact") %>' />
                <br />
                 
                  Employer Number:
                  <asp:Label ID="EmployerNumberLabel" runat="server" 
                      Text='<%# Bind("EmployerNumber") %>' />
                <br />
                  Full Time:
                  <asp:CheckBox ID="FullTimeCheckBox" runat="server" 
                    Checked='<%# Bind("FullTime") %>' Enabled="false" />
                <br />
                  DOH:
                  <asp:Label ID="DOHLabel" runat="server" Text='<%# Bind("DOH") %>' />
                
                <br />
                  DOB:
                  <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                   
                <br />
                  Employer:
                  <asp:Label ID="EmployerLabel" runat="server" Text='<%# Bind("Employer") %>' />
                <br />           
                  Phone Number:
                  <asp:Label ID="PhoneNumberLabel" runat="server" 
                      Text='<%# Bind("PhoneNumber") %>' />
                <br />
                 
                Salary Schedule:
                  
                      <asp:DropDownList ID="SalaryScheduleTextBox" runat="server" Width="164px" 
                    SelectedValue='<%# Eval("SalarySchedule") %>' >
                    <asp:ListItem Value="0">Select a Schedule</asp:ListItem>
                    <asp:ListItem Value="1">Weekly</asp:ListItem>
                    <asp:ListItem Value="2">Biweekly</asp:ListItem>
                    <asp:ListItem Value="3">Monthly</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                  Other Income:
                  <asp:Label ID="OtherIncomeLabel" runat="server" 
                      Text='<%# Bind("OtherIncome") %>' />
                           
               <br />
               
                
                  Other Income Type:
                  <asp:Label ID="OtherIncomeTypeLabel" runat="server" 
                      Text='<%# Bind("OtherIncomeType") %>' />
                <br />
                  Criminal Convictions:
                  <asp:CheckBox ID="CriminalConvictionsCheckBox" runat="server" 
                      Checked='<%# Bind("CriminalConvictions") %>' Enabled="false" />
                  <br />
                  non Human Occupants:
                  <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                      Checked='<%# Bind("nonHumanOccupants") %>' Enabled="false" />
                  <br />
                  Criminal Explain:
                  <asp:Label ID="CriminalExplainLabel" runat="server" 
                      Text='<%# Bind("CriminalExplain") %>' />
                  <br />
                  Pet Kind 1:
                  <asp:Label ID="PetKind1Label" runat="server" Text='<%# Bind("PetKind1") %>' />
                  <br />
                  Pet Weight 1:
                  <asp:Label ID="PetWeight1Label" runat="server" 
                      Text='<%# Bind("PetWeight1") %>' />
                  <br />
                  Vehicle Year:
                  <asp:Label ID="VehicleYearLabel" runat="server" 
                      Text='<%# Bind("VehicleYear") %>' />
                  <br />
                  LandLord Phone:
                  <asp:Label ID="LandLordPhoneLabel" runat="server" 
                      Text='<%# Bind("LandLordPhone") %>' />
                  <br />
                  Emergency Relationship:
                  <asp:Label ID="EmergencyRelationshipLabel" runat="server" 
                      Text='<%# Bind("EmergencyRelationship") %>' />
                  <br />
                  Emergency Contact Phone:
                  <asp:Label ID="EmergencyContactPhoneLabel" runat="server" 
                      Text='<%# Bind("EmergencyContactPhone") %>' />
                  <br />
                  Emergency Contact:
                  <asp:Label ID="EmergencyContactLabel" runat="server" 
                      Text='<%# Bind("EmergencyContact") %>' />
                  <br />
                  License State:
                  <asp:Label ID="Label2" runat="server" Text='<%# Bind("LicenseState") %>' 
                    Visible="False" />
                 <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList6" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Eval("LicenseState") %>' Enabled = false>
                </asp:DropDownList>
                  <br />
                  License Number:
                  <asp:Label ID="LicenseNumLabel" runat="server" 
                      Text='<%# Bind("LicenseNum") %>' />
                  <br />
                  City:
                  <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                  <br />
                  State:
                  <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' 
                    Visible="False" />
                 <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList7" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Eval("State") %>' Enabled = false>
                </asp:DropDownList><br />
                  Years Rented:
                  <asp:Label ID="YearsRentedLabel" runat="server" 
                      Text='<%# Bind("YearsRented") %>' />
                  <br />
                  Zip:
                  <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
                  <br />
                  Month Payment:
                  <asp:Label ID="MonthPaymentLabel" runat="server" 
                      Text='<%# Bind("MonthPayment") %>' />
                  <br />
                  Vehicle Make:
                  <asp:Label ID="VehicleMakeLabel" runat="server" 
                      Text='<%# Bind("VehicleMake") %>' />
                  <br />
                  Vehicle Color:
                  <asp:Label ID="VehicleColorLabel" runat="server" 
                      Text='<%# Bind("VehicleColor") %>' />
                  <br />
                  Current Street Address:
                  <asp:Label ID="CurrentStreetAddressLabel" runat="server" 
                      Text='<%# Bind("CurrentStreetAddress") %>' />
                  <br />
                  Present Landlord:
                  <asp:Label ID="PresentLandlordLabel" runat="server" 
                      Text='<%# Bind("PresentLandlord") %>' />
                  <br />
                  Pet Age 2:
                  <asp:Label ID="PetAge2Label" runat="server" Text='<%# Bind("PetAge2") %>' />
                  <br />
                  Pet Breed 2:
                  <asp:Label ID="PetBreed2Label" runat="server" Text='<%# Bind("PetBreed2") %>' />
                  <br />
                  Pet Weight 2:
                  <asp:Label ID="PetWeight2Label" runat="server" 
                      Text='<%# Bind("PetWeight2") %>' />
                  <br />
                  Pet Kind 2:
                  <asp:Label ID="PetKind2Label" runat="server" Text='<%# Bind("PetKind2") %>' />
                  <br />
                  Pet Age 1:
                  <asp:Label ID="PetAge1Label" runat="server" Text='<%# Bind("PetAge1") %>' />
                  <br />
                  Pet Breed 1:
                  <asp:Label ID="PetBreed1Label" runat="server" Text='<%# Bind("PetBreed1") %>' />
                  <br />
               
                
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlRNADatabase" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            SelectCommand="SELECT [ApplicantID], [LastName], [FirstName], [MiddleName], [SSN], [DriverLicenseNumber], [DriverLicenseState], [GrossSalary], [EmployerContact], [EmployerNumber], [FullTime], [DOH], [DOB], [Employer], [PhoneNumber], [SalarySchedule], [OtherIncome], [OtherIncomeType], [CriminalConvictions], [nonHumanOccupants], [CriminalExplain], [PetKind1], [PetWeight1], [VehicleYear], [LandLordPhone], [EmergencyRelationship], [EmergencyContactPhone], [EmergencyContact], [LicenseState], [LicenseNum], [City], [State], [YearsRented], [Zip], [MonthPayment], [VehicleMake], [VehicleColor], [CurrentStreetAddress], [PresentLandlord], [PetAge2], [PetBreed2], [PetWeight2], [PetKind2], [PetAge1], [PetBreed1], [UserInput], [InputDate] FROM [Applicant] WHERE ([ApplicantID] = @ApplicantID) ORDER BY [ApplicantID] DESC"
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [Applicant] WHERE [ApplicantID] = @original_ApplicantID AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([DriverLicenseNumber] = @original_DriverLicenseNumber) OR ([DriverLicenseNumber] IS NULL AND @original_DriverLicenseNumber IS NULL)) AND (([DriverLicenseState] = @original_DriverLicenseState) OR ([DriverLicenseState] IS NULL AND @original_DriverLicenseState IS NULL)) AND (([GrossSalary] = @original_GrossSalary) OR ([GrossSalary] IS NULL AND @original_GrossSalary IS NULL)) AND (([EmployerContact] = @original_EmployerContact) OR ([EmployerContact] IS NULL AND @original_EmployerContact IS NULL)) AND (([EmployerNumber] = @original_EmployerNumber) OR ([EmployerNumber] IS NULL AND @original_EmployerNumber IS NULL)) AND (([FullTime] = @original_FullTime) OR ([FullTime] IS NULL AND @original_FullTime IS NULL)) AND (([DOH] = @original_DOH) OR ([DOH] IS NULL AND @original_DOH IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Employer] = @original_Employer) OR ([Employer] IS NULL AND @original_Employer IS NULL)) AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL)) AND (([SalarySchedule] = @original_SalarySchedule) OR ([SalarySchedule] IS NULL AND @original_SalarySchedule IS NULL)) AND (([OtherIncome] = @original_OtherIncome) OR ([OtherIncome] IS NULL AND @original_OtherIncome IS NULL)) AND (([OtherIncomeType] = @original_OtherIncomeType) OR ([OtherIncomeType] IS NULL AND @original_OtherIncomeType IS NULL)) AND (([CriminalConvictions] = @original_CriminalConvictions) OR ([CriminalConvictions] IS NULL AND @original_CriminalConvictions IS NULL)) AND (([nonHumanOccupants] = @original_nonHumanOccupants) OR ([nonHumanOccupants] IS NULL AND @original_nonHumanOccupants IS NULL)) AND (([CriminalExplain] = @original_CriminalExplain) OR ([CriminalExplain] IS NULL AND @original_CriminalExplain IS NULL)) AND (([PetKind1] = @original_PetKind1) OR ([PetKind1] IS NULL AND @original_PetKind1 IS NULL)) AND (([PetWeight1] = @original_PetWeight1) OR ([PetWeight1] IS NULL AND @original_PetWeight1 IS NULL)) AND (([VehicleYear] = @original_VehicleYear) OR ([VehicleYear] IS NULL AND @original_VehicleYear IS NULL)) AND (([LandLordPhone] = @original_LandLordPhone) OR ([LandLordPhone] IS NULL AND @original_LandLordPhone IS NULL)) AND (([EmergencyRelationship] = @original_EmergencyRelationship) OR ([EmergencyRelationship] IS NULL AND @original_EmergencyRelationship IS NULL)) AND (([EmergencyContactPhone] = @original_EmergencyContactPhone) OR ([EmergencyContactPhone] IS NULL AND @original_EmergencyContactPhone IS NULL)) AND (([EmergencyContact] = @original_EmergencyContact) OR ([EmergencyContact] IS NULL AND @original_EmergencyContact IS NULL)) AND (([LicenseState] = @original_LicenseState) OR ([LicenseState] IS NULL AND @original_LicenseState IS NULL)) AND (([LicenseNum] = @original_LicenseNum) OR ([LicenseNum] IS NULL AND @original_LicenseNum IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([YearsRented] = @original_YearsRented) OR ([YearsRented] IS NULL AND @original_YearsRented IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([MonthPayment] = @original_MonthPayment) OR ([MonthPayment] IS NULL AND @original_MonthPayment IS NULL)) AND (([VehicleMake] = @original_VehicleMake) OR ([VehicleMake] IS NULL AND @original_VehicleMake IS NULL)) AND (([VehicleColor] = @original_VehicleColor) OR ([VehicleColor] IS NULL AND @original_VehicleColor IS NULL)) AND (([CurrentStreetAddress] = @original_CurrentStreetAddress) OR ([CurrentStreetAddress] IS NULL AND @original_CurrentStreetAddress IS NULL)) AND (([PresentLandlord] = @original_PresentLandlord) OR ([PresentLandlord] IS NULL AND @original_PresentLandlord IS NULL)) AND (([PetAge2] = @original_PetAge2) OR ([PetAge2] IS NULL AND @original_PetAge2 IS NULL)) AND (([PetBreed2] = @original_PetBreed2) OR ([PetBreed2] IS NULL AND @original_PetBreed2 IS NULL)) AND (([PetWeight2] = @original_PetWeight2) OR ([PetWeight2] IS NULL AND @original_PetWeight2 IS NULL)) AND (([PetKind2] = @original_PetKind2) OR ([PetKind2] IS NULL AND @original_PetKind2 IS NULL)) AND (([PetAge1] = @original_PetAge1) OR ([PetAge1] IS NULL AND @original_PetAge1 IS NULL)) AND (([PetBreed1] = @original_PetBreed1) OR ([PetBreed1] IS NULL AND @original_PetBreed1 IS NULL))" 
            InsertCommand="INSERT INTO [Applicant] ([LastName], [FirstName], [MiddleName], [SSN], [DriverLicenseNumber], [DriverLicenseState], [GrossSalary], [EmployerContact], [EmployerNumber], [FullTime], [DOH], [DOB], [Employer], [PhoneNumber], [SalarySchedule], [OtherIncome], [OtherIncomeType], [CriminalConvictions], [nonHumanOccupants], [CriminalExplain], [PetKind1], [PetWeight1], [VehicleYear], [LandLordPhone], [EmergencyRelationship], [EmergencyContactPhone], [EmergencyContact], [LicenseState], [LicenseNum], [City], [State], [YearsRented], [Zip], [MonthPayment], [VehicleMake], [VehicleColor], [CurrentStreetAddress], [PresentLandlord], [PetAge2], [PetBreed2], [PetWeight2], [PetKind2], [PetAge1], [PetBreed1], [UserInput], [inputDate]) VALUES (@LastName, @FirstName, @MiddleName, @SSN, @DriverLicenseNumber, @DriverLicenseState, @GrossSalary, @EmployerContact, @EmployerNumber, @FullTime, @DOH, @DOB, @Employer, @PhoneNumber, @SalarySchedule, @OtherIncome, @OtherIncomeType, @CriminalConvictions, @nonHumanOccupants, @CriminalExplain, @PetKind1, @PetWeight1, @VehicleYear, @LandLordPhone, @EmergencyRelationship, @EmergencyContactPhone, @EmergencyContact, @LicenseState, @LicenseNum, @City, @State, @YearsRented, @Zip, @MonthPayment, @VehicleMake, @VehicleColor, @CurrentStreetAddress, @PresentLandlord, @PetAge2, @PetBreed2, @PetWeight2, @PetKind2, @PetAge1, @PetBreed1, @UserInput, @inputDate)" 
            OldValuesParameterFormatString="original_{0}" 
            
            
            
            UpdateCommand="UPDATE [Applicant] SET [LastName] = @LastName, [FirstName] = @FirstName, [MiddleName] = @MiddleName, [SSN] = @SSN, [DriverLicenseNumber] = @DriverLicenseNumber, [DriverLicenseState] = @DriverLicenseState, [GrossSalary] = @GrossSalary, [EmployerContact] = @EmployerContact, [EmployerNumber] = @EmployerNumber, [FullTime] = @FullTime, [DOH] = @DOH, [DOB] = @DOB, [Employer] = @Employer, [PhoneNumber] = @PhoneNumber, [SalarySchedule] = @SalarySchedule, [OtherIncome] = @OtherIncome, [OtherIncomeType] = @OtherIncomeType, [CriminalConvictions] = @CriminalConvictions, [nonHumanOccupants] = @nonHumanOccupants, [CriminalExplain] = @CriminalExplain, [PetKind1] = @PetKind1, [PetWeight1] = @PetWeight1, [VehicleYear] = @VehicleYear, [LandLordPhone] = @LandLordPhone, [EmergencyRelationship] = @EmergencyRelationship, [EmergencyContactPhone] = @EmergencyContactPhone, [EmergencyContact] = @EmergencyContact, [LicenseState] = @LicenseState, [LicenseNum] = @LicenseNum, [City] = @City, [State] = @State, [YearsRented] = @YearsRented, [Zip] = @Zip, [MonthPayment] = @MonthPayment, [VehicleMake] = @VehicleMake, [VehicleColor] = @VehicleColor, [CurrentStreetAddress] = @CurrentStreetAddress, [PresentLandlord] = @PresentLandlord, [PetAge2] = @PetAge2, [PetBreed2] = @PetBreed2, [PetWeight2] = @PetWeight2, [PetKind2] = @PetKind2, [PetAge1] = @PetAge1, [PetBreed1] = @PetBreed1, [UserInput] = @UserInput, [InputDate] = @InputDate WHERE [ApplicantID] = @original_ApplicantID AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([DriverLicenseNumber] = @original_DriverLicenseNumber) OR ([DriverLicenseNumber] IS NULL AND @original_DriverLicenseNumber IS NULL)) AND (([DriverLicenseState] = @original_DriverLicenseState) OR ([DriverLicenseState] IS NULL AND @original_DriverLicenseState IS NULL)) AND (([GrossSalary] = @original_GrossSalary) OR ([GrossSalary] IS NULL AND @original_GrossSalary IS NULL)) AND (([EmployerContact] = @original_EmployerContact) OR ([EmployerContact] IS NULL AND @original_EmployerContact IS NULL)) AND (([EmployerNumber] = @original_EmployerNumber) OR ([EmployerNumber] IS NULL AND @original_EmployerNumber IS NULL)) AND (([FullTime] = @original_FullTime) OR ([FullTime] IS NULL AND @original_FullTime IS NULL)) AND (([DOH] = @original_DOH) OR ([DOH] IS NULL AND @original_DOH IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Employer] = @original_Employer) OR ([Employer] IS NULL AND @original_Employer IS NULL)) AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL)) AND (([SalarySchedule] = @original_SalarySchedule) OR ([SalarySchedule] IS NULL AND @original_SalarySchedule IS NULL)) AND (([OtherIncome] = @original_OtherIncome) OR ([OtherIncome] IS NULL AND @original_OtherIncome IS NULL)) AND (([OtherIncomeType] = @original_OtherIncomeType) OR ([OtherIncomeType] IS NULL AND @original_OtherIncomeType IS NULL)) AND (([CriminalConvictions] = @original_CriminalConvictions) OR ([CriminalConvictions] IS NULL AND @original_CriminalConvictions IS NULL)) AND (([nonHumanOccupants] = @original_nonHumanOccupants) OR ([nonHumanOccupants] IS NULL AND @original_nonHumanOccupants IS NULL)) AND (([CriminalExplain] = @original_CriminalExplain) OR ([CriminalExplain] IS NULL AND @original_CriminalExplain IS NULL)) AND (([PetKind1] = @original_PetKind1) OR ([PetKind1] IS NULL AND @original_PetKind1 IS NULL)) AND (([PetWeight1] = @original_PetWeight1) OR ([PetWeight1] IS NULL AND @original_PetWeight1 IS NULL)) AND (([VehicleYear] = @original_VehicleYear) OR ([VehicleYear] IS NULL AND @original_VehicleYear IS NULL)) AND (([LandLordPhone] = @original_LandLordPhone) OR ([LandLordPhone] IS NULL AND @original_LandLordPhone IS NULL)) AND (([EmergencyRelationship] = @original_EmergencyRelationship) OR ([EmergencyRelationship] IS NULL AND @original_EmergencyRelationship IS NULL)) AND (([EmergencyContactPhone] = @original_EmergencyContactPhone) OR ([EmergencyContactPhone] IS NULL AND @original_EmergencyContactPhone IS NULL)) AND (([EmergencyContact] = @original_EmergencyContact) OR ([EmergencyContact] IS NULL AND @original_EmergencyContact IS NULL)) AND (([LicenseState] = @original_LicenseState) OR ([LicenseState] IS NULL AND @original_LicenseState IS NULL)) AND (([LicenseNum] = @original_LicenseNum) OR ([LicenseNum] IS NULL AND @original_LicenseNum IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([YearsRented] = @original_YearsRented) OR ([YearsRented] IS NULL AND @original_YearsRented IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([MonthPayment] = @original_MonthPayment) OR ([MonthPayment] IS NULL AND @original_MonthPayment IS NULL)) AND (([VehicleMake] = @original_VehicleMake) OR ([VehicleMake] IS NULL AND @original_VehicleMake IS NULL)) AND (([VehicleColor] = @original_VehicleColor) OR ([VehicleColor] IS NULL AND @original_VehicleColor IS NULL)) AND (([CurrentStreetAddress] = @original_CurrentStreetAddress) OR ([CurrentStreetAddress] IS NULL AND @original_CurrentStreetAddress IS NULL)) AND (([PresentLandlord] = @original_PresentLandlord) OR ([PresentLandlord] IS NULL AND @original_PresentLandlord IS NULL)) AND (([PetAge2] = @original_PetAge2) OR ([PetAge2] IS NULL AND @original_PetAge2 IS NULL)) AND (([PetBreed2] = @original_PetBreed2) OR ([PetBreed2] IS NULL AND @original_PetBreed2 IS NULL)) AND (([PetWeight2] = @original_PetWeight2) OR ([PetWeight2] IS NULL AND @original_PetWeight2 IS NULL)) AND (([PetKind2] = @original_PetKind2) OR ([PetKind2] IS NULL AND @original_PetKind2 IS NULL)) AND (([PetAge1] = @original_PetAge1) OR ([PetAge1] IS NULL AND @original_PetAge1 IS NULL)) AND (([PetBreed1] = @original_PetBreed1) OR ([PetBreed1] IS NULL AND @original_PetBreed1 IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ApplicantID" Type="Int64" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_MiddleName" Type="String" />
                <asp:Parameter Name="original_SSN" Type="String" />
                <asp:Parameter Name="original_DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="original_DriverLicenseState" Type="String" />
                <asp:Parameter Name="original_GrossSalary" Type="String" />
                <asp:Parameter Name="original_EmployerContact" Type="String" />
                <asp:Parameter Name="original_EmployerNumber" Type="String" />
                <asp:Parameter Name="original_FullTime" Type="Boolean" />
                <asp:Parameter Name="original_DOH" DbType="DateTime" />
                <asp:Parameter Name="original_DOB" DbType="DateTime" />
                <asp:Parameter Name="original_Employer" Type="String" />
                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                <asp:Parameter Name="original_SalarySchedule" Type="String" />
                <asp:Parameter Name="original_OtherIncome" Type="String" />
                <asp:Parameter Name="original_OtherIncomeType" Type="String" />
                <asp:Parameter Name="original_CriminalConvictions" Type="Boolean" />
                <asp:Parameter Name="original_nonHumanOccupants" Type="Boolean" />
                <asp:Parameter Name="original_CriminalExplain" Type="String" />
                <asp:Parameter Name="original_PetKind1" Type="String" />
                <asp:Parameter Name="original_PetWeight1" Type="String" />
                <asp:Parameter Name="original_VehicleYear" Type="String" />
                <asp:Parameter Name="original_LandLordPhone" Type="String" />
                <asp:Parameter Name="original_EmergencyRelationship" Type="String" />
                <asp:Parameter Name="original_EmergencyContactPhone" Type="String" />
                <asp:Parameter Name="original_EmergencyContact" Type="String" />
                <asp:Parameter Name="original_LicenseState" Type="String" />
                <asp:Parameter Name="original_LicenseNum" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_YearsRented" Type="String" />
                <asp:Parameter Name="original_Zip" Type="String" />
                <asp:Parameter Name="original_MonthPayment" Type="String" />
                <asp:Parameter Name="original_VehicleMake" Type="String" />
                <asp:Parameter Name="original_VehicleColor" Type="String" />
                <asp:Parameter Name="original_CurrentStreetAddress" Type="String" />
                <asp:Parameter Name="original_PresentLandlord" Type="String" />
                <asp:Parameter Name="original_PetAge2" Type="String" />
                <asp:Parameter Name="original_PetBreed2" Type="String" />
                <asp:Parameter Name="original_PetWeight2" Type="String" />
                <asp:Parameter Name="original_PetKind2" Type="String" />
                <asp:Parameter Name="original_PetAge1" Type="String" />
                <asp:Parameter Name="original_PetBreed1" Type="String" />
            </DeleteParameters>
             <SelectParameters>
                <asp:ControlParameter ControlID="ddlSelectApplicant" DefaultValue="1" Name="ApplicantID" 
                    PropertyName="SelectedValue" Type="Int64" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="MiddleName" Type="String" />
                <asp:Parameter Name="SSN" Type="String" />
                <asp:Parameter Name="DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="DriverLicenseState" Type="String" />
                <asp:Parameter Name="GrossSalary" Type="String" />
                <asp:Parameter Name="EmployerContact" Type="String" />
                <asp:Parameter Name="EmployerNumber" Type="String" />
                <asp:Parameter Name="FullTime" Type="Boolean" />
                <asp:Parameter Name="DOH" DbType="DateTime" />
                <asp:Parameter Name="DOB" DbType="DateTime" />
                <asp:Parameter Name="Employer" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="SalarySchedule" Type="String" />
                <asp:Parameter Name="OtherIncome" Type="String" />
                <asp:Parameter Name="OtherIncomeType" Type="String" />
                <asp:Parameter Name="CriminalConvictions" Type="Boolean" />
                <asp:Parameter Name="nonHumanOccupants" Type="Boolean" />
                <asp:Parameter Name="CriminalExplain" Type="String" />
                <asp:Parameter Name="PetKind1" Type="String" />
                <asp:Parameter Name="PetWeight1" Type="String" />
                <asp:Parameter Name="VehicleYear" Type="String" />
                <asp:Parameter Name="LandLordPhone" Type="String" />
                <asp:Parameter Name="EmergencyRelationship" Type="String" />
                <asp:Parameter Name="EmergencyContactPhone" Type="String" />
                <asp:Parameter Name="EmergencyContact" Type="String" />
                <asp:Parameter Name="LicenseState" Type="String" />
                <asp:Parameter Name="LicenseNum" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="YearsRented" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="MonthPayment" Type="String" />
                <asp:Parameter Name="VehicleMake" Type="String" />
                <asp:Parameter Name="VehicleColor" Type="String" />
                <asp:Parameter Name="CurrentStreetAddress" Type="String" />
                <asp:Parameter Name="PresentLandlord" Type="String" />
                <asp:Parameter Name="PetAge2" Type="String" />
                <asp:Parameter Name="PetBreed2" Type="String" />
                <asp:Parameter Name="PetWeight2" Type="String" />
                <asp:Parameter Name="PetKind2" Type="String" />
                <asp:Parameter Name="PetAge1" Type="String" />
                <asp:Parameter Name="PetBreed1" Type="String" />
				<asp:Parameter Name="userInput" Type="String" />
                <asp:Parameter Name="inputDate" DbType="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="MiddleName" Type="String" />
                <asp:Parameter Name="SSN" Type="String" />
                <asp:Parameter Name="DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="DriverLicenseState" Type="String" />
                <asp:Parameter Name="GrossSalary" Type="String" />
                <asp:Parameter Name="EmployerContact" Type="String" />
                <asp:Parameter Name="EmployerNumber" Type="String" />
                <asp:Parameter Name="FullTime" Type="Boolean" />
                <asp:Parameter Name="DOH" DbType="DateTime" />
                <asp:Parameter Name="DOB" DbType="DateTime" />
                <asp:Parameter Name="Employer" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="SalarySchedule" Type="String" />
                <asp:Parameter Name="OtherIncome" Type="String" />
                <asp:Parameter Name="OtherIncomeType" Type="String" />
                <asp:Parameter Name="CriminalConvictions" Type="Boolean" />
                <asp:Parameter Name="nonHumanOccupants" Type="Boolean" />
                <asp:Parameter Name="CriminalExplain" Type="String" />
                <asp:Parameter Name="PetKind1" Type="String" />
                <asp:Parameter Name="PetWeight1" Type="String" />
                <asp:Parameter Name="VehicleYear" Type="String" />
                <asp:Parameter Name="LandLordPhone" Type="String" />
                <asp:Parameter Name="EmergencyRelationship" Type="String" />
                <asp:Parameter Name="EmergencyContactPhone" Type="String" />
                <asp:Parameter Name="EmergencyContact" Type="String" />
                <asp:Parameter Name="LicenseState" Type="String" />
                <asp:Parameter Name="LicenseNum" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="YearsRented" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="MonthPayment" Type="String" />
                <asp:Parameter Name="VehicleMake" Type="String" />
                <asp:Parameter Name="VehicleColor" Type="String" />
                <asp:Parameter Name="CurrentStreetAddress" Type="String" />
                <asp:Parameter Name="PresentLandlord" Type="String" />
                <asp:Parameter Name="PetAge2" Type="String" />
                <asp:Parameter Name="PetBreed2" Type="String" />
                <asp:Parameter Name="PetWeight2" Type="String" />
                <asp:Parameter Name="PetKind2" Type="String" />
                <asp:Parameter Name="PetAge1" Type="String" />
                <asp:Parameter Name="PetBreed1" Type="String" />
                <asp:Parameter Name="original_ApplicantID" Type="Int64" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_MiddleName" Type="String" />
                <asp:Parameter Name="original_SSN" Type="String" />
                <asp:Parameter Name="original_DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="original_DriverLicenseState" Type="String" />
                <asp:Parameter Name="original_GrossSalary" Type="String" />
                <asp:Parameter Name="original_EmployerContact" Type="String" />
                <asp:Parameter Name="original_EmployerNumber" Type="String" />
                <asp:Parameter Name="original_FullTime" Type="Boolean" />
                <asp:Parameter DbType="DateTime" Name="original_DOH" />
                <asp:Parameter DbType="DateTime" Name="original_DOB" />
                <asp:Parameter Name="original_Employer" Type="String" />
                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                <asp:Parameter Name="original_SalarySchedule" Type="String" />
                <asp:Parameter Name="original_OtherIncome" Type="String" />
                <asp:Parameter Name="original_OtherIncomeType" Type="String" />
                <asp:Parameter Name="original_CriminalConvictions" Type="Boolean" />
                <asp:Parameter Name="original_nonHumanOccupants" Type="Boolean" />
                <asp:Parameter Name="original_CriminalExplain" Type="String" />
                <asp:Parameter Name="original_PetKind1" Type="String" />
                <asp:Parameter Name="original_PetWeight1" Type="String" />
                <asp:Parameter Name="original_VehicleYear" Type="String" />
                <asp:Parameter Name="original_LandLordPhone" Type="String" />
                <asp:Parameter Name="original_EmergencyRelationship" Type="String" />
                <asp:Parameter Name="original_EmergencyContactPhone" Type="String" />
                <asp:Parameter Name="original_EmergencyContact" Type="String" />
                <asp:Parameter Name="original_LicenseState" Type="String" />
                <asp:Parameter Name="original_LicenseNum" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_YearsRented" Type="String" />
                <asp:Parameter Name="original_Zip" Type="String" />
                <asp:Parameter Name="original_MonthPayment" Type="String" />
                <asp:Parameter Name="original_VehicleMake" Type="String" />
                <asp:Parameter Name="original_VehicleColor" Type="String" />
                <asp:Parameter Name="original_CurrentStreetAddress" Type="String" />
                <asp:Parameter Name="original_PresentLandlord" Type="String" />
                <asp:Parameter Name="original_PetAge2" Type="String" />
                <asp:Parameter Name="original_PetBreed2" Type="String" />
                <asp:Parameter Name="original_PetWeight2" Type="String" />
                <asp:Parameter Name="original_PetKind2" Type="String" />
                <asp:Parameter Name="original_PetAge1" Type="String" />
                <asp:Parameter Name="original_PetBreed1" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
</p>
    <p>
        &nbsp;</p>
</asp:Content>