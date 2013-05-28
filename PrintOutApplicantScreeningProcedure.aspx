<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PrintOutApplicantScreeningProcedure.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="~/Styles/HardCopy.css" rel="stylesheet" type="text/css" />
    <title>Cash Only Lease</title>
    <style type="text/css">

 p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	        margin-left: 0in;
            margin-right: 0in;
            margin-top: 0in;
        }
p.MsoBodyTextIndent3
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:13.5pt;
	margin-bottom:.0001pt;
	text-align:justify;
	text-indent:-13.5pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	}
        .shape {behavior:url(#default#VML);}
        h2
	{margin-bottom:.0001pt;
	text-align:justify;
	page-break-after:avoid;
	font-size:14.0pt;
	font-family:"Times New Roman","serif";
	font-weight:normal;
            margin-left: 0in;
            margin-right: 0in;
            margin-top: 0in;
        }
a:link
	{color:blue;
	text-decoration:underline;
	text-underline:single;
        }
        .style1
        {
            width: 811px;
            height: 74px;
        }
        </style>
</head>
<body class="documentTop">
    <div class="pagePrint">
    <form id="form1" runat="server">
    

    <p>
        <img class="style1" src="Documents/headerProce.png" /></p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ScreeningID,Expr1" DataSourceID="SqlDataSource1" 
        Visible="False">
        <Columns>
            <asp:BoundField DataField="ScreeningID" HeaderText="ScreeningID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ScreeningID" />
            <asp:BoundField DataField="ScreeningDate" HeaderText="ScreeningDate" 
                SortExpression="ScreeningDate" />
            <asp:CheckBoxField DataField="FullTime" HeaderText="FullTime" 
                SortExpression="FullTime" />
            <asp:BoundField DataField="PayCycle" HeaderText="PayCycle" 
                SortExpression="PayCycle" />
            <asp:CheckBoxField DataField="PassedEmpCheck" HeaderText="PassedEmpCheck" 
                SortExpression="PassedEmpCheck" />
            <asp:BoundField DataField="EmploymentCheckComments" 
                HeaderText="EmploymentCheckComments" SortExpression="EmploymentCheckComments" />
            <asp:CheckBoxField DataField="CriminalConviction" 
                HeaderText="CriminalConviction" SortExpression="CriminalConviction" />
            <asp:BoundField DataField="CriminalConvictionReason" 
                HeaderText="CriminalConvictionReason" 
                SortExpression="CriminalConvictionReason" />
            <asp:BoundField DataField="CriminalCheckComments" 
                HeaderText="CriminalCheckComments" SortExpression="CriminalCheckComments" />
            <asp:BoundField DataField="PresentLandlord" HeaderText="PresentLandlord" 
                SortExpression="PresentLandlord" />
            <asp:BoundField DataField="PresentLandlordPhone" 
                HeaderText="PresentLandlordPhone" SortExpression="PresentLandlordPhone" />
            <asp:BoundField DataField="PassedLandlordCheck" 
                HeaderText="PassedLandlordCheck" SortExpression="PassedLandlordCheck" />
            <asp:BoundField DataField="PassedLandlordComments" 
                HeaderText="PassedLandlordComments" SortExpression="PassedLandlordComments" />
            <asp:CheckBoxField DataField="BGFeeCollected" HeaderText="BGFeeCollected" 
                SortExpression="BGFeeCollected" />
            <asp:CheckBoxField DataField="BackgroundCheckPasses" 
                HeaderText="BackgroundCheckPasses" SortExpression="BackgroundCheckPasses" />
            <asp:BoundField DataField="BackgroundCheckComments" 
                HeaderText="BackgroundCheckComments" SortExpression="BackgroundCheckComments" />
            <asp:CheckBoxField DataField="CreditCheckPassed" HeaderText="CreditCheckPassed" 
                SortExpression="CreditCheckPassed" />
            <asp:BoundField DataField="CreditCheckComments" 
                HeaderText="CreditCheckComments" SortExpression="CreditCheckComments" />
            <asp:CheckBoxField DataField="CoSignerAlso" HeaderText="CoSignerAlso" 
                SortExpression="CoSignerAlso" />
            <asp:BoundField DataField="EmergencyContact" HeaderText="EmergencyContact" 
                SortExpression="EmergencyContact" />
            <asp:BoundField DataField="EmergencyConactRelation" 
                HeaderText="EmergencyConactRelation" SortExpression="EmergencyConactRelation" />
            <asp:BoundField DataField="EmergencyContactPhone" 
                HeaderText="EmergencyContactPhone" SortExpression="EmergencyContactPhone" />
            <asp:BoundField DataField="RelativeNotLivingwithYou" 
                HeaderText="RelativeNotLivingwithYou" 
                SortExpression="RelativeNotLivingwithYou" />
            <asp:BoundField DataField="RelationshipRelative" 
                HeaderText="RelationshipRelative" SortExpression="RelationshipRelative" />
            <asp:BoundField DataField="RelationshipNumber" HeaderText="RelationshipNumber" 
                SortExpression="RelationshipNumber" />
            <asp:BoundField DataField="EnteredBy" HeaderText="EnteredBy" 
                SortExpression="EnteredBy" />
            <asp:BoundField DataField="LeasingApprovedBy" HeaderText="LeasingApprovedBy" 
                SortExpression="LeasingApprovedBy" />
            <asp:BoundField DataField="LeasingApprovalDate" 
                HeaderText="LeasingApprovalDate" SortExpression="LeasingApprovalDate" />
            <asp:BoundField DataField="LeasingAgentComments" 
                HeaderText="LeasingAgentComments" SortExpression="LeasingAgentComments" />
            <asp:BoundField DataField="ManagementApprovedBy" 
                HeaderText="ManagementApprovedBy" SortExpression="ManagementApprovedBy" />
            <asp:BoundField DataField="ManagementApprovalDate" 
                HeaderText="ManagementApprovalDate" SortExpression="ManagementApprovalDate" />
            <asp:BoundField DataField="ManagementComments" HeaderText="ManagementComments" 
                SortExpression="ManagementComments" />
            <asp:BoundField DataField="CreditScore" HeaderText="CreditScore" 
                SortExpression="CreditScore" />
            <asp:BoundField DataField="StatusOfScreening" HeaderText="StatusOfScreening" 
                SortExpression="StatusOfScreening" />
            <asp:CheckBoxField DataField="TenantNHOUnderstand" 
                HeaderText="TenantNHOUnderstand" SortExpression="TenantNHOUnderstand" />
            <asp:BoundField DataField="TenantIsPhysicallyAble" 
                HeaderText="TenantIsPhysicallyAble" SortExpression="TenantIsPhysicallyAble" />
            <asp:BoundField DataField="TenantMeetsMinimum" HeaderText="TenantMeetsMinimum" 
                SortExpression="TenantMeetsMinimum" />
            <asp:CheckBoxField DataField="TenantIsEmployee" HeaderText="TenantIsEmployee" 
                SortExpression="TenantIsEmployee" />
            <asp:BoundField DataField="FindOutAboutUs" HeaderText="FindOutAboutUs" 
                SortExpression="FindOutAboutUs" />
            <asp:BoundField DataField="ScreeningTime" HeaderText="ScreeningTime" 
                SortExpression="ScreeningTime" />
            <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" 
                SortExpression="PropertyID" />
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
            <asp:BoundField DataField="RequestLease" HeaderText="RequestLease" 
                SortExpression="RequestLease" />
            <asp:BoundField DataField="TargetRent" HeaderText="TargetRent" 
                SortExpression="TargetRent" />
            <asp:BoundField DataField="OtherDesiredFeatures" 
                HeaderText="OtherDesiredFeatures" SortExpression="OtherDesiredFeatures" />
            <asp:CheckBoxField DataField="BrokenLease" HeaderText="BrokenLease" 
                SortExpression="BrokenLease" />
            <asp:BoundField DataField="BrokenLeaseWhy" HeaderText="BrokenLeaseWhy" 
                SortExpression="BrokenLeaseWhy" />
            <asp:BoundField DataField="ApplicantID" HeaderText="ApplicantID" 
                SortExpression="ApplicantID" />
            <asp:BoundField DataField="ApplicantID2" HeaderText="ApplicantID2" 
                SortExpression="ApplicantID2" />
            <asp:BoundField DataField="ApplicantID3" HeaderText="ApplicantID3" 
                SortExpression="ApplicantID3" />
            <asp:BoundField DataField="ApplicantID4" HeaderText="ApplicantID4" 
                SortExpression="ApplicantID4" />
            <asp:BoundField DataField="ApplicantID5" HeaderText="ApplicantID5" 
                SortExpression="ApplicantID5" />
            <asp:BoundField DataField="ApplicantID6" HeaderText="ApplicantID6" 
                SortExpression="ApplicantID6" />
            <asp:BoundField DataField="OthOccRelationship1" 
                HeaderText="OthOccRelationship1" SortExpression="OthOccRelationship1" />
            <asp:BoundField DataField="OthOccName1" HeaderText="OthOccName1" 
                SortExpression="OthOccName1" />
            <asp:BoundField DataField="OthOccAge1" HeaderText="OthOccAge1" 
                SortExpression="OthOccAge1" />
            <asp:BoundField DataField="OthOccRelationship2" 
                HeaderText="OthOccRelationship2" SortExpression="OthOccRelationship2" />
            <asp:BoundField DataField="OthOccName2" HeaderText="OthOccName2" 
                SortExpression="OthOccName2" />
            <asp:BoundField DataField="OthOccAge2" HeaderText="OthOccAge2" 
                SortExpression="OthOccAge2" />
            <asp:BoundField DataField="OthOccName3" HeaderText="OthOccName3" 
                SortExpression="OthOccName3" />
            <asp:BoundField DataField="OthOccAge3" HeaderText="OthOccAge3" 
                SortExpression="OthOccAge3" />
            <asp:BoundField DataField="OthOccRelationship3" 
                HeaderText="OthOccRelationship3" SortExpression="OthOccRelationship3" />
            <asp:BoundField DataField="ApplicationFeeAmount" 
                HeaderText="ApplicationFeeAmount" SortExpression="ApplicationFeeAmount" />
            <asp:BoundField DataField="ApplicationFeeDate" HeaderText="ApplicationFeeDate" 
                SortExpression="ApplicationFeeDate" />
            <asp:BoundField DataField="DepAmountRecieved" HeaderText="DepAmountRecieved" 
                SortExpression="DepAmountRecieved" />
            <asp:BoundField DataField="DepDateRecieved" HeaderText="DepDateRecieved" 
                SortExpression="DepDateRecieved" />
            <asp:CheckBoxField DataField="BackgroundComplete" 
                HeaderText="BackgroundComplete" SortExpression="BackgroundComplete" />
            <asp:CheckBoxField DataField="CreditReport" HeaderText="CreditReport" 
                SortExpression="CreditReport" />
            <asp:CheckBoxField DataField="ProofOfIncome" HeaderText="ProofOfIncome" 
                SortExpression="ProofOfIncome" />
            <asp:CheckBoxField DataField="EmployerVerification" 
                HeaderText="EmployerVerification" SortExpression="EmployerVerification" />
            <asp:CheckBoxField DataField="LandlordReference" HeaderText="LandlordReference" 
                SortExpression="LandlordReference" />
            <asp:CheckBoxField DataField="PastTenant" HeaderText="PastTenant" 
                SortExpression="PastTenant" />
            <asp:CheckBoxField DataField="Approved" HeaderText="Approved" 
                SortExpression="Approved" />
            <asp:BoundField DataField="ReviewedBy" HeaderText="ReviewedBy" 
                SortExpression="ReviewedBy" />
            <asp:BoundField DataField="Classification" HeaderText="Classification" 
                SortExpression="Classification" />
            <asp:BoundField DataField="ProcessedBy" HeaderText="ProcessedBy" 
                SortExpression="ProcessedBy" />
            <asp:BoundField DataField="ProcessedOnDate" HeaderText="ProcessedOnDate" 
                SortExpression="ProcessedOnDate" />
            <asp:BoundField DataField="userInput" HeaderText="userInput" 
                SortExpression="userInput" />
            <asp:BoundField DataField="inputdate" HeaderText="inputdate" 
                SortExpression="inputdate" />
            <asp:CheckBoxField DataField="nonHumanOccupants" HeaderText="nonHumanOccupants" 
                SortExpression="nonHumanOccupants" />
            <asp:BoundField DataField="PetKind1" HeaderText="PetKind1" 
                SortExpression="PetKind1" />
            <asp:BoundField DataField="PetWeight1" HeaderText="PetWeight1" 
                SortExpression="PetWeight1" />
            <asp:BoundField DataField="PetAge1" HeaderText="PetAge1" 
                SortExpression="PetAge1" />
            <asp:BoundField DataField="PetBreed1" HeaderText="PetBreed1" 
                SortExpression="PetBreed1" />
            <asp:BoundField DataField="numnonrelated" HeaderText="numnonrelated" 
                SortExpression="numnonrelated" />
            <asp:CheckBoxField DataField="spouseIncluded" HeaderText="spouseIncluded" 
                SortExpression="spouseIncluded" />
            <asp:BoundField DataField="incomeDifferent" HeaderText="incomeDifferent" 
                SortExpression="incomeDifferent" />
            <asp:BoundField DataField="ScreeningNotes" HeaderText="ScreeningNotes" 
                SortExpression="ScreeningNotes" />
            <asp:CheckBoxField DataField="ApprovedByManagement" 
                HeaderText="ApprovedByManagement" SortExpression="ApprovedByManagement" />
            <asp:BoundField DataField="cosignerID" HeaderText="cosignerID" 
                SortExpression="cosignerID" />
            <asp:BoundField DataField="MaxHouseAmount" HeaderText="MaxHouseAmount" 
                SortExpression="MaxHouseAmount" />
            <asp:BoundField DataField="MaxApt" HeaderText="MaxApt" 
                SortExpression="MaxApt" />
            <asp:BoundField DataField="ScreeningStatus" HeaderText="ScreeningStatus" 
                SortExpression="ScreeningStatus" />
            <asp:BoundField DataField="Demeanor" HeaderText="Demeanor" 
                SortExpression="Demeanor" />
            <asp:BoundField DataField="Expr1" HeaderText="Expr1" InsertVisible="False" 
                ReadOnly="True" SortExpression="Expr1" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" 
                SortExpression="MiddleName" />
            <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
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
            <asp:CheckBoxField DataField="Expr2" HeaderText="Expr2" 
                SortExpression="Expr2" />
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
            <asp:BoundField DataField="Expr3" HeaderText="Expr3" SortExpression="Expr3" />
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
            <asp:BoundField DataField="Expr4" HeaderText="Expr4" SortExpression="Expr4" />
            <asp:BoundField DataField="Expr5" HeaderText="Expr5" SortExpression="Expr5" />
            <asp:BoundField DataField="EmergencyRelationship" 
                HeaderText="EmergencyRelationship" SortExpression="EmergencyRelationship" />
            <asp:BoundField DataField="LandLordPhone" HeaderText="LandLordPhone" 
                SortExpression="LandLordPhone" />
            <asp:BoundField DataField="Expr6" HeaderText="Expr6" SortExpression="Expr6" />
            <asp:BoundField DataField="Expr7" HeaderText="Expr7" SortExpression="Expr7" />
            <asp:BoundField DataField="Expr8" HeaderText="Expr8" SortExpression="Expr8" />
            <asp:BoundField DataField="SSIIncome" HeaderText="SSIIncome" 
                SortExpression="SSIIncome" />
            <asp:BoundField DataField="SSBIncome" HeaderText="SSBIncome" 
                SortExpression="SSBIncome" />
            <asp:BoundField DataField="Expr9" HeaderText="Expr9" SortExpression="Expr9" />
           
            <asp:BoundField DataField="numnonrelated" HeaderText="numnonrelated" 
                    SortExpression="numnonrelated" Visible="False" />
                   
                <asp:CheckBoxField DataField="spouseIncluded" HeaderText="spouseIncluded" 
                    SortExpression="spouseIncluded" />
                    
                    <asp:CheckBoxField DataField="AdditionalPet" HeaderText="AdditionalPet" 
                    SortExpression="AdditionalPet" />
                    <asp:CheckBoxField DataField="PetOver" HeaderText="PetOver" 
                    SortExpression="PetOver" />
                    <asp:CheckBoxField DataField="IncludeWD" HeaderText="IncludeWD" 
                    SortExpression="IncludeWD" />
                    
        </Columns>
    </asp:GridView>
    <p class="MsoNormal">
        <o:p>&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            
            SelectCommand="SELECT Screening.ScreeningID, Screening.ScreeningDate, Screening.FullTime, Screening.PayCycle, Screening.PassedEmpCheck, Screening.EmploymentCheckComments, Screening.CriminalConviction, Screening.CriminalConvictionReason, Screening.CriminalCheckComments, Screening.PresentLandlord, Screening.PresentLandlordPhone, Screening.PassedLandlordCheck, Screening.PassedLandlordComments, Screening.BGFeeCollected, Screening.BackgroundCheckPasses, Screening.BackgroundCheckComments, Screening.CreditCheckPassed, Screening.CreditCheckComments, Screening.CoSignerAlso, Screening.EmergencyContact, Screening.EmergencyConactRelation, Screening.EmergencyContactPhone, Screening.RelativeNotLivingwithYou, Screening.RelationshipRelative, Screening.RelationshipNumber, Screening.EnteredBy, Screening.LeasingApprovedBy, Screening.LeasingApprovalDate, Screening.LeasingAgentComments, Screening.ManagementApprovedBy, Screening.ManagementApprovalDate, Screening.ManagementComments, Screening.CreditScore, Screening.StatusOfScreening, Screening.TenantNHOUnderstand, Screening.TenantIsPhysicallyAble, Screening.TenantMeetsMinimum, Screening.TenantIsEmployee, Screening.FindOutAboutUs, Screening.ScreeningTime, Screening.PropertyID, Screening.DateOfDesiredMoveIn, Screening.NumOfOccupants, Screening.RequiredNumBed, Screening.RequiredNumBath, Screening.RequiredWD, Screening.RequestLease, Screening.TargetRent, Screening.OtherDesiredFeatures, Screening.BrokenLease, Screening.BrokenLeaseWhy, Screening.ApplicantID, Screening.ApplicantID2, Screening.ApplicantID3, Screening.ApplicantID4, Screening.ApplicantID5, Screening.ApplicantID6, Screening.OthOccRelationship1, Screening.OthOccName1, Screening.OthOccAge1, Screening.OthOccRelationship2, Screening.OthOccName2, Screening.OthOccAge2, Screening.OthOccName3, Screening.OthOccAge3, Screening.OthOccRelationship3, Screening.ApplicationFeeAmount, Screening.ApplicationFeeDate, Screening.DepAmountRecieved, Screening.DepDateRecieved, Screening.BackgroundComplete, Screening.CreditReport, Screening.ProofOfIncome, Screening.EmployerVerification, Screening.LandlordReference, Screening.PastTenant, Screening.Approved, Screening.ReviewedBy, Screening.Classification, Screening.ProcessedBy, Screening.ProcessedOnDate, Screening.userInput, Screening.inputdate, Screening.nonHumanOccupants, Screening.PetKind1, Screening.PetWeight1, Screening.PetAge1, Screening.PetBreed1, Screening.numnonrelated, Screening.spouseIncluded, Screening.incomeDifferent, Screening.ScreeningNotes, Screening.ApprovedByManagement, Screening.cosignerID, Screening.MaxHouseAmount, Screening.MaxApt, Screening.ScreeningStatus, Screening.Demeanor, Screening.numnonrelated, Screening.spouseIncluded, Screening.AdditionalPet, Screening.PetOver, Screening.IncludeWD, Applicant.ApplicantID AS Expr1, Applicant.FirstName, Applicant.LastName, Applicant.MiddleName, Applicant.SSN, Applicant.DriverLicenseNumber, Applicant.DriverLicenseState, Applicant.PhoneNumber, Applicant.DOB, Applicant.Employer, Applicant.DOH, Applicant.FullTime AS Expr2, Applicant.EmployerNumber, Applicant.EmployerContact, Applicant.GrossSalary, Applicant.SalarySchedule, Applicant.OtherIncome, Applicant.OtherIncomeType, Applicant.CriminalConvictions, Applicant.CriminalExplain, Applicant.PresentLandlord AS Expr3, Applicant.CurrentStreetAddress, Applicant.City, Applicant.State, Applicant.Zip, Applicant.YearsRented, Applicant.MonthPayment, Applicant.VehicleMake, Applicant.VehicleColor, Applicant.VehicleYear, Applicant.LicenseNum, Applicant.LicenseState, Applicant.EmergencyContact AS Expr4, Applicant.EmergencyContactPhone AS Expr5, Applicant.EmergencyRelationship, Applicant.LandLordPhone, Applicant.UserInput AS Expr6, Applicant.InputDate AS Expr7, Applicant.screeningid AS Expr8, Applicant.SSIIncome, Applicant.SSBIncome, Applicant.CreditScore AS Expr9 FROM Applicant INNER JOIN Screening ON Applicant.screeningid = Screening.ScreeningID WHERE (Screening.ScreeningID = @screeningid)">
            <SelectParameters>
                <asp:SessionParameter Name="screeningID" SessionField="newscreeningid" 
                Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        </o:p>
    </p>
    <p class="MsoNormal">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" Visible="False">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" 
                    SortExpression="MiddleName" />
                <asp:BoundField DataField="GrossSalary" HeaderText="GrossSalary" 
                    SortExpression="GrossSalary" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                    SortExpression="PhoneNumber" />
                <asp:BoundField DataField="SalarySchedule" HeaderText="SalarySchedule" 
                    SortExpression="SalarySchedule" />
                <asp:BoundField DataField="screeningid" HeaderText="screeningid" 
                    SortExpression="screeningid" />
                <asp:BoundField DataField="SSIIncome" HeaderText="SSIIncome" 
                    SortExpression="SSIIncome" />
                <asp:BoundField DataField="SSBIncome" HeaderText="SSBIncome" 
                    SortExpression="SSBIncome" />
                <asp:BoundField DataField="CreditScore" HeaderText="CreditScore" 
                    SortExpression="CreditScore" />
                <asp:BoundField DataField="OtherIncome" HeaderText="OtherIncome" 
                    SortExpression="OtherIncome" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            SelectCommand="SELECT [FirstName], [LastName], [MiddleName], [GrossSalary], [DOB], [PhoneNumber], [SalarySchedule], [screeningid], [SSIIncome], [SSBIncome], [CreditScore], [OtherIncome] FROM [Applicant] WHERE ([screeningid] = @screeningid)">
            <SelectParameters>
                <asp:SessionParameter Name="screeningid" SessionField="newscreeningid" 
                    Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <o:p>
        </o:p>
    </p>
    <p class="MsoNormal">
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="PropertyID" DataSourceID="SqlDataSource3" Visible="False">
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
                <asp:BoundField DataField="GasAdditional" HeaderText="GasAdditional" 
                    SortExpression="GasAdditional" />
                <asp:BoundField DataField="WaterAdditional" HeaderText="WaterAdditional" 
                    SortExpression="WaterAdditional" />
                <asp:BoundField DataField="ElectricAdditional" HeaderText="ElectricAdditional" 
                    SortExpression="ElectricAdditional" />
                <asp:BoundField DataField="BaseRent" HeaderText="BaseRent" 
                    SortExpression="BaseRent" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            SelectCommand="SELECT [PropertyID], [CompleteAddress], [StreetAddress], [AptNum], [City], [State], [Zip], [HousingType], [BaseUtilities], [WashDryCost], [GasInclude], [WaterInclude], [ElectricInclude], [GasAdditional], [WaterAdditional], [ElectricAdditional], [BaseRent] FROM [Property] WHERE ([PropertyID] = @PropertyID)">
            <SelectParameters>
                <asp:SessionParameter Name="PropertyID" SessionField="propertyid" 
                    Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p class="MsoNormal">
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="leaseID" DataSourceID="SqlDataSource4" Visible="False">
            <Columns>
                <asp:BoundField DataField="leaseID" HeaderText="leaseID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="leaseID" />
                <asp:BoundField DataField="propertyID" HeaderText="propertyID" 
                    SortExpression="propertyID" />
                <asp:BoundField DataField="MarketBaseRentA" HeaderText="MarketBaseRentA" 
                    SortExpression="MarketBaseRentA" />
                <asp:BoundField DataField="WasherDryerB" HeaderText="WasherDryerB" 
                    SortExpression="WasherDryerB" />
                <asp:BoundField DataField="ExtraOccC" HeaderText="ExtraOccC" 
                    SortExpression="ExtraOccC" />
                <asp:BoundField DataField="UtilitiesBaseD" HeaderText="UtilitiesBaseD" 
                    SortExpression="UtilitiesBaseD" />
                <asp:BoundField DataField="UtilitiesExtra" HeaderText="UtilitiesExtra" 
                    SortExpression="UtilitiesExtra" />
                <asp:CheckBoxField DataField="electricUtilities" HeaderText="electricUtilities" 
                    SortExpression="electricUtilities" />
                <asp:CheckBoxField DataField="waterUtilities" HeaderText="waterUtilities" 
                    SortExpression="waterUtilities" />
                <asp:CheckBoxField DataField="gasUtilities" HeaderText="gasUtilities" 
                    SortExpression="gasUtilities" />
                <asp:BoundField DataField="SubRentE" HeaderText="SubRentE" 
                    SortExpression="SubRentE" />
                <asp:BoundField DataField="NHOPremiumF" HeaderText="NHOPremiumF" 
                    SortExpression="NHOPremiumF" />
                <asp:BoundField DataField="NHOPremiumF2" HeaderText="NHOPremiumF2" 
                    SortExpression="NHOPremiumF2" />
                <asp:BoundField DataField="MonthLeasePremiumG" HeaderText="MonthLeasePremiumG" 
                    SortExpression="MonthLeasePremiumG" />
                <asp:BoundField DataField="MonthLeasePremiumG2" 
                    HeaderText="MonthLeasePremiumG2" SortExpression="MonthLeasePremiumG2" />
                <asp:BoundField DataField="TotalMonthlyRentH" HeaderText="TotalMonthlyRentH" 
                    SortExpression="TotalMonthlyRentH" />
                <asp:BoundField DataField="SeniorDiscI" HeaderText="SeniorDiscI" 
                    SortExpression="SeniorDiscI" />
                <asp:BoundField DataField="MultiYearI" HeaderText="MultiYearI" 
                    SortExpression="MultiYearI" />
                <asp:BoundField DataField="totalLeasePrepayI" HeaderText="totalLeasePrepayI" 
                    SortExpression="totalLeasePrepayI" />
                <asp:BoundField DataField="OtherDiscountI" HeaderText="OtherDiscountI" 
                    SortExpression="OtherDiscountI" />
                <asp:BoundField DataField="standardSecurityDepH" 
                    HeaderText="standardSecurityDepH" SortExpression="standardSecurityDepH" />
                <asp:BoundField DataField="AltSecDepK" HeaderText="AltSecDepK" 
                    SortExpression="AltSecDepK" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            SelectCommand="SELECT [leaseID], [propertyID], [MarketBaseRentA], [WasherDryerB], [ExtraOccC], [UtilitiesBaseD], [UtilitiesExtra], [electricUtilities], [waterUtilities], [gasUtilities], [SubRentE], [NHOPremiumF], [NHOPremiumF2], [MonthLeasePremiumG], [MonthLeasePremiumG2], [TotalMonthlyRentH], [SeniorDiscI], [MultiYearI], [totalLeasePrepayI], [OtherDiscountI], [standardSecurityDepH], [AltSecDepK] FROM [LeaseForm] WHERE ([screeningID] = @screeningID)">
            <SelectParameters>
                <asp:SessionParameter Name="screeningID" SessionField="newscreeningid" 
                    Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p class="MsoNormal">
        <o:p>
        </o:p>
    </p>
    <h2 >
        <b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        This document is filled out by __<asp:Label 
            ID="Label1" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        _____ Leasing Agent and attached to 
        application pkg.<o:p></o:p></span></b></h2>
    <h2 align="left" style="margin-left:45.0pt;text-align:left;text-indent:-1in;
mso-list:l1 level1 lfo1">
        <![if !supportLists]><b style="mso-bidi-font-weight:
normal"><span style="font-size:12.0pt"><span style="mso-list:Ignore">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A)<span 
            style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span></b><![endif]><span style="font-size:12.0pt">Applicants 
        Name <u><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label2" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:
2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>Date <u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label4" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Extra Occupant<u><span style="mso-tab-count:
3">&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label7" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </h2>
    <h2 align="left" style="margin-left:-45.0pt;text-align:left">
        <span style="font-size:12.0pt"><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>Co-Tenant Name <u><span style="mso-tab-count:3">&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label3" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></u>Date <u><span style="mso-tab-count:
3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label5" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Extra Occupant <u>
        <span style="mso-tab-count:
3">&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label6" runat="server" Font-Underline="True"></asp:Label>
        </span></b>&nbsp;</span></u><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><b style="mso-bidi-font-weight:normal"><u>NOTE ANY EXCEPTIONS</u></b><span 
            style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><u><o:p></o:p></u></span>
    </h2>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:
normal">B)</b><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><u>
        Leasing Agent must verify basic needs and qualification of applicant.</u><span style="mso-tab-count:
3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>Ck. Box if o.k. <o:p></o:p>
    </p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:
normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) </b>Answers to <b style="mso-bidi-font-weight:normal"><u>2,
        <span style="background: yellow; mso-highlight: yellow">3</span> &amp; 5 acceptable 
        &amp; 1 through 7 all complete</u></b> <u><span style="mso-tab-count:5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label8" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="font-size:14.0pt">⁭</span><span 
            style="font-size:16.0pt"><o:p></o:p></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:
normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b)<span style="mso-spacerun:yes">&nbsp; </span></b>Address of unit available to 
        meet need <u><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-spacerun:yes">&nbsp;</span><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label9" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="font-size:14.0pt">⁭<o:p></o:p></span></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Base Rent <u>
        <span style="mso-tab-count:
2">&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label10" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>__</u> Extras <u><span style="mso-tab-count:2">
        <span style="mso-tab-count:
2"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        <asp:Label 
            ID="Label38" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>
        </span>&nbsp;<asp:CheckBox 
            ID="CheckBox1" runat="server" Text="Gas" />
        <span style="mso-tab-count:2">
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Water" />
        </span>&nbsp;<span style="mso-tab-count:2"><asp:CheckBox ID="CheckBox3" 
            runat="server" Text="Electric" />
&nbsp;</span></span></u>Utilities <u><span style="mso-tab-count:2">&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label12" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;</span>___</u> Total <u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label13" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="font-size:14.0pt">⁭</span><u><o:p></o:p></u></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c-</b>1)<span style="mso-spacerun:yes">&nbsp;&nbsp;
        </span><b style="mso-bidi-font-weight:normal"><u>Income Requirements - 
        individual primary tenant or married combined.<o:p></o:p></u></b></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;
        </span><span style="font-size:14.0pt">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>i)<b 
            style="mso-bidi-font-weight:normal"><span style="mso-spacerun:yes">&nbsp;
        </span><u>House &amp; W.C.</u></b> – Weekly income must exceed rent including all 
        other monthly charges<u><span style="mso-tab-count:1">&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label14" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>max.<b style="mso-bidi-font-weight:normal"><o:p></o:p></b></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>ii) <span style="mso-spacerun:yes">&nbsp;</span><b 
            style="mso-bidi-font-weight:normal"><u>Apts. only</u></b> tenant <u>wkly </u>
        income <u><span style="mso-tab-count:1">
        <b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        <asp:Label ID="Label15" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;</span>_</u> 
        at x 1.15 =<span style="mso-spacerun:yes">&nbsp; </span><u>
        <span style="mso-tab-count:1">&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label16" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>max. rent <b style="mso-bidi-font-weight:normal"><u>incl. all chgs 
        except util.</u></b><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp; </span>
        <span style="font-size:14.0pt">⁭</span><span style="font-size:16.0pt"><o:p></o:p></span></p>
    <p class="MsoNormal">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        iii) <b style="mso-bidi-font-weight:normal"><u>A Co-Signer</u></b>, who 
        qualifies as resident in all ways plus <b style="mso-bidi-font-weight:normal">
        <u>double income req.</u> </b>may be used.<b 
            style="mso-bidi-font-weight:normal"><o:p></o:p></b></p>
    <p class="MsoNormal">
        <u>SSB</u> <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>iv)
        <b style="mso-bidi-font-weight:normal"><u>Apts only</u></b> SSB app. <u>with 
        auto withdrawal on apts only.</u> <u>Rent incl all chgs. &amp; util.</u> not to exc. 
        higher of:<o:p></o:p></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></b>.30 (SSB <u><span style="mso-tab-count:2">
        <b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        <asp:Label ID="Label17" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>+ reg. monthly income <u>
        <span style="mso-tab-count:1">&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label18" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;
        </span></u>) = <u><span style="mso-tab-count:
1">&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label19" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp; </span></u><span style="mso-spacerun:yes">&nbsp;</span>max; 
        or .4 (SSB <u><span style="mso-tab-count:1">
        <b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        <asp:Label ID="Label20" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;
        </span></u>) = <u><span style="mso-tab-count:
1">&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label21" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b> </span>_</u> max.
        <b style="mso-bidi-font-weight:normal"><u>(SSB is Social Security Benefit, SSI 
        is Supplemental&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Security Income, which does not count in this category).<o:p></o:p></u></b></p>
    <p class="MsoNormal">
        <u>SSI</u><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>v.<span 
            style="mso-spacerun:yes">&nbsp; </span>
        <b style="mso-bidi-font-weight:normal"><u>SSI x .9 may be converted to weekly 
        SSI x.9 converted to weekly may be counted in (ii) for East, General &amp; PW only &amp; 
        with min. deposit of H.<o:p></o:p></u></b></p>
    <p class="MsoNormal">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        vi.<b style="mso-bidi-font-weight:normal"><span style="mso-spacerun:yes">&nbsp;
        </span><u>Rent Supplement</u></b> – <b style="mso-bidi-font-weight:normal">Must 
        cover at least 50% of total cost at start. See iv &amp; v above.<span 
            style="mso-spacerun:yes">&nbsp; </span>Only available for T.S.C., Carter, 
        PW, East &amp; General.<o:p></o:p></b></p>
    <p class="MsoNormal">
        <![if !supportLists]><span style="mso-list:Ignore">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2)<span 
            style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></span><![endif]><b style="mso-bidi-font-weight:normal"><u>Unmarried 
        Tenants combining income</u></b>:<span style="mso-spacerun:yes">&nbsp; &nbsp;</span><u>This 
        option is not available for: W.C., Hosplex, or R.B.</u><o:p></o:p></p>
    <p class="MsoNormal">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        No more than 2 tenants may combine income; each tenant must meet at least 75% of 
        normal requirements; Tenants must pay one&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; additional&nbsp; month deposit (all 
        charges).<u><o:p></o:p></u></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:
normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d)<span style="mso-spacerun:yes">&nbsp; </span></b>Tenant understands all 
        non-human occupant charges, rules, etc.<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label22" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b><span style="font-size:14.0pt">⁭</span><o:p></o:p></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:
normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e)</b><span style="mso-spacerun:yes">&nbsp;&nbsp; </span>Physical – Applicant 
        must be capable of caring for self &amp; not req. handicap facilities.<u><span 
            style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label23" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="font-size:
14.0pt">⁭</span><o:p></o:p></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f)</b><span style="mso-spacerun:yes">&nbsp; 
        &nbsp;</span>Minimum Age – 18 or legal guardian authorization for applicants and 
        co-tenants.<u><span style="mso-tab-count:
2">&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label24" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="font-size:14.0pt">⁭</span><o:p></o:p></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:
normal">C)</b><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><b style="mso-bidi-font-weight:normal"><u>ONLY AFTER ALL ABOVE COMPLETE &amp; 
        O.K. LEASING AGENT TO SHOW SELECTED UNITS UNTIL A MATCH IS FOUND.</u></b><o:p></o:p></p>
    <p class="MsoNormal">
        <![if !supportLists]><b style="mso-bidi-font-weight:normal">
        <span style="mso-list:Ignore">D)<span 
            style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></b><![endif]><u>Applicant must fill out balance of application 
        and provide proof of income.</u><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="font-size:14.0pt">⁭</span><u><o:p></o:p></u></p>
    <p class="MsoNormal">
        <![if !supportLists]><b style="mso-bidi-font-weight:normal">
        <span style="mso-list:Ignore">E)<span 
            style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></span></b><![endif]><u>Leasing Agent to perform (1) I.D. verification
        <span style="background: yellow; mso-highlight: yellow">&amp; copies</span>; (2) 
        qualifying available unit with the understanding of Lease<span 
            style="mso-spacerun:yes">&nbsp; </span>and Rules; (3) employment&nbsp;&nbsp; and income 
        verification; (4) background check; (5) landlord verification.</u><o:p></o:p></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">a) Background Check:<span 
            style="mso-spacerun:yes">&nbsp; </span>All Applicants (e-mail –
        <a href="mailto:records@kycourts.net">records@kycourts.net</a>)</b><u><span 
            style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:
1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></u>
        <span style="font-size:14.0pt">⁭</span><span style="font-size:16.0pt"><o:p></o:p></span></p>
    <p class="MsoNormal">
        1)<span style="mso-spacerun:yes">&nbsp; </span>No sex offense<span 
            style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>4)<span style="mso-spacerun:yes">&nbsp; </span>No forcible detainers, no 
        larceny<o:p></o:p></p>
    <p class="MsoNormal">
        2)<span style="mso-spacerun:yes">&nbsp; </span>No chronic physical abuse<span 
            style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>5)<span style="mso-spacerun:yes">&nbsp; </span>No significant total 
        volume of recent offenses, any kind<o:p></o:p></p>
    <p class="MsoNormal">
        3)<span style="mso-spacerun:yes">&nbsp; </span>No recent drug issues (Last 3 
        years)<span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp; </span>6)<span 
            style="mso-spacerun:yes">&nbsp; </span>Cold checks require cash payment<o:p></o:p></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp; </span>
        <b style="mso-bidi-font-weight:normal">b)<span style="mso-spacerun:yes">&nbsp;&nbsp;
        </span>Credit Check:<span style="mso-spacerun:yes">&nbsp; </span>Primary </b><u>
        <span style="mso-tab-count:2">&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label25" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><b style="mso-bidi-font-weight:
normal">Co-Tenant</b> <u><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label26" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span 
            style="font-size:14.0pt">⁭</span><o:p></o:p></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><u>Non medical 
        past due</u> under 4,000 &amp; zero debt to other Landlords.<span 
            style="mso-spacerun:yes">&nbsp; </span>Some low credit or income cases<o:p></o:p></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>can be risk 
        adjusted with higher dep.<span style="mso-spacerun:yes">&nbsp; </span>W.C. 
        accepts no app. with any past due amt. other than medical.<o:p></o:p></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp; </span>
        <b style="mso-bidi-font-weight:normal">c)</b><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;
        </span><b style="mso-bidi-font-weight:normal">Landlord Ref. </b><u>No 
        significant negative Ref. because of conduct, bad debt and/or prop. abuse
        <span style="mso-spacerun:yes">&nbsp;</span></u><span style="font-size:
14.0pt">⁭</span><u><o:p></o:p></u></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><span style="mso-spacerun:yes">&nbsp;
        </span>d)</b><span style="mso-spacerun:yes">&nbsp;&nbsp; &nbsp;</span><b style="mso-bidi-font-weight:
normal"><u>Deposit – Lease Article 21 Item H/No debt allowed to other landlords.</u></b><u><span 
            style="font-size:14.0pt"><o:p>&nbsp;&nbsp;
        <span style="mso-tab-count:4"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        <asp:Label 
            ID="Label37" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>
        </span></o:p>
        </span></u></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>1)<span 
            style="mso-spacerun:yes">&nbsp; </span><u>Full Deposit – H </u>– App. must 
        meet all above min. req. or no credit rep. but high regular income.<o:p> <u>
        <span style="mso-tab-count:4"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        <asp:Label 
            ID="Label32" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>
        </span></u>
        </o:p></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>2)<span 
            style="mso-spacerun:yes">&nbsp; </span><u>Multiple of H</u> – Manager 
        discretion, if only variable is marginal credit or income.<o:p> <u>
        <span style="mso-tab-count:4"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        <asp:Label 
            ID="Label33" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>
        </span></u>
        </o:p></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>3)<span 
            style="mso-spacerun:yes">&nbsp; </span><u>Full Lease in Advance</u> – 
        Manager discretion, if only variable is bad credit or low income.<o:p> <u>
        <span style="mso-tab-count:4"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        <asp:Label 
            ID="Label34" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>
        </span></u>
        </o:p></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>4)<span 
            style="mso-spacerun:yes">&nbsp; </span><u>H-.3E</u> – Past due other than 
        medical and student loan less than $1,000.<span style="mso-spacerun:yes">&nbsp;
        </span>No SSI or SSB income.<o:p> <u>
        <span style="mso-tab-count:4"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        <asp:Label 
            ID="Label35" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>
        </span></u>
        </o:p></p>
    <p class="MsoNormal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt">*</span></b> 
        5)<span style="mso-spacerun:yes">&nbsp; </span><u>H-.5E</u> – Weekly income 
        exceeds all monthly charges and zero past due or credit rating of 700+.<o:p> <u>
        <span style="mso-tab-count:4"><b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt">
        <asp:Label 
            ID="Label36" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>
        </span></u>
        </o:p></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">e)<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;
        </span></b><u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Leasing Agent has verified ID, 
        credit, background, income, LLREF &amp; ID copy.<o:p></o:p></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">F)<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><u>Management Approval or Exceptions</u></b><u><span style="mso-tab-count:
8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label29" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><o:p></o:p>
    </p>
    <p class="MsoNormal">
        <o:p>&nbsp;</o:p>Signed <u><span style="mso-tab-count:
6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;</span>Date <u>
        <span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style="mso-bidi-font-weight:normal"><span style="mso-bidi-font-size:14.0pt"><asp:Label 
            ID="Label31" runat="server" Font-Underline="True" Text="Label"></asp:Label>
        </span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u>
    </p>
    <p class="MsoNormal">
        <o:p>
        </o:p>
    </p>
    

   </form>
   </div>
</body>
</html>
