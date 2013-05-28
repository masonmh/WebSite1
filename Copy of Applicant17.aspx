<%@ Page Title="RNA Application" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Copy of Applicant17.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Attach Applicants to Screening Form</h2>
    <p>
        <strong>Select a Screening Form, if starting on this page:</strong></p>
    <p>
      <asp:DropDownList ID="ddlSelectApplicant" runat="server" AutoPostBack="True" 
            DataSourceID="sqlDSddlApplicant" DataTextField="CombinedName"
            DataValueField="ScreeningID" Height="18px" Width="415px">
        </asp:DropDownList>
        <asp:Button ID="btnRefresh" runat="server" 
            PostBackUrl="~/Applicant17.aspx" Text="Refresh Page" />
        </p>
    <p>
        &nbsp;<asp:Panel ID="Panel1" runat="server">
       <div style="background-color:#E8E8E8; padding-left:auto; padding-right:auto">
        <strong>
        <asp:Label ID="lblInitialQ0" runat="server" 
            Text="Current Screening Form"></asp:Label>
        </strong>:</p><p>
        <asp:SqlDataSource ID="sqlDSddlApplicant" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                     
            
            SelectCommand="select screeningID, CAST(screening.screeningID as VarChar(255))+' '+CAST(screening.screeningdate as VarChar(10)) as CombinedName from screening where screening.ScreeningStatus = '4' OR screening.ScreeningStatus IS NULL">
        </asp:SqlDataSource>
    </p>
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
        <asp:Label ID="lblInitialQ" runat="server" 
            Text="All Applicants on Screening Form"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ApplicantID" DataSourceID="SqlDataSource3" BackColor="White" 
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
            CellSpacing="1" GridLines="None" Font-Bold="False">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="ApplicantID" HeaderText="ApplicantID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ApplicantID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" 
                    SortExpression="MiddleName" />
                <asp:BoundField DataField="SSN" HeaderText="SSN" 
                    SortExpression="SSN" />
                <asp:BoundField DataField="DriverLicenseNumber" 
                    HeaderText="DriverLicenseNumber" SortExpression="DriverLicenseNumber" />
                <asp:BoundField DataField="DriverLicenseState" HeaderText="DriverLicenseState" 
                    SortExpression="DriverLicenseState" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                    SortExpression="PhoneNumber" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Employer" HeaderText="Employer" 
                    SortExpression="Employer" />
                <asp:BoundField DataField="DOH" HeaderText="DOH" SortExpression="DOH" />
                <asp:CheckBoxField DataField="FullTime" HeaderText="FullTime" 
                    SortExpression="FullTime" />
                <asp:BoundField DataField="EmployerNumber" HeaderText="EmployerNumber" 
                    SortExpression="EmployerNumber" />
                <asp:BoundField DataField="EmployerContact" HeaderText="EmployerContact" 
                    SortExpression="EmployerContact" />
                <asp:BoundField DataField="GrossSalary" HeaderText="GrossSalary" 
                    SortExpression="GrossSalary" />
                <asp:BoundField DataField="SalarySchedule" HeaderText="SalarySchedule" 
                    SortExpression="SalarySchedule" />
                <asp:BoundField DataField="OtherIncome" HeaderText="OtherIncome" 
                    SortExpression="OtherIncome" />
                <asp:BoundField DataField="OtherIncomeType" HeaderText="OtherIncomeType" 
                    SortExpression="OtherIncomeType" />
                <asp:CheckBoxField DataField="CriminalConvictions" 
                    HeaderText="CriminalConvictions" SortExpression="CriminalConvictions" />
                <asp:BoundField DataField="CriminalExplain" HeaderText="CriminalExplain" 
                    SortExpression="CriminalExplain" />
                <asp:BoundField DataField="PresentLandlord" HeaderText="PresentLandlord" 
                    SortExpression="PresentLandlord" />
                <asp:BoundField DataField="CurrentStreetAddress" 
                    HeaderText="CurrentStreetAddress" SortExpression="CurrentStreetAddress" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                <asp:BoundField DataField="YearsRented" HeaderText="YearsRented" 
                    SortExpression="YearsRented" />
                <asp:BoundField DataField="MonthPayment" HeaderText="MonthPayment" 
                    SortExpression="MonthPayment" />
                <asp:BoundField DataField="VehicleMake" HeaderText="VehicleMake" 
                    SortExpression="VehicleMake" />
                <asp:BoundField DataField="VehicleColor" HeaderText="VehicleColor" 
                    SortExpression="VehicleColor" />
                <asp:BoundField DataField="VehicleYear" HeaderText="VehicleYear" 
                    SortExpression="VehicleYear" />
                <asp:BoundField DataField="LicenseNum" HeaderText="LicenseNum" 
                    SortExpression="LicenseNum" />
                <asp:BoundField DataField="LicenseState" HeaderText="LicenseState" 
                    SortExpression="LicenseState" />
                <asp:BoundField DataField="EmergencyContact" HeaderText="EmergencyContact" 
                    SortExpression="EmergencyContact" />
                <asp:BoundField DataField="EmergencyContactPhone" 
                    HeaderText="EmergencyContactPhone" SortExpression="EmergencyContactPhone" />
                <asp:BoundField DataField="EmergencyRelationship" 
                    HeaderText="EmergencyRelationship" SortExpression="EmergencyRelationship" />
                <asp:BoundField DataField="LandLordPhone" HeaderText="LandLordPhone" 
                    SortExpression="LandLordPhone" />
                <asp:BoundField DataField="UserInput" HeaderText="UserInput" 
                    SortExpression="UserInput" />
                <asp:BoundField DataField="InputDate" HeaderText="InputDate" 
                    SortExpression="InputDate" />
                <asp:BoundField DataField="screeningid" HeaderText="screeningid" 
                    SortExpression="screeningid" />
                <asp:BoundField DataField="SSIIncome" HeaderText="SSIIncome" 
                    SortExpression="SSIIncome" />
                <asp:BoundField DataField="SSBIncome" HeaderText="SSBIncome" 
                    SortExpression="SSBIncome" />
                <asp:BoundField DataField="CreditScore" HeaderText="CreditScore" 
                    SortExpression="CreditScore" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            
            SelectCommand="SELECT * FROM [Applicant] WHERE ([screeningid] = @screeningid)" 
            DeleteCommand="DELETE FROM [Applicant] WHERE [ApplicantID] = @ApplicantID" 
            InsertCommand="INSERT INTO [Applicant] ([FirstName], [LastName], [MiddleName], [SSN], [DriverLicenseNumber], [DriverLicenseState], [PhoneNumber], [DOB], [Employer], [DOH], [FullTime], [EmployerNumber], [EmployerContact], [GrossSalary], [SalarySchedule], [OtherIncome], [OtherIncomeType], [CriminalConvictions], [CriminalExplain], [PresentLandlord], [CurrentStreetAddress], [City], [State], [Zip], [YearsRented], [MonthPayment], [VehicleMake], [VehicleColor], [VehicleYear], [LicenseNum], [LicenseState], [EmergencyContact], [EmergencyContactPhone], [EmergencyRelationship], [LandLordPhone], [UserInput], [InputDate], [screeningid], [SSIIncome], [SSBIncome], [CreditScore]) VALUES (@FirstName, @LastName, @MiddleName, @SSN, @DriverLicenseNumber, @DriverLicenseState, @PhoneNumber, @DOB, @Employer, @DOH, @FullTime, @EmployerNumber, @EmployerContact, @GrossSalary, @SalarySchedule, @OtherIncome, @OtherIncomeType, @CriminalConvictions, @CriminalExplain, @PresentLandlord, @CurrentStreetAddress, @City, @State, @Zip, @YearsRented, @MonthPayment, @VehicleMake, @VehicleColor, @VehicleYear, @LicenseNum, @LicenseState, @EmergencyContact, @EmergencyContactPhone, @EmergencyRelationship, @LandLordPhone, @UserInput, @InputDate, @screeningid, @SSIIncome, @SSBIncome, @CreditScore)" 
            UpdateCommand="UPDATE [Applicant] SET [FirstName] = @FirstName, [LastName] = @LastName, [MiddleName] = @MiddleName, [SSN] = @SSN, [DriverLicenseNumber] = @DriverLicenseNumber, [DriverLicenseState] = @DriverLicenseState, [PhoneNumber] = @PhoneNumber, [DOB] = @DOB, [Employer] = @Employer, [DOH] = @DOH, [FullTime] = @FullTime, [EmployerNumber] = @EmployerNumber, [EmployerContact] = @EmployerContact, [GrossSalary] = @GrossSalary, [SalarySchedule] = @SalarySchedule, [OtherIncome] = @OtherIncome, [OtherIncomeType] = @OtherIncomeType, [CriminalConvictions] = @CriminalConvictions, [CriminalExplain] = @CriminalExplain, [PresentLandlord] = @PresentLandlord, [CurrentStreetAddress] = @CurrentStreetAddress, [City] = @City, [State] = @State, [Zip] = @Zip, [YearsRented] = @YearsRented, [MonthPayment] = @MonthPayment, [VehicleMake] = @VehicleMake, [VehicleColor] = @VehicleColor, [VehicleYear] = @VehicleYear, [LicenseNum] = @LicenseNum, [LicenseState] = @LicenseState, [EmergencyContact] = @EmergencyContact, [EmergencyContactPhone] = @EmergencyContactPhone, [EmergencyRelationship] = @EmergencyRelationship, [LandLordPhone] = @LandLordPhone, [UserInput] = @UserInput, [InputDate] = @InputDate, [screeningid] = @screeningid, [SSIIncome] = @SSIIncome, [SSBIncome] = @SSBIncome, [CreditScore] = @CreditScore WHERE [ApplicantID] = @ApplicantID">
            <DeleteParameters>
                <asp:Parameter Name="ApplicantID" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="MiddleName" Type="String" />
                <asp:Parameter Name="SSN" Type="String" />
                <asp:Parameter Name="DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="DriverLicenseState" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Employer" Type="String" />
                <asp:Parameter DbType="Date" Name="DOH" />
                <asp:Parameter Name="FullTime" Type="Boolean" />
                <asp:Parameter Name="EmployerNumber" Type="String" />
                <asp:Parameter Name="EmployerContact" Type="String" />
                <asp:Parameter Name="GrossSalary" Type="Decimal" />
                <asp:Parameter Name="SalarySchedule" Type="String" />
                <asp:Parameter Name="OtherIncome" Type="Decimal" />
                <asp:Parameter Name="OtherIncomeType" Type="String" />
                <asp:Parameter Name="CriminalConvictions" Type="Boolean" />
                <asp:Parameter Name="CriminalExplain" Type="String" />
                <asp:Parameter Name="PresentLandlord" Type="String" />
                <asp:Parameter Name="CurrentStreetAddress" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="YearsRented" Type="String" />
                <asp:Parameter Name="MonthPayment" Type="String" />
                <asp:Parameter Name="VehicleMake" Type="String" />
                <asp:Parameter Name="VehicleColor" Type="String" />
                <asp:Parameter Name="VehicleYear" Type="String" />
                <asp:Parameter Name="LicenseNum" Type="String" />
                <asp:Parameter Name="LicenseState" Type="String" />
                <asp:Parameter Name="EmergencyContact" Type="String" />
                <asp:Parameter Name="EmergencyContactPhone" Type="String" />
                <asp:Parameter Name="EmergencyRelationship" Type="String" />
                <asp:Parameter Name="LandLordPhone" Type="String" />
                <asp:Parameter Name="UserInput" Type="String" />
                <asp:Parameter Name="InputDate" Type="DateTime" />
                <asp:Parameter Name="screeningid" Type="Int64" />
                <asp:Parameter Name="SSIIncome" Type="Decimal" />
                <asp:Parameter Name="SSBIncome" Type="Decimal" />
                <asp:Parameter Name="CreditScore" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="screeningid" SessionField="newscreeningid" 
                    Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="MiddleName" Type="String" />
                <asp:Parameter Name="SSN" Type="String" />
                <asp:Parameter Name="DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="DriverLicenseState" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Employer" Type="String" />
                <asp:Parameter DbType="Date" Name="DOH" />
                <asp:Parameter Name="FullTime" Type="Boolean" />
                <asp:Parameter Name="EmployerNumber" Type="String" />
                <asp:Parameter Name="EmployerContact" Type="String" />
                <asp:Parameter Name="GrossSalary" Type="Decimal" />
                <asp:Parameter Name="SalarySchedule" Type="String" />
                <asp:Parameter Name="OtherIncome" Type="Decimal" />
                <asp:Parameter Name="OtherIncomeType" Type="String" />
                <asp:Parameter Name="CriminalConvictions" Type="Boolean" />
                <asp:Parameter Name="CriminalExplain" Type="String" />
                <asp:Parameter Name="PresentLandlord" Type="String" />
                <asp:Parameter Name="CurrentStreetAddress" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="YearsRented" Type="String" />
                <asp:Parameter Name="MonthPayment" Type="String" />
                <asp:Parameter Name="VehicleMake" Type="String" />
                <asp:Parameter Name="VehicleColor" Type="String" />
                <asp:Parameter Name="VehicleYear" Type="String" />
                <asp:Parameter Name="LicenseNum" Type="String" />
                <asp:Parameter Name="LicenseState" Type="String" />
                <asp:Parameter Name="EmergencyContact" Type="String" />
                <asp:Parameter Name="EmergencyContactPhone" Type="String" />
                <asp:Parameter Name="EmergencyRelationship" Type="String" />
                <asp:Parameter Name="LandLordPhone" Type="String" />
                <asp:Parameter Name="UserInput" Type="String" />
                <asp:Parameter Name="InputDate" Type="DateTime" />
                <asp:Parameter Name="screeningid" Type="Int64" />
                <asp:Parameter Name="SSIIncome" Type="Decimal" />
                <asp:Parameter Name="SSBIncome" Type="Decimal" />
                <asp:Parameter Name="CreditScore" Type="String" />
                <asp:Parameter Name="ApplicantID" Type="Int64" />
            </UpdateParameters>
         
        </asp:SqlDataSource>
    </p>
    </div>
    <hr />
    <p>
        <asp:Label ID="lblApplicants" runat="server" 
            
            
            Text="Enter the applicant(s) information and click Insert.  Repeat for each applicant on the file.  Up to 6 applicants are allowed (Q 3-4)."></asp:Label>
    </p>
    <div style="float:left">
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ApplicantID" 
            DataSourceID="SqlDataSource1" DefaultMode="Insert" 
            style="margin-right: 0px">
            <EditItemTemplate>
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" 
                    Text='<%# Bind("FirstName") %>' />
                <br />
                
                MiddleName:
                <asp:TextBox ID="MiddleNameTextBox" runat="server" 
                    Text='<%# Bind("MiddleName") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" 
                    Text='<%# Bind("LastName") %>' />
                <br />
                SSN:
                <asp:TextBox ID="SSNTextBox" runat="server" 
                    Text='<%# Bind("SSN") %>' />
                <br />
                ApplicantID:
                <asp:Label ID="ApplicantIDLabel1" runat="server" 
                    Text='<%# Eval("ApplicantID") %>' />
                <br />
                DriverLicenseNumber:
                <asp:TextBox ID="DriverLicenseNumberTextBox" runat="server" 
                    Text='<%# Bind("DriverLicenseNumber") %>' />
                <br />
                DriverLicenseState:
                <asp:TextBox ID="DriverLicenseStateTextBox" runat="server" 
                    Text='<%# Bind("DriverLicenseState") %>' />
                <br />
                GrossSalary:
                <asp:TextBox ID="GrossSalaryTextBox" runat="server" 
                    Text='<%# Bind("GrossSalary") %>' />
                <br />
                EmployerContact:
                <asp:TextBox ID="EmployerContactTextBox" runat="server" 
                    Text='<%# Bind("EmployerContact") %>' />
                <br />
                EmployerNumber:
                <asp:TextBox ID="EmployerNumberTextBox" runat="server" 
                    Text='<%# Bind("EmployerNumber") %>' />
                <br />
                FullTime:
                <asp:CheckBox ID="FullTimeCheckBox" runat="server" 
                    Checked='<%# Bind("FullTime") %>' />
                <br />
                DOH:
                <asp:TextBox ID="DOHTextBox" runat="server" 
                    Text='<%# Bind("DOH") %>' />
                <br />
                Employer:
                <asp:TextBox ID="EmployerTextBox" runat="server" 
                    Text='<%# Bind("Employer") %>' />
                <br />
                DOB:
                <asp:TextBox ID="DOBTextBox" runat="server" 
                    Text='<%# Bind("DOB") %>' />
                <br />
                PhoneNumber:
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("PhoneNumber") %>' />
                <br />
                OtherIncome:
                <asp:TextBox ID="OtherIncomeTextBox" runat="server" 
                    Text='<%# Bind("OtherIncome") %>' />
                <br />
                
                SalarySchedule:
                <asp:TextBox ID="SalaryScheduleTextBox" runat="server" 
                    Text='<%# Bind("SalarySchedule") %>' />
                <br />
                OtherIncomeType:
                <asp:TextBox ID="OtherIncomeTypeTextBox" runat="server" 
                    Text='<%# Bind("OtherIncomeType") %>' />
                <br />
                CriminalConvictions:
                <asp:CheckBox ID="CriminalConvictionsCheckBox" runat="server" 
                    Checked='<%# Bind("CriminalConvictions") %>' />
                <br />
                CriminalExplain:
                <asp:TextBox ID="CriminalExplainTextBox" runat="server" 
                    Text='<%# Bind("CriminalExplain") %>' />
                <br />
                SSIIncome:
                <asp:TextBox ID="SSIIncomeTextBox" runat="server" 
                    Text='<%# Bind("SSIIncome") %>' />
                <br />
                SSBIncome:
                <asp:TextBox ID="SSBIncomeTextBox" runat="server" 
                    Text='<%# Bind("SSBIncome") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update"/>
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
			
            <InsertItemTemplate>
                
                 <table style="width:100%;">
                     <tr>
                        
                         <td align="right">
                             First Name:</td>
                         <td>
                             <asp:TextBox ID="FirstNameTextBox" runat="server" 
                                 Text='<%# Bind("FirstName") %>' />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ControlToValidate="FirstNameTextBox" Display="Dynamic" 
                                 ErrorMessage="First Name is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             Middle Name:</td>
                         <td>
                             <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("MiddleName") %>' />
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             Last Name:</td>
                         <td>
                             <asp:TextBox ID="LastNameTextBox" runat="server" 
                                 Text='<%# Bind("LastName") %>' />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                 ControlToValidate="LastNameTextBox" Display="Dynamic" 
                                 ErrorMessage="Last Name is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             SSN (XXXXXXXXX): </td>
                         <td>
                             <asp:TextBox ID="SSNTextBox" runat="server" Text='<%# Bind("SSN") %>' />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                 ControlToValidate="SSNTextBox" Display="Dynamic" ErrorMessage="Invalid SSN" 
                                 ValidationExpression="\d{9}" ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                 ControlToValidate="SSNTextBox" Display="Dynamic" 
                                 ErrorMessage="SSN is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             Driver License Number:</td>
                         <td>
                             <asp:TextBox ID="DriverLicenseNumberTextBox" runat="server" 
                                 Text='<%# Bind("DriverLicenseNumber") %>' />
                             
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             Driver License State:</td>
                         <td>
                             <asp:DropDownList ID="dropdownlist3" runat="server" 
                                 DataSourceID="SqlDataSourceState" DataTextField="State" DataValueField="State" 
                                 SelectedValue='<%# Bind("State") %>'>
                             </asp:DropDownList>
                             <asp:TextBox ID="DriverLicenseStateTextBox" runat="server" 
                                 Text='<%# Bind("DriverLicenseState") %>' Visible="False" />
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             Phone Number(XXXXXXXXXX, no country code):</td>
                         <td>
                             <asp:TextBox ID="PhoneNumberTextBox" runat="server" 
                                 Text='<%# Bind("PhoneNumber") %>' />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                 ControlToValidate="PhoneNumberTextBox" Display="Dynamic" 
                                 ErrorMessage="Invalid Phone Number" 
                                 ValidationExpression="\d{10}"
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             &nbsp;Date of Birth (mm/dd/yyyy):</td>
                         <td>
                             <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' 
                                 />
                             <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                 TargetControlID="DOBTextBox" />
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                 ControlToValidate="DOBTextBox" Display="Dynamic" 
                                 ErrorMessage="Invalid Date" 
                                 ValidationExpression="^[0,1]?\d{1}\/(([0-2]?\d{1})|([3][0,1]{1}))\/(([1]{1}[9]{1}[1-9]{1}\d{1})|([2-9]{1}\d{3}))$"
                                 ValidationGroup="AllValidators" EnableClientScript="False"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                 ControlToValidate="DOBTextBox" Display="Dynamic" 
                                 ErrorMessage="DOB is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             &nbsp;Gross Salary:</td>
                         <td>
                             <asp:TextBox ID="GrossSalaryTextBox" runat="server" 
                                 Text='<%# Bind("GrossSalary") %>' />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                 ControlToValidate="GrossSalaryTextBox" Display="Dynamic" 
                                 ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                 ControlToValidate="GrossSalaryTextBox" Display="Dynamic" 
                                 ErrorMessage="Salary is Required.  Enter 0 if no salary" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             &nbsp;Salary Schedule:</td>
                         <td>
                             <asp:DropDownList ID="DropDownList1" runat="server" 
                                 SelectedValue='<%# Bind("SalarySchedule") %>' Width="164px">
                                 <asp:ListItem Value="0">Select a Schedule</asp:ListItem>
                                 <asp:ListItem Value="1">Weekly</asp:ListItem>
                                 <asp:ListItem Value="2">Biweekly</asp:ListItem>
                                 <asp:ListItem Value="3">Monthly</asp:ListItem>
                             </asp:DropDownList>
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             &nbsp;</td>
                         <td>
                             <asp:CheckBox ID="ckbxFullTime" runat="server" 
                                 Checked='<%# Bind("FullTime") %>' Text="Full Time?" />
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             Date of Hire (mm/dd/yyyy): </td>
                         <td>
                             <asp:TextBox ID="DOHTextBox" runat="server" Text='<%# Bind("DOH") %>' 
                                 />
                             <asp:CalendarExtender ID="CalendarExtender2" runat="server" 
                                 TargetControlID="DOHTextBox" />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator9" 
                                 runat="server" ControlToValidate="DOHTextBox" Display="Dynamic" 
                                 ErrorMessage="Invalid Date" 
                                 ValidationExpression="^[0,1]?\d{1}\/(([0-2]?\d{1})|([3][0,1]{1}))\/(([1]{1}[9]{1}[1-9]{1}\d{1})|([2-9]{1}\d{3}))$" 
                                 ValidationGroup="AllValidators" EnableClientScript="False"></asp:RegularExpressionValidator>
                            </td>
                           
                     </tr>
                     <tr>
                         <td align="right">
                             &nbsp;<br />SSI Income: </td>
                         <td>
                             <asp:TextBox ID="SSIIncomeTextBox" runat="server" 
                                 Text='<%# Bind("SSIIncome") %>' />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                 ControlToValidate="SSIIncomeTextBox" Display="Dynamic" 
                                 ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                 ControlToValidate="SSIIncomeTextBox" Display="Dynamic" 
                                 ErrorMessage="Salary is Required.  Enter 0 if no salary" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                         
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             SSB Income:</td>
                         <td>
                             <asp:TextBox ID="SSBIncomeTextBox" runat="server" 
                                 Text='<%# Bind("SSBIncome") %>' />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                 ControlToValidate="SSBIncomeTextBox" Display="Dynamic" 
                                 ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                 ControlToValidate="SSBIncomeTextBox" Display="Dynamic" 
                                 ErrorMessage="Salary is Required.  Enter 0 if no salary" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                         
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             Other Income
                             (Please enter in monthly increments, only long term income)</td>
                         <td>
                             <asp:TextBox ID="OtherIncomeTextBox" runat="server" 
                                 Text='<%# Bind("OtherIncome") %>' />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                 ControlToValidate="OtherIncomeTextBox" Display="Dynamic" 
                                 ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                 ControlToValidate="OtherIncomeTextBox" Display="Dynamic" 
                                 ErrorMessage="Salary is Required.  Enter 0 if no salary" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                         
                         </td>
                     </tr>
                     <tr>
                         <td align="right">
                             Other Income Type:</td>
                         <td>
                             <asp:TextBox ID="TextBox21" runat="server" 
                                 Text='<%# Bind("OtherIncomeType") %>' TextMode="MultiLine" />
                         </td>
                     </tr>
                     <tr><td align="right">Employer:</td><td>
                         <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("Employer") %>' />
                         </td></tr>
                     <tr><td align="right">Employer Contact:</td><td>
                         <asp:TextBox ID="EmployerContactTextBox" runat="server" 
                             Text='<%# Bind("EmployerContact") %>' />
                          </td></tr>
                     <tr><td align="right">Employer Number (XXXXXXXXXX, no country code): </td><td>
                         <asp:TextBox ID="EmployerNumberTextBox" runat="server" 
                             Text='<%# Bind("EmployerNumber") %>' />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                             ControlToValidate="EmployerNumberTextBox" Display="Dynamic" 
                             ErrorMessage="Invalid Phone Number" 
                             ValidationExpression="\d{10}" 
                             ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                         </td></tr>
                     <tr><td align="right">Criminal Convictions:</td><td>
                         <asp:CheckBox ID="CriminalConvictionsCheckBox0" runat="server" 
                             Checked='<%# Bind("CriminalConvictions") %>' />
                         </td></tr>
                     <tr><td align="right">Criminal Explain:</td><td>
                         <asp:TextBox ID="CriminalExplainTextBox" runat="server" 
                             Text='<%# Bind("CriminalExplain") %>' />
                         </td></tr>
                 
                <tr><td align="right">
                 &nbsp;<asp:SqlDataSource ID="SqlDataSourceState" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                &nbsp;<br />&nbsp;<asp:Button ID="InsertButton" runat="server" 
                        ValidationGroup= "AllValidators" CausesValidation="True" 
                    CommandName="Insert" Text="Add Applicant to Form" 
                        />
                 &nbsp;<asp:Button ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td></tr>
</table>
		   </InsertItemTemplate>
            <ItemTemplate>
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" 
                    Text='<%# Bind("FirstName") %>' />
                <br />
                MiddleName:
                <asp:Label ID="MiddleNameLabel" runat="server" 
                    Text='<%# Bind("MiddleName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" 
                    Text='<%# Bind("LastName") %>' />
                <br />
                SSN:
                <asp:Label ID="SSNLabel" runat="server" 
                    Text='<%# Bind("SSN") %>' />
                <br />
                ApplicantID:
                <asp:Label ID="ApplicantIDLabel" runat="server" 
                    Text='<%# Eval("ApplicantID") %>' />
                <br />
                DriverLicenseNumber:
                <asp:Label ID="DriverLicenseNumberLabel" runat="server" 
                    Text='<%# Bind("DriverLicenseNumber") %>' />
                <br />
                DriverLicenseState:
                <asp:Label ID="DriverLicenseStateLabel" runat="server" 
                    Text='<%# Bind("DriverLicenseState") %>' />
                <br />
                GrossSalary:
                <asp:Label ID="GrossSalaryLabel" runat="server" 
                    Text='<%# Bind("GrossSalary") %>' />
                <br />
                EmployerContact:
                <asp:Label ID="EmployerContactLabel" runat="server" 
                    Text='<%# Bind("EmployerContact") %>' />
                <br />
                EmployerNumber:
                <asp:Label ID="EmployerNumberLabel" runat="server" 
                    Text='<%# Bind("EmployerNumber") %>' />
                <br />
                FullTime:
                <asp:CheckBox ID="FullTimeCheckBox0" runat="server" 
                    Checked='<%# Bind("FullTime") %>' Enabled="false" />
                <br />
                DOH:
                <asp:Label ID="DOHLabel" runat="server" 
                    Text='<%# Bind("DOH") %>' />
                <br />
                Employer:
                <asp:Label ID="EmployerLabel" runat="server" 
                    Text='<%# Bind("Employer") %>' />
                <br />
                DOB:
                <asp:Label ID="DOBLabel" runat="server" 
                    Text='<%# Bind("DOB") %>' />
                <br />
                PhoneNumber:
                <asp:Label ID="PhoneNumberLabel" runat="server" 
                    Text='<%# Bind("PhoneNumber") %>' />
                <br />
                OtherIncome:
                <asp:Label ID="OtherIncomeLabel" runat="server" 
                    Text='<%# Bind("OtherIncome") %>' />
                <br />
                SalarySchedule:
                <asp:Label ID="SalaryScheduleLabel" runat="server" 
                    Text='<%# Bind("SalarySchedule") %>' />
                <br />
                OtherIncomeType:
                <asp:Label ID="OtherIncomeTypeLabel" runat="server" 
                    Text='<%# Bind("OtherIncomeType") %>' />
                <br />
               
                CriminalConvictions:
                <asp:CheckBox ID="CriminalConvictionsCheckBox1" runat="server" 
                    Checked='<%# Bind("CriminalConvictions") %>' Enabled="false" />
                <br />
               
                CriminalExplain:
                <asp:Label ID="CriminalExplainLabel" runat="server" 
                    Text='<%# Bind("CriminalExplain") %>' />
                <br />
                SSIIncome:
                <asp:Label ID="SSIIncomeLabel" runat="server" Text='<%# Bind("SSIIncome") %>' />
                <br />
                SSBIncome:
                <asp:Label ID="SSBIncomeLabel" runat="server" 
                    Text='<%# Bind("SSBIncome") %>' />
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
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            DeleteCommand="DELETE FROM [Applicant] WHERE [ApplicantID] = @original_ApplicantID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([DriverLicenseNumber] = @original_DriverLicenseNumber) OR ([DriverLicenseNumber] IS NULL AND @original_DriverLicenseNumber IS NULL)) AND (([DriverLicenseState] = @original_DriverLicenseState) OR ([DriverLicenseState] IS NULL AND @original_DriverLicenseState IS NULL)) AND (([GrossSalary] = @original_GrossSalary) OR ([GrossSalary] IS NULL AND @original_GrossSalary IS NULL)) AND (([EmployerContact] = @original_EmployerContact) OR ([EmployerContact] IS NULL AND @original_EmployerContact IS NULL)) AND (([EmployerNumber] = @original_EmployerNumber) OR ([EmployerNumber] IS NULL AND @original_EmployerNumber IS NULL)) AND (([FullTime] = @original_FullTime) OR ([FullTime] IS NULL AND @original_FullTime IS NULL)) AND (([DOH] = @original_DOH) OR ([DOH] IS NULL AND @original_DOH IS NULL)) AND (([Employer] = @original_Employer) OR ([Employer] IS NULL AND @original_Employer IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL)) AND (([OtherIncome] = @original_OtherIncome) OR ([OtherIncome] IS NULL AND @original_OtherIncome IS NULL)) AND (([SalarySchedule] = @original_SalarySchedule) OR ([SalarySchedule] IS NULL AND @original_SalarySchedule IS NULL)) AND (([OtherIncomeType] = @original_OtherIncomeType) OR ([OtherIncomeType] IS NULL AND @original_OtherIncomeType IS NULL)) AND (([CriminalConvictions] = @original_CriminalConvictions) OR ([CriminalConvictions] IS NULL AND @original_CriminalConvictions IS NULL)) AND (([CriminalExplain] = @original_CriminalExplain) OR ([CriminalExplain] IS NULL AND @original_CriminalExplain IS NULL)) AND (([SSIIncome] = @original_SSIIncome) OR ([SSIIncome] IS NULL AND @original_SSIIncome IS NULL)) AND (([SSBIncome] = @original_SSBIncome) OR ([SSBIncome] IS NULL AND @original_SSBIncome IS NULL))" 
            InsertCommand="INSERT INTO [Applicant] ([FirstName], [MiddleName], [LastName], [SSN], [DriverLicenseNumber], [DriverLicenseState], [GrossSalary], [EmployerContact], [EmployerNumber], [FullTime], [DOH], [Employer], [DOB], [PhoneNumber], [OtherIncome], [SalarySchedule], [OtherIncomeType], [CriminalConvictions], [CriminalExplain], [screeningID], [SSIIncome], [SSBIncome], [UserInput], [InputDate]) VALUES (@FirstName, @MiddleName, @LastName, @SSN, @DriverLicenseNumber, @DriverLicenseState, @GrossSalary, @EmployerContact, @EmployerNumber, @FullTime, @DOH, @Employer, @DOB, @PhoneNumber, @OtherIncome, @SalarySchedule, @OtherIncomeType, @CriminalConvictions, @CriminalExplain, @screeningID, @SSIIncome, @SSBIncome, @UserInput, @InputDate)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [FirstName], [MiddleName], [LastName], [SSN], [ApplicantID], [DriverLicenseNumber], [DriverLicenseState], [GrossSalary], [EmployerContact], [EmployerNumber], [FullTime], [DOH], [Employer], [DOB], [PhoneNumber], [OtherIncome], [SalarySchedule], [OtherIncomeType], [CriminalConvictions], [CriminalExplain], [SSIIncome], [SSBIncome] FROM [Applicant]" 
       
            UpdateCommand="UPDATE [Applicant] SET [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [SSN] = @SSN, [DriverLicenseNumber] = @DriverLicenseNumber, [DriverLicenseState] = @DriverLicenseState, [GrossSalary] = @GrossSalary, [EmployerContact] = @EmployerContact, [EmployerNumber] = @EmployerNumber, [FullTime] = @FullTime, [DOH] = @DOH, [Employer] = @Employer, [DOB] = @DOB, [PhoneNumber] = @PhoneNumber, [OtherIncome] = @OtherIncome, [SalarySchedule] = @SalarySchedule, [OtherIncomeType] = @OtherIncomeType, [CriminalConvictions] = @CriminalConvictions, [CriminalExplain] = @CriminalExplain, [SSIIncome] = @SSIIncome, [SSBIncome] = @SSBIncome WHERE [ApplicantID] = @original_ApplicantID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([DriverLicenseNumber] = @original_DriverLicenseNumber) OR ([DriverLicenseNumber] IS NULL AND @original_DriverLicenseNumber IS NULL)) AND (([DriverLicenseState] = @original_DriverLicenseState) OR ([DriverLicenseState] IS NULL AND @original_DriverLicenseState IS NULL)) AND (([GrossSalary] = @original_GrossSalary) OR ([GrossSalary] IS NULL AND @original_GrossSalary IS NULL)) AND (([EmployerContact] = @original_EmployerContact) OR ([EmployerContact] IS NULL AND @original_EmployerContact IS NULL)) AND (([EmployerNumber] = @original_EmployerNumber) OR ([EmployerNumber] IS NULL AND @original_EmployerNumber IS NULL)) AND (([FullTime] = @original_FullTime) OR ([FullTime] IS NULL AND @original_FullTime IS NULL)) AND (([DOH] = @original_DOH) OR ([DOH] IS NULL AND @original_DOH IS NULL)) AND (([Employer] = @original_Employer) OR ([Employer] IS NULL AND @original_Employer IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL)) AND (([OtherIncome] = @original_OtherIncome) OR ([OtherIncome] IS NULL AND @original_OtherIncome IS NULL)) AND (([SalarySchedule] = @original_SalarySchedule) OR ([SalarySchedule] IS NULL AND @original_SalarySchedule IS NULL)) AND (([OtherIncomeType] = @original_OtherIncomeType) OR ([OtherIncomeType] IS NULL AND @original_OtherIncomeType IS NULL)) AND (([CriminalConvictions] = @original_CriminalConvictions) OR ([CriminalConvictions] IS NULL AND @original_CriminalConvictions IS NULL)) AND (([CriminalExplain] = @original_CriminalExplain) OR ([CriminalExplain] IS NULL AND @original_CriminalExplain IS NULL)) AND (([SSIIncome] = @original_SSIIncome) OR ([SSIIncome] IS NULL AND @original_SSIIncome IS NULL)) AND (([SSBIncome] = @original_SSBIncome) OR ([SSBIncome] IS NULL AND @original_SSBIncome IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ApplicantID" Type="Int64" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_MiddleName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_SSN" Type="String" />
                <asp:Parameter Name="original_DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="original_DriverLicenseState" Type="String" />
                <asp:Parameter Name="original_GrossSalary" Type="Decimal" />
                <asp:Parameter Name="original_EmployerContact" Type="String" />
                <asp:Parameter Name="original_EmployerNumber" Type="String" />
                <asp:Parameter Name="original_FullTime" Type="Boolean" />
                <asp:Parameter Name="original_DOH" DbType="Date" />
                <asp:Parameter Name="original_Employer" Type="String" />
                <asp:Parameter Name="original_DOB" DbType="Date" />
                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                <asp:Parameter Name="original_OtherIncome" Type="Decimal" />
                <asp:Parameter Name="original_SalarySchedule" Type="String" />
                <asp:Parameter Name="original_OtherIncomeType" Type="String" />
             
               <asp:Parameter Name="original_CriminalConvictions" Type="Boolean" />
                <asp:Parameter Name="original_CriminalExplain" Type="String" />
                <asp:Parameter Name="original_SSIIncome" Type="Decimal" />
                <asp:Parameter Name="original_SSBIncome" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="MiddleName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="SSN" Type="String" />
                <asp:Parameter Name="DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="DriverLicenseState" Type="String" />
                
                <asp:Parameter Name="EmployerContact" Type="String" />
                <asp:Parameter Name="EmployerNumber" Type="String" />
                <asp:Parameter Name="FullTime" Type="Boolean" />
                <asp:Parameter Name="DOH" DbType="Date" />
                <asp:Parameter Name="Employer" Type="String" />
                <asp:Parameter Name="DOB" DbType="Date" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="OtherIncome" Type="Decimal" />
                <asp:Parameter Name="SalarySchedule" Type="String" />
                <asp:Parameter Name="OtherIncomeType" Type="String" />
                <asp:Parameter Name="CriminalConvictions" Type="Boolean" />
                <asp:Parameter Name="CriminalExplain" Type="String" />

                <asp:Parameter Name="SSIIncome" Type="Decimal" />
                <asp:Parameter Name="SSBIncome" Type="Decimal" />
                <asp:Parameter Name="GrossSalary" Type="Decimal" />
                <asp:Parameter Name="UserInput" Type="String" />
                <asp:Parameter Name="InputDate" DBType="Date" />
                 <asp:Parameter Name="ScreeningID" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="MiddleName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="SSN" Type="String" />
                <asp:Parameter Name="DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="DriverLicenseState" Type="String" />
                <asp:Parameter Name="GrossSalary" Type="Decimal" />
                <asp:Parameter Name="EmployerContact" Type="String" />
                <asp:Parameter Name="EmployerNumber" Type="String" />
                <asp:Parameter Name="FullTime" Type="Boolean" />
                <asp:Parameter Name="DOH" DbType="Date" />
                <asp:Parameter Name="Employer" Type="String" />
                <asp:Parameter Name="DOB" DbType="Date" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter Name="OtherIncome" Type="Decimal" />
                <asp:Parameter Name="SalarySchedule" Type="String" />
                <asp:Parameter Name="OtherIncomeType" Type="String" />
          
                <asp:Parameter Name="CriminalConvictions" Type="Boolean" />
            
                <asp:Parameter Name="CriminalExplain" Type="String" />
                <asp:Parameter Name="SSIIncome" Type="Decimal" />
                <asp:Parameter Name="SSBIncome" Type="Decimal" />
                <asp:Parameter Name="original_ApplicantID" Type="Int64" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_MiddleName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
             
                <asp:Parameter Name="original_SSN" Type="String" />
                <asp:Parameter Name="original_DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="original_DriverLicenseState" Type="String" />
                <asp:Parameter Name="original_GrossSalary" Type="Decimal" />
                <asp:Parameter Name="original_EmployerContact" Type="String" />
                <asp:Parameter Name="original_EmployerNumber" Type="String" />
                <asp:Parameter Name="original_FullTime" Type="Boolean" />
                <asp:Parameter Name="original_DOH" DbType="Date" />
                <asp:Parameter Name="original_Employer" Type="String" />
                <asp:Parameter Name="original_DOB" DbType="Date" />
                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                <asp:Parameter Name="original_OtherIncome" Type="Decimal" />
                <asp:Parameter Name="original_SalarySchedule" Type="String" />
                <asp:Parameter Name="original_OtherIncomeType" Type="String" />
                <asp:Parameter Name="original_CriminalConvictions" Type="Boolean" />
                <asp:Parameter Name="original_CriminalExplain" Type="String" />
                <asp:Parameter Name="original_SSIIncome" Type="Decimal" />
                <asp:Parameter Name="original_SSBIncome" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="~/FindCompatibleProperties.aspx">Click For Next Step and Find Matching Properties</asp:LinkButton>
    </p>
    </div>
    <div style="float:left" align="center"> 
<h2>The information entered on this screen will complete the information currently residing on Rental Verification form below:</h2>
<br />
<br />
    <img src="Documents/34.png" align="middle" style="height: 234px; width: 837px" />
    </div>

    </asp:Panel>
</asp:Content>