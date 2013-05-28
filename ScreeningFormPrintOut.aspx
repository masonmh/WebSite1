<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ScreeningFormPrintOut.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="~/Styles/HardCopy.css" rel="stylesheet" type="text/css" />
    <title>Cash Only Lease</title>
    <style type="text/css">

 p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:10.0pt;
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
	font-size:10.0pt;
	font-family:"Times New Roman","serif";
	}
        .style19
        {
            width: 201px;
            height: 22px;
        }
        .style20
        {
            width: 506px;
            height: 25px;
        }
        .style21
        {
            width: 200px;
        }
        .style22
        {
            width: 3.92in;
        }
        .style23
        {
            width: 2in;
        }
        .style24
        {
            width: 506px;
        }
        .style25
        {
            width: 201px;
        }
        .shape {behavior:url(#default#VML);}
        </style>
</head>
<body class="documentTop">
  <table >
<tr><td class="style23" border="0" 
        style="margin-left: 0px; border:1px #000000 solid;">
<table border="0" style="border:1px #000000 solid; height: 81px; width: 192px;" 
        cellspacing="-1"><tr><td class="style21">RNA RENTAL, LLC</td></tr>
<tr><td class="style21">CONTROLLED</td></tr>
<tr><td class="style21">DOCUMENT</td></tr>
 </table></td>
 <td class="style22" border="0" style="margin-left: 0px; border:1px #000000 solid;">
     <table border="0" style="border:1px #000000 solid; width: 392px;">
 <tr><td border="0" style="border:1px #000000 solid; " class="style20">
     <span lang="ES-CR" style="font-size:12.0pt;mso-bidi-font-size:
10.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:ES-CR;mso-fareast-language:EN-US;mso-bidi-language:AR-SA;
mso-no-proof:yes">Sect: Leasing / Occupancy III_6_a_ii</span></td></tr>
 <tr><td class="style24">
     <span lang="ES-CR" style="font-size:16.0pt;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
ES-CR;mso-fareast-language:EN-US;mso-bidi-language:AR-SA;mso-no-proof:yes">Title: 
     Rental Application Verification Form</span></td></tr>
 <tr><td class="style24">&nbsp;</td></tr>
 </table>
 </td>
 <td border="0" style="width: 8.56in; margin-left: 0px; border:1px #000000 solid;">
 <table border="0" style="border:1px #000000 solid;">
 <tr><td border="0" style="border:1px #000000 solid; " class="style19">Rev. Date:  01/31/13</td></tr>
 <tr><td border="0" style="border:1px #000000 solid; " class="style25">Approved:  RNA Sr.</td></tr>
 <tr><td border="0" style="border:1px #000000 solid; " class="style25">Page 1 of 1</td></tr>
 </table>
 </td></tr>
 </table>
    <form id="form1" runat="server">
    

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
        </Columns>
    </asp:GridView>
    <p class="MsoNormal">
        <o:p>&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            SelectCommand="SELECT Screening.ScreeningID, Screening.ScreeningDate, Screening.FullTime, Screening.PayCycle, Screening.PassedEmpCheck, Screening.EmploymentCheckComments, Screening.CriminalConviction, Screening.CriminalConvictionReason, Screening.CriminalCheckComments, Screening.PresentLandlord, Screening.PresentLandlordPhone, Screening.PassedLandlordCheck, Screening.PassedLandlordComments, Screening.BGFeeCollected, Screening.BackgroundCheckPasses, Screening.BackgroundCheckComments, Screening.CreditCheckPassed, Screening.CreditCheckComments, Screening.CoSignerAlso, Screening.EmergencyContact, Screening.EmergencyConactRelation, Screening.EmergencyContactPhone, Screening.RelativeNotLivingwithYou, Screening.RelationshipRelative, Screening.RelationshipNumber, Screening.EnteredBy, Screening.LeasingApprovedBy, Screening.LeasingApprovalDate, Screening.LeasingAgentComments, Screening.ManagementApprovedBy, Screening.ManagementApprovalDate, Screening.ManagementComments, Screening.CreditScore, Screening.StatusOfScreening, Screening.TenantNHOUnderstand, Screening.TenantIsPhysicallyAble, Screening.TenantMeetsMinimum, Screening.TenantIsEmployee, Screening.FindOutAboutUs, Screening.ScreeningTime, Screening.PropertyID, Screening.DateOfDesiredMoveIn, Screening.NumOfOccupants, Screening.RequiredNumBed, Screening.RequiredNumBath, Screening.RequiredWD, Screening.RequestLease, Screening.TargetRent, Screening.OtherDesiredFeatures, Screening.BrokenLease, Screening.BrokenLeaseWhy, Screening.ApplicantID, Screening.ApplicantID2, Screening.ApplicantID3, Screening.ApplicantID4, Screening.ApplicantID5, Screening.ApplicantID6, Screening.OthOccRelationship1, Screening.OthOccName1, Screening.OthOccAge1, Screening.OthOccRelationship2, Screening.OthOccName2, Screening.OthOccAge2, Screening.OthOccName3, Screening.OthOccAge3, Screening.OthOccRelationship3, Screening.ApplicationFeeAmount, Screening.ApplicationFeeDate, Screening.DepAmountRecieved, Screening.DepDateRecieved, Screening.BackgroundComplete, Screening.CreditReport, Screening.ProofOfIncome, Screening.EmployerVerification, Screening.LandlordReference, Screening.PastTenant, Screening.Approved, Screening.ReviewedBy, Screening.Classification, Screening.ProcessedBy, Screening.ProcessedOnDate, Screening.userInput, Screening.inputdate, Screening.nonHumanOccupants, Screening.PetKind1, Screening.PetWeight1, Screening.PetAge1, Screening.PetBreed1, Screening.numnonrelated, Screening.spouseIncluded, Screening.incomeDifferent, Screening.ScreeningNotes, Screening.ApprovedByManagement, Screening.cosignerID, Screening.MaxHouseAmount, Screening.MaxApt, Screening.ScreeningStatus, Screening.Demeanor, Applicant.ApplicantID AS Expr1, Applicant.FirstName, Applicant.LastName, Applicant.MiddleName, Applicant.SSN, Applicant.DriverLicenseNumber, Applicant.DriverLicenseState, Applicant.PhoneNumber, Applicant.DOB, Applicant.Employer, Applicant.DOH, Applicant.FullTime AS Expr2, Applicant.EmployerNumber, Applicant.EmployerContact, Applicant.GrossSalary, Applicant.SalarySchedule, Applicant.OtherIncome, Applicant.OtherIncomeType, Applicant.CriminalConvictions, Applicant.CriminalExplain, Applicant.PresentLandlord AS Expr3, Applicant.CurrentStreetAddress, Applicant.City, Applicant.State, Applicant.Zip, Applicant.YearsRented, Applicant.MonthPayment, Applicant.VehicleMake, Applicant.VehicleColor, Applicant.VehicleYear, Applicant.LicenseNum, Applicant.LicenseState, Applicant.EmergencyContact AS Expr4, Applicant.EmergencyContactPhone AS Expr5, Applicant.EmergencyRelationship, Applicant.LandLordPhone, Applicant.UserInput AS Expr6, Applicant.InputDate AS Expr7, Applicant.screeningid AS Expr8, Applicant.SSIIncome, Applicant.SSBIncome, Applicant.CreditScore AS Expr9 FROM Screening INNER JOIN Applicant ON Screening.ScreeningID = Applicant.screeningid WHERE (Screening.ScreeningID = @ScreeningID)">
            <SelectParameters>
                <asp:SessionParameter Name="screeningID" SessionField="newscreeningid" 
                Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        </o:p>
    </p>
    <p class="MsoNormal">
        <u>
        <span style="mso-ansi-language:
EN-US;mso-bidi-font-weight:bold;mso-no-proof:no">Rent Supplement</span></u><span 
            style="mso-ansi-language:EN-US;mso-bidi-font-weight:bold;mso-no-proof:no"> – 
        Housing must cover at least 50% of total cost at start.<span 
            style="mso-spacerun:yes">&nbsp; </span>If housing portion is less than 100% 
        applicant must income qualify for difference not to exceed weekly income</span><span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-bidi-font-weight:bold;
mso-no-proof:no">.<span style="mso-spacerun:yes">&nbsp;&nbsp; </span><b>This form 
        processed by <u>_________<span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>Leasing Agent on<span style="mso-spacerun:yes">&nbsp; </span><u>
        _______</u> date.</b><o:p></o:p></span></p>
    <p class="MsoNormal">
        <!--[if gte vml 1]><v:shapetype
 id="_x0000_t202" coordsize="21600,21600" o:spt="202" path="m,l,21600r21600,l21600,xe">
 <v:stroke joinstyle="miter" xmlns:v="urn:schemas-microsoft-com:vml"/>
 <v:path gradientshapeok="t" o:connecttype="rect" 
            xmlns:v="urn:schemas-microsoft-com:vml"/>
</v:shapetype><v:shape id="_x0000_s1029" type="#_x0000_t202" style='position:absolute;
 left:0;text-align:left;margin-left:288.45pt;margin-top:3.55pt;width:198pt;
 height:126pt;z-index:251657216'>
        <textbox style="mso-next-textbox:#_x0000_s1029" 
            xmlns="urn:schemas-microsoft-com:vml">
        </textbox>
</v:shape><![endif]--><![if !vml]>
        <span style="mso-ignore: vglayout; position: absolute; z-index: 359057500; left: 44px; margin-left: 384px; margin-top: 4px; width: 270px; height: 174px; top: 361px;">
        <table cellpadding="0" cellspacing="0" style="height: 182px; width: 272px">
            <tr>
                <td bgcolor="white" height="174" 
                    style="border: .75pt solid black; vertical-align: top; background: white" 
                    width="270">
                    <![endif]><![if !mso]>
                    <span style="position: absolute; mso-ignore: vglayout; left: 8pt; z-index: 251657216; top: 7px; height: 139px; width: 258px;">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td>
                                <![endif]>
                                <div class="shape" v:shape="_x0000_s1029">
                                    <p class="MsoNormal">
                                        <b style="mso-bidi-font-weight:normal"><span lang="ES-CR" 
                                            style="font-size:12.0pt">FOR OFFICE USE ONLY<o:p></o:p></span></b></p>
                                    <p class="MsoNormal">
                                        <b style="mso-bidi-font-weight:normal"><span lang="ES-CR">Appl. Fee/Date:</span></b><span 
                                            lang="ES-CR"><span style="mso-spacerun:yes">&nbsp;&nbsp; &nbsp;</span>/<span 
                                            style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><b 
                                            style="mso-bidi-font-weight:normal"><u>Decision 24 hrs.</u></b><u><o:p></o:p></u></span></p>
                                    <p class="MsoNormal">
                                        <span lang="ES-CR">Amt./Date Dep. Received <u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </span><o:p></o:p></u></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span lang="ES-CR">Background <u><span style="mso-tab-count:
    4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </span><o:p></o:p></u></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span lang="ES-CR">Credit Report <u><span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </span><o:p></o:p></u></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span lang="ES-CR">Proof of Income ______________________<o:p></o:p></span></p>
                                    <p class="MsoNormal">
                                        <span lang="ES-CR">Employer Verification <u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </span><o:p></o:p></u></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span lang="ES-CR">Landlord Reference <u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </span><o:p></o:p></u></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span lang="ES-CR">Past Tenant <u><span style="mso-tab-count:
    4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </span><o:p></o:p></u></span>
                                    </p>
                                    <p class="MsoNormal">
                                        <span lang="ES-CR">Approved _______ Not Approved________<o:p></o:p></span></p>
                                </div>
                                <![if !mso]>
                            </td>
                        </tr>
                    </table>
                    </span><![endif]><![if !mso & !vml]>&nbsp;<![endif]><![if !vml]></td>
            </tr>
        </table>
        <![endif]></span><b style="mso-bidi-font-weight:normal">
        <span style="font-size:
12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-bidi-font-weight:
bold">Items 1 thru 7 <u>must be completed</u> prior to showing apts.</span></span></b><span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-bidi-font-weight:bold;
mso-no-proof:no"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style="font-size:8.0pt;mso-ansi-language:EN-US;mso-bidi-font-weight:bold;
mso-no-proof:no"><o:p></o:p></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><u>
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">1</span><span style="mso-ansi-language:EN-US;
mso-no-proof:no">.</span></u></b><span style="mso-ansi-language:EN-US;
mso-no-proof:no"><span style="mso-spacerun:yes">&nbsp; </span>How Did You Find Out About 
        Us <u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>MAINTAIN</span><u><span 
            style="font-size:8.0pt;mso-ansi-language:EN-US;mso-no-proof:no"><o:p></o:p></span></u></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp; &nbsp;</span>Today&#39;s Date <u>
        <span style="mso-tab-count:
4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>Time <u><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><u>3 Open Files</u><o:p></o:p></span></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Property Name <u>
        <span style="mso-tab-count:
5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span 
            style="font-size:8.0pt;mso-ansi-language:EN-US;mso-no-proof:no"><o:p></o:p></span></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Date of Desired 
        Occupancy <u><span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></span><u>
        <span style="font-size:8.0pt;mso-ansi-language:EN-US;mso-no-proof:no">Apps.-No 
        Fee</span><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><o:p></o:p></span></u></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Number of 
        Occupants <u><span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></u><span 
            style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><u><span 
            style="font-size:8.0pt;mso-ansi-language:EN-US;mso-no-proof:no">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Apps.-Dep-No Fee<o:p></o:p></span></u></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Required: Bedroom 
        ___<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>Bath ­____ W/D 
        Hookup________<span style="mso-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></span>
        <span style="font-size:
8.0pt;mso-ansi-language:EN-US;mso-no-proof:no">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Apps. with Fee</span><u><span style="mso-ansi-language:EN-US;mso-no-proof:no"><o:p></o:p></span></u></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Term of 
        Lease_____________Target Rent______________<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><u><span 
            style="font-size:8.0pt;mso-ansi-language:EN-US;mso-no-proof:no">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        24 hr. Completion</span></u><span style="font-size:8.0pt;mso-ansi-language:EN-US;
mso-no-proof:no"><o:p></o:p></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></b>
        <span style="mso-ansi-language:
EN-US;mso-no-proof:no">Other features desired tures desired <u><span style="mso-tab-count:
5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><u>
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">2.</span></u></b><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><span 
            style="mso-spacerun:yes">&nbsp; </span>Have you ever broken a lease or been 
        evicted from any type of<o:p></o:p></span></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>housing.<span 
            style="mso-spacerun:yes">&nbsp; </span>If yes, explain 
        ______________________________<span style="mso-spacerun:yes">&nbsp; </span>
        <span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>
        __________________________________________________<o:p></o:p></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><u>
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">3</span></u></b><u><span 
            style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">.</span></u><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><span 
            style="mso-spacerun:yes">&nbsp; </span>
        <b style="mso-bidi-font-weight:normal"><u>Applicant</u></b>
        <span style="background: yellow; mso-highlight: yellow">must show and copy 
        driver’s license and Social Security card or two other forms of valid I.D.</span><o:p></o:p></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></b>
        <span style="mso-ansi-language:
EN-US;mso-no-proof:no">Full Name <u><span style="mso-tab-count:7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Phone # <u>
        <span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></b>
        <span style="mso-ansi-language:
EN-US;mso-no-proof:no">Driver’s<span style="mso-spacerun:yes">&nbsp; </span>Lic. # <u>
        <span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Soc. Sec. #<u><span 
            style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>DOB <u><span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><b style="mso-bidi-font-weight:normal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><o:p></o:p></b></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp; &nbsp;</span></span></b><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no">Employer <u>
        <span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>DOH<u><span 
            style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Full Time? _____Phone #</span><span 
            style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">________________________<u>
        </u><span style="mso-spacerun:yes">&nbsp;</span></span><u><span style="mso-ansi-language:
EN-US;mso-no-proof:no"><o:p></o:p></span></u></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Gross Salary <u>
        <span style="mso-tab-count:
3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>Wk/Biwk/Mo<span style="mso-spacerun:yes">&nbsp; </span><u>Other 
        Income</u> <u><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <u><span style="mso-ansi-language:
EN-US;mso-no-proof:no">If SSB used to qualify for rent, applicant agrees to 
        auto-withdrawal<o:p></o:p></span></u></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-tab-count:5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><u>Circle One<o:p></o:p></u></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">4.</span></b><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><span 
            style="mso-spacerun:yes">&nbsp; </span>
        <b style="mso-bidi-font-weight:normal"><u>Co-Tenant</u> </b>Full Name<span 
            style="mso-tab-count:1">&nbsp; </span><u><span style="mso-tab-count:
6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-spacerun:yes">&nbsp; </span></u>Phone #<u><span style="mso-tab-count:
2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Driver’s<span 
            style="mso-spacerun:yes">&nbsp; </span>Lic. # <u>
        <span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Soc. Sec. #<u><span 
            style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>DOB <u><span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><b style="mso-bidi-font-weight:normal">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><o:p></o:p></b></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></b>
        <span style="mso-ansi-language:
EN-US;mso-no-proof:no">Employer <u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>DOH<u><span 
            style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Full Time? _____Phone #</span><span 
            style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">________________________<u>
        </u><span style="mso-spacerun:yes">&nbsp;</span></span><u><span style="mso-ansi-language:
EN-US;mso-no-proof:no"><o:p></o:p></span></u></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Gross Salary <u>
        <span style="mso-tab-count:
3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>Wk/Biwk/Mo<span style="mso-spacerun:yes">&nbsp; </span><u>Other 
        Income</u> <u><span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-tab-count:5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></span></b><u><span style="mso-ansi-language:EN-US;mso-no-proof:no">
        Circle One<o:p></o:p></span></u></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">5.</span></b><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><span 
            style="mso-spacerun:yes">&nbsp; </span>Any criminal convictions in past five 
        years by either applicant?<span style="mso-spacerun:yes">&nbsp; </span></span>
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">⁯</span><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no">Yes </span>
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">⁯</span><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no">No If yes, please 
        explain___________________<o:p></o:p></span></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>
        __________________________________________________________________________________________________<o:p></o:p></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal"><u>
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">6.</span></u></b><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><span 
            style="mso-spacerun:yes">&nbsp; </span>Any Non-Human Occupants?<span 
            style="mso-spacerun:yes">&nbsp; </span>Yes </span>
        <span style="font-size:12.0pt;
mso-ansi-language:EN-US;mso-no-proof:no">⁯<span style="mso-spacerun:yes">&nbsp; </span>
        </span><span style="mso-ansi-language:EN-US;mso-no-proof:no">No</span><span 
            style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no"> ⁯</span><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;</span>If So, Indicate Kind, Weight, Breed, Age
        <u><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">7.</span></b><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><span 
            style="mso-spacerun:yes">&nbsp; </span>Names of <u>Other </u>Occupants: (All 
        people besides Applicant &amp; Co-Tenant)
        <span style="background: yellow; mso-highlight: yellow">Check qualification per 
        Article 8 Lease</span><u><o:p></o:p></u></span></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>Name<span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>Relationship<span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>Age<o:p></o:p></span></p>
    <p class="MsoNormal">
        <u><span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-tab-count:14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></span></u>
    </p>
    <p class="MsoNormal">
        <u><span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-tab-count:14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></span></u>
    </p>
    <p class="MsoNormal">
        <u><span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-tab-count:14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></span></u>
    </p>
    <p class="MsoNormal">
        <!--[if mso & !supportInlineShapes & supportFields]>
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;</span>SHAPE<span style="mso-spacerun:yes">&nbsp;
        </span>\* MERGEFORMAT </span><![endif]-->
        <span style="mso-ansi-language:EN-US;mso-no-proof:no"><!--[if gte vml 1]><v:group
 id="_x0000_s1026" editas="canvas" style='width:7in;height:18pt;
 mso-position-horizontal-relative:char;mso-position-vertical-relative:line'
 coordorigin="939,8156" coordsize="6720,241">
 <o:lock v:ext="edit" aspectratio="t" 
            xmlns:o="urn:schemas-microsoft-com:office:office"/>
 <v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75"
  o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f">
  <v:stroke joinstyle="miter" xmlns:v="urn:schemas-microsoft-com:vml"/>
  <v:formulas>
   <v:f eqn="if lineDrawn pixelLineWidth 0" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="sum @0 1 0" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="sum 0 0 @1" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="prod @2 1 2" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="prod @3 21600 pixelWidth" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="prod @3 21600 pixelHeight" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="sum @0 0 1" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="prod @6 1 2" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="prod @7 21600 pixelWidth" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="sum @8 21600 0" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="prod @7 21600 pixelHeight" xmlns:v="urn:schemas-microsoft-com:vml"/>
   <v:f eqn="sum @10 21600 0" xmlns:v="urn:schemas-microsoft-com:vml"/>
  </v:formulas>
  <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect" 
            xmlns:v="urn:schemas-microsoft-com:vml"/>
  <o:lock v:ext="edit" aspectratio="t" 
            xmlns:o="urn:schemas-microsoft-com:office:office"/>
 </v:shapetype><v:shape id="_x0000_s1027" type="#_x0000_t75" style='position:absolute;
  left:939;top:8156;width:6720;height:241' o:preferrelative="f">
  <v:fill o:detectmouseclick="t" xmlns:v="urn:schemas-microsoft-com:vml"/>
  <v:path o:extrusionok="t" o:connecttype="none" 
            xmlns:v="urn:schemas-microsoft-com:vml"/>
  <o:lock v:ext="edit" text="t" xmlns:o="urn:schemas-microsoft-com:office:office"/>
 </v:shape>
        <v:line id="_x0000_s1028" style='position:absolute' from="939,8277"
  to="7659,8278" strokeweight="2.25pt" xmlns:v="urn:schemas-microsoft-com:vml"/>
 <w:wrap type="none" xmlns:w="urn:schemas-microsoft-com:office:word"/>
 <w:anchorlock xmlns:w="urn:schemas-microsoft-com:office:word"/>
</v:group><![endif]--><![if !vml]>
        <img height="24" 
            src="file:///C:/Users/masonmh/AppData/Local/Temp/OICE_5279AF89-8CCF-4BBF-98F7-7C86A655429B.0/msohtmlclip1/01/clip_image001.gif" 
            v:shapes="_x0000_s1026 _x0000_s1027 _x0000_s1028" width="676" /><![endif]></span><!--[if mso & !supportInlineShapes & supportFields]><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><v:shape id="_x0000_i1025"
 type="#_x0000_t75" style='width:7in;height:18pt'>
 <v:imagedata croptop="-65520f" cropbottom="65520f" 
            xmlns:v="urn:schemas-microsoft-com:vml"/>
</v:shape></span><![endif]--><span style="mso-ansi-language:EN-US;mso-no-proof:no"><o:p></o:p>
        </span>
    </p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">Items 1 
        through 11 <u>must be completed</u> prior to processing application.<o:p></o:p></span></b></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">8.</span></b><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><span 
            style="mso-spacerun:yes">&nbsp; </span>
        <b style="mso-bidi-font-weight:normal"><u>Applicant<o:p></o:p></u></b></span></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Present Landlord
        <u><span style="mso-tab-count:8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Phone # <u>
        <span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Current Address
        <u><span style="mso-tab-count:
4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span 
            style="mso-tab-count:1"> </span></u>City, State, 
        Zip_______________________________<o:p></o:p></span></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Years <u>
        <span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>Mo. Payment $<u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <b style="mso-bidi-font-weight:normal"><u>Spouse/Co-Tenant
        <span style="mso-tab-count:12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></b></span>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Present Landlord
        <u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Phone # <u>
        <span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp; </span>Current Address <u>
        <span style="mso-tab-count:
4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span 
            style="mso-tab-count:1"> </span></u>City, State, 
        Zip_______________________________<o:p></o:p></span></p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Years <u>
        <span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u>Mo. Payment $<u><span style="mso-tab-count:4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p align="center" class="MsoNormal">
        <b style="mso-bidi-font-weight:
normal"><span style="mso-ansi-language:EN-US;mso-no-proof:no">Vehicle Registration 
        (Including Company Car)<o:p></o:p></span></b></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">9.</span></b><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><span 
            style="mso-spacerun:yes">&nbsp; </span>Make of Vehicle <u>
        <span style="mso-tab-count:
4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Color <u>
        <span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Year <u>
        <span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>License # <u>
        <span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Make of Vehicle
        <u><span style="mso-tab-count:
4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Color <u>
        <span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Year <u>
        <span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>License # <u>
        <span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no"><o:p>&nbsp;</o:p></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">10.</span></b><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"> In Case of Emergency 
        Contact <u><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Relationship <u>
        <span style="mso-tab-count:
3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Phone # <u>
        <span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Relative 
        Not Living With You <u><span style="mso-tab-count:2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-tab-count:
2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></u><span style="mso-spacerun:yes">&nbsp;</span>Relationship <u>
        <span style="mso-tab-count:
3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><span style="mso-spacerun:yes">&nbsp;</span></u>Phone # <u>
        <span style="mso-tab-count:
2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></u></span>
    </p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="font-size:12.0pt;mso-ansi-language:EN-US;mso-no-proof:no">11.</span></b><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><span 
            style="mso-spacerun:yes">&nbsp; </span>Applicant(s) represents that all of 
        the completed information is true and complete and authorizes the verification 
        of same.<o:p></o:p></span></p>
    <p class="MsoNormal">
        <b style="mso-bidi-font-weight:normal">
        <span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>I/ 
        (We) the Undersigned Applicant(s), have read and agree to all the provisions of 
        this application.<o:p></o:p></span></b></p>
    <p class="MsoNormal">
        <u><span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-tab-count:14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></span></u>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US">Signature of Applicant</span><i 
            style="mso-bidi-font-style:normal"><span style="mso-ansi-language:EN-US;
mso-no-proof:no"><span style="mso-tab-count:9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span></span></i><span lang="ES-CR">Date</span><i 
            style="mso-bidi-font-style:normal"><span 
            style="mso-ansi-language:EN-US;mso-no-proof:no"><o:p></o:p></span></i></p>
    <p class="MsoNormal">
        <u><span style="mso-ansi-language:EN-US;mso-no-proof:no">
        <span style="mso-tab-count:11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><i><span style="mso-tab-count:3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span><o:p></o:p></i></span></u>
    </p>
    <p class="MsoNormal">
        <span style="mso-ansi-language:EN-US">Signature of Applicant<span 
            style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>
        <span lang="ES-CR"><span style="mso-tab-count:8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>Date<o:p></o:p></span></p>
    <p class="MsoNormal">
        <o:p>
        </o:p></p>
    

   </form>
</body>
</html>
