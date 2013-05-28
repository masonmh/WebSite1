<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PrintOutApplicationVerification.aspx.vb" Inherits="_Default" %>

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
    <form id="form1" runat="server">
    <br />
    <asp:Image ID="Image1" runat="server" Height="80px" 
        ImageUrl="~/Documents/headerVerif.png" Width="812px" />
    <br />

 <table><tr><td>
 <b>Screening Form Details</b></td><td><b>Applicant Information</b></td></tr><tr>
     <td align="left" valign="top">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ScreeningID" 
        DataSourceID="ScreeningSource1" style="font-size: small">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FFF8DC;">
                ScreeningID:
                <asp:Label ID="ScreeningIDLabel" runat="server" 
                    Text='<%# Eval("ScreeningID") %>' />
                <br />
                FindOutAboutUs:
                <asp:Label ID="FindOutAboutUsLabel" runat="server" 
                    Text='<%# Eval("FindOutAboutUs") %>' />
                <br />
                ScreeningDate:
                <asp:Label ID="ScreeningDateLabel" runat="server" 
                    Text='<%# Eval("ScreeningDate") %>' />
                <br />
                ScreeningTime:
                <asp:Label ID="ScreeningTimeLabel" runat="server" 
                    Text='<%# Eval("ScreeningTime") %>' />
                <br />
                CompleteAddress:
                <asp:Label ID="CompleteAddressLabel" runat="server" 
                    Text='<%# Eval("CompleteAddress") %>' />
                <br />
                DateOfDesiredMoveIn:
                <asp:Label ID="DateOfDesiredMoveInLabel" runat="server" 
                    Text='<%# Eval("DateOfDesiredMoveIn") %>' />
                <br />
                NumOfOccupants:
                <asp:Label ID="NumOfOccupantsLabel" runat="server" 
                    Text='<%# Eval("NumOfOccupants") %>' />
                <br />
                RequiredNumBed:
                <asp:Label ID="RequiredNumBedLabel" runat="server" 
                    Text='<%# Eval("RequiredNumBed") %>' />
                <br />
                RequiredNumBath:
                <asp:Label ID="RequiredNumBathLabel" runat="server" 
                    Text='<%# Eval("RequiredNumBath") %>' />
                <br />
                <asp:CheckBox ID="RequiredWDCheckBox" runat="server" 
                    Checked='<%# Eval("RequiredWD") %>' Enabled="false" Text="RequiredWD" />
                <br />
                RequestLease:
                <asp:Label ID="RequestLeaseLabel" runat="server" 
                    Text='<%# Eval("RequestLease") %>' />
                <br />
                TargetRent:
                <asp:Label ID="TargetRentLabel" runat="server" 
                    Text='<%# Eval("TargetRent") %>' />
                <br />
                OtherDesiredFeatures:
                <asp:Label ID="OtherDesiredFeaturesLabel" runat="server" 
                    Text='<%# Eval("OtherDesiredFeatures") %>' />
                <br />
                <asp:CheckBox ID="BrokenLeaseCheckBox" runat="server" 
                    Checked='<%# Eval("BrokenLease") %>' Enabled="false" Text="BrokenLease" />
                <br />
                BrokenLeaseWhy:
                <asp:Label ID="BrokenLeaseWhyLabel" runat="server" 
                    Text='<%# Eval("BrokenLeaseWhy") %>' />
                <br />
                <asp:CheckBox ID="CriminalConvictionCheckBox" runat="server" 
                    Checked='<%# Eval("CriminalConviction") %>' Enabled="false" 
                    Text="CriminalConviction" />
                <br />
                CriminalConvictionReason:
                <asp:Label ID="CriminalConvictionReasonLabel" runat="server" 
                    Text='<%# Eval("CriminalConvictionReason") %>' />
                <br />
                <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                    Checked='<%# Eval("nonHumanOccupants") %>' Enabled="false" 
                    Text="nonHumanOccupants" />
                <br />
                PetKind1:
                <asp:Label ID="PetKind1Label" runat="server" 
                    Text='<%# Eval("PetKind1") %>' />
                <br />
                PetWeight1:
                <asp:Label ID="PetWeight1Label" runat="server" 
                    Text='<%# Eval("PetWeight1") %>' />
                <br />
                PetAge1:
                <asp:Label ID="PetAge1Label" runat="server" Text='<%# Eval("PetAge1") %>' />
                <br />
                PetBreed1:
                <asp:Label ID="PetBreed1Label" runat="server" Text='<%# Eval("PetBreed1") %>' />
                <br />
                OthOccName1:
                <asp:Label ID="OthOccName1Label" runat="server" 
                    Text='<%# Eval("OthOccName1") %>' />
                <br />
                OthOccRelationship1:
                <asp:Label ID="OthOccRelationship1Label" runat="server" 
                    Text='<%# Eval("OthOccRelationship1") %>' />
                <br />
                OthOccAge1:
                <asp:Label ID="OthOccAge1Label" runat="server" 
                    Text='<%# Eval("OthOccAge1") %>' />
                <br />
                OthOccName2:
                <asp:Label ID="OthOccName2Label" runat="server" 
                    Text='<%# Eval("OthOccName2") %>' />
                <br />
                OthOccRelationship2:
                <asp:Label ID="OthOccRelationship2Label" runat="server" 
                    Text='<%# Eval("OthOccRelationship2") %>' />
                <br />
                OthOccAge2:
                <asp:Label ID="OthOccAge2Label" runat="server" 
                    Text='<%# Eval("OthOccAge2") %>' />
                <br />
                OthOccName3:
                <asp:Label ID="OthOccName3Label" runat="server" 
                    Text='<%# Eval("OthOccName3") %>' />
                <br />
                OthOccRelationship3:
                <asp:Label ID="OthOccRelationship3Label" runat="server" 
                    Text='<%# Eval("OthOccRelationship3") %>' />
                <br />
                OthOccAge3:
                <asp:Label ID="OthOccAge3Label" runat="server" 
                    Text='<%# Eval("OthOccAge3") %>' />
                <br />
                Demeanor:
                <asp:Label ID="DemeanorLabel" runat="server" Text='<%# Eval("Demeanor") %>' />
                <br />
                ScreeningStatus:
                <asp:Label ID="ScreeningStatusLabel" runat="server" 
                    Text='<%# Eval("ScreeningStatus") %>' />
                <br />
                MaxApt:
                <asp:Label ID="MaxAptLabel" runat="server" Text='<%# Eval("MaxApt") %>' />
                <br />
                MaxHouseAmount:
                <asp:Label ID="MaxHouseAmountLabel" runat="server" 
                    Text='<%# Eval("MaxHouseAmount") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #008A8C; color: #FFFFFF;">
                ScreeningID:
                <asp:Label ID="ScreeningIDLabel1" runat="server" 
                    Text='<%# Eval("ScreeningID") %>' />
                <br />
                FindOutAboutUs:
                <asp:TextBox ID="FindOutAboutUsTextBox" runat="server" 
                    Text='<%# Bind("FindOutAboutUs") %>' />
                <br />
                ScreeningDate:
                <asp:TextBox ID="ScreeningDateTextBox" runat="server" 
                    Text='<%# Bind("ScreeningDate") %>' />
                <br />
                ScreeningTime:
                <asp:TextBox ID="ScreeningTimeTextBox" runat="server" 
                    Text='<%# Bind("ScreeningTime") %>' />
                <br />
                CompleteAddress:
                <asp:TextBox ID="CompleteAddressTextBox" runat="server" 
                    Text='<%# Bind("CompleteAddress") %>' />
                <br />
                DateOfDesiredMoveIn:
                <asp:TextBox ID="DateOfDesiredMoveInTextBox" runat="server" 
                    Text='<%# Bind("DateOfDesiredMoveIn") %>' />
                <br />
                NumOfOccupants:
                <asp:TextBox ID="NumOfOccupantsTextBox" runat="server" 
                    Text='<%# Bind("NumOfOccupants") %>' />
                <br />
                RequiredNumBed:
                <asp:TextBox ID="RequiredNumBedTextBox" runat="server" 
                    Text='<%# Bind("RequiredNumBed") %>' />
                <br />
                RequiredNumBath:
                <asp:TextBox ID="RequiredNumBathTextBox" runat="server" 
                    Text='<%# Bind("RequiredNumBath") %>' />
                <br />
                <asp:CheckBox ID="RequiredWDCheckBox" runat="server" 
                    Checked='<%# Bind("RequiredWD") %>' Text="RequiredWD" />
                <br />
                RequestLease:
                <asp:TextBox ID="RequestLeaseTextBox" runat="server" 
                    Text='<%# Bind("RequestLease") %>' />
                <br />
                TargetRent:
                <asp:TextBox ID="TargetRentTextBox" runat="server" 
                    Text='<%# Bind("TargetRent") %>' />
                <br />
                OtherDesiredFeatures:
                <asp:TextBox ID="OtherDesiredFeaturesTextBox" runat="server" 
                    Text='<%# Bind("OtherDesiredFeatures") %>' />
                <br />
                <asp:CheckBox ID="BrokenLeaseCheckBox" runat="server" 
                    Checked='<%# Bind("BrokenLease") %>' Text="BrokenLease" />
                <br />
                BrokenLeaseWhy:
                <asp:TextBox ID="BrokenLeaseWhyTextBox" runat="server" 
                    Text='<%# Bind("BrokenLeaseWhy") %>' />
                <br />
                <asp:CheckBox ID="CriminalConvictionCheckBox" runat="server" 
                    Checked='<%# Bind("CriminalConviction") %>' Text="CriminalConviction" />
                <br />
                CriminalConvictionReason:
                <asp:TextBox ID="CriminalConvictionReasonTextBox" runat="server" 
                    Text='<%# Bind("CriminalConvictionReason") %>' />
                <br />
                <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                    Checked='<%# Bind("nonHumanOccupants") %>' Text="nonHumanOccupants" />
                <br />
                PetKind1:
                <asp:TextBox ID="PetKind1TextBox" runat="server" 
                    Text='<%# Bind("PetKind1") %>' />
                <br />
                PetWeight1:
                <asp:TextBox ID="PetWeight1TextBox" runat="server" 
                    Text='<%# Bind("PetWeight1") %>' />
                <br />
                PetAge1:
                <asp:TextBox ID="PetAge1TextBox" runat="server" Text='<%# Bind("PetAge1") %>' />
                <br />
                PetBreed1:
                <asp:TextBox ID="PetBreed1TextBox" runat="server" 
                    Text='<%# Bind("PetBreed1") %>' />
                <br />
                OthOccName1:
                <asp:TextBox ID="OthOccName1TextBox" runat="server" 
                    Text='<%# Bind("OthOccName1") %>' />
                <br />
                OthOccRelationship1:
                <asp:TextBox ID="OthOccRelationship1TextBox" runat="server" 
                    Text='<%# Bind("OthOccRelationship1") %>' />
                <br />
                OthOccAge1:
                <asp:TextBox ID="OthOccAge1TextBox" runat="server" 
                    Text='<%# Bind("OthOccAge1") %>' />
                <br />
                OthOccName2:
                <asp:TextBox ID="OthOccName2TextBox" runat="server" 
                    Text='<%# Bind("OthOccName2") %>' />
                <br />
                OthOccRelationship2:
                <asp:TextBox ID="OthOccRelationship2TextBox" runat="server" 
                    Text='<%# Bind("OthOccRelationship2") %>' />
                <br />
                OthOccAge2:
                <asp:TextBox ID="OthOccAge2TextBox" runat="server" 
                    Text='<%# Bind("OthOccAge2") %>' />
                <br />
                OthOccName3:
                <asp:TextBox ID="OthOccName3TextBox" runat="server" 
                    Text='<%# Bind("OthOccName3") %>' />
                <br />
                OthOccRelationship3:
                <asp:TextBox ID="OthOccRelationship3TextBox" runat="server" 
                    Text='<%# Bind("OthOccRelationship3") %>' />
                <br />
                OthOccAge3:
                <asp:TextBox ID="OthOccAge3TextBox" runat="server" 
                    Text='<%# Bind("OthOccAge3") %>' />
                <br />
                Demeanor:
                <asp:TextBox ID="DemeanorTextBox" runat="server" 
                    Text='<%# Bind("Demeanor") %>' />
                <br />
                ScreeningStatus:
                <asp:TextBox ID="ScreeningStatusTextBox" runat="server" 
                    Text='<%# Bind("ScreeningStatus") %>' />
                <br />
                MaxApt:
                <asp:TextBox ID="MaxAptTextBox" runat="server" Text='<%# Bind("MaxApt") %>' />
                <br />
                MaxHouseAmount:
                <asp:TextBox ID="MaxHouseAmountTextBox" runat="server" 
                    Text='<%# Bind("MaxHouseAmount") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;" 
                runat="server">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">
                FindOutAboutUs:
                <asp:TextBox ID="FindOutAboutUsTextBox" runat="server" 
                    Text='<%# Bind("FindOutAboutUs") %>' />
                <br />ScreeningDate:
                <asp:TextBox ID="ScreeningDateTextBox" runat="server" 
                    Text='<%# Bind("ScreeningDate") %>' />
                <br />
                ScreeningTime:
                <asp:TextBox ID="ScreeningTimeTextBox" runat="server" 
                    Text='<%# Bind("ScreeningTime") %>' />
                <br />CompleteAddress:
                <asp:TextBox ID="CompleteAddressTextBox" runat="server" 
                    Text='<%# Bind("CompleteAddress") %>' />
                <br />
                DateOfDesiredMoveIn:
                <asp:TextBox ID="DateOfDesiredMoveInTextBox" runat="server" 
                    Text='<%# Bind("DateOfDesiredMoveIn") %>' />
                <br />NumOfOccupants:
                <asp:TextBox ID="NumOfOccupantsTextBox" runat="server" 
                    Text='<%# Bind("NumOfOccupants") %>' />
                <br />RequiredNumBed:
                <asp:TextBox ID="RequiredNumBedTextBox" runat="server" 
                    Text='<%# Bind("RequiredNumBed") %>' />
                <br />RequiredNumBath:
                <asp:TextBox ID="RequiredNumBathTextBox" runat="server" 
                    Text='<%# Bind("RequiredNumBath") %>' />
                <br />
                <asp:CheckBox ID="RequiredWDCheckBox" runat="server" 
                    Checked='<%# Bind("RequiredWD") %>' Text="RequiredWD" />
                <br />RequestLease:
                <asp:TextBox ID="RequestLeaseTextBox" runat="server" 
                    Text='<%# Bind("RequestLease") %>' />
                <br />TargetRent:
                <asp:TextBox ID="TargetRentTextBox" runat="server" 
                    Text='<%# Bind("TargetRent") %>' />
                <br />
                OtherDesiredFeatures:
                <asp:TextBox ID="OtherDesiredFeaturesTextBox" runat="server" 
                    Text='<%# Bind("OtherDesiredFeatures") %>' />
                <br />
                <asp:CheckBox ID="BrokenLeaseCheckBox" runat="server" 
                    Checked='<%# Bind("BrokenLease") %>' Text="BrokenLease" />
                <br />BrokenLeaseWhy:
                <asp:TextBox ID="BrokenLeaseWhyTextBox" runat="server" 
                    Text='<%# Bind("BrokenLeaseWhy") %>' />
                <br />
                <asp:CheckBox ID="CriminalConvictionCheckBox" runat="server" 
                    Checked='<%# Bind("CriminalConviction") %>' Text="CriminalConviction" />
                <br />CriminalConvictionReason:
                <asp:TextBox ID="CriminalConvictionReasonTextBox" runat="server" 
                    Text='<%# Bind("CriminalConvictionReason") %>' />
                <br />
                <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                    Checked='<%# Bind("nonHumanOccupants") %>' Text="nonHumanOccupants" />
                <br />PetKind1:
                <asp:TextBox ID="PetKind1TextBox" runat="server" 
                    Text='<%# Bind("PetKind1") %>' />
                <br />PetWeight1:
                <asp:TextBox ID="PetWeight1TextBox" runat="server" 
                    Text='<%# Bind("PetWeight1") %>' />
                <br />PetAge1:
                <asp:TextBox ID="PetAge1TextBox" runat="server" 
                    Text='<%# Bind("PetAge1") %>' />
                <br />PetBreed1:
                <asp:TextBox ID="PetBreed1TextBox" runat="server" 
                    Text='<%# Bind("PetBreed1") %>' />
                <br />OthOccName1:
                <asp:TextBox ID="OthOccName1TextBox" runat="server" 
                    Text='<%# Bind("OthOccName1") %>' />
                <br />
                OthOccRelationship1:
                <asp:TextBox ID="OthOccRelationship1TextBox" runat="server" 
                    Text='<%# Bind("OthOccRelationship1") %>' />
                <br />OthOccAge1:
                <asp:TextBox ID="OthOccAge1TextBox" runat="server" 
                    Text='<%# Bind("OthOccAge1") %>' />
                <br />OthOccName2:
                <asp:TextBox ID="OthOccName2TextBox" runat="server" 
                    Text='<%# Bind("OthOccName2") %>' />
                <br />OthOccRelationship2:
                <asp:TextBox ID="OthOccRelationship2TextBox" runat="server" 
                    Text='<%# Bind("OthOccRelationship2") %>' />
                <br />
                OthOccAge2:
                <asp:TextBox ID="OthOccAge2TextBox" runat="server" 
                    Text='<%# Bind("OthOccAge2") %>' />
                <br />OthOccName3:
                <asp:TextBox ID="OthOccName3TextBox" runat="server" 
                    Text='<%# Bind("OthOccName3") %>' />
                <br />
                OthOccRelationship3:
                <asp:TextBox ID="OthOccRelationship3TextBox" runat="server" 
                    Text='<%# Bind("OthOccRelationship3") %>' />
                <br />
                OthOccAge3:
                <asp:TextBox ID="OthOccAge3TextBox" runat="server" 
                    Text='<%# Bind("OthOccAge3") %>' />
                <br />Demeanor:
                <asp:TextBox ID="DemeanorTextBox" runat="server" 
                    Text='<%# Bind("Demeanor") %>' />
                <br />
                ScreeningStatus:
                <asp:TextBox ID="ScreeningStatusTextBox" runat="server" 
                    Text='<%# Bind("ScreeningStatus") %>' />
                <br />
                MaxApt:
                <asp:TextBox ID="MaxAptTextBox" runat="server" Text='<%# Bind("MaxApt") %>' />
                <br />
                MaxHouseAmount:
                <asp:TextBox ID="MaxHouseAmountTextBox" runat="server" 
                    Text='<%# Bind("MaxHouseAmount") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #DCDCDC; color: #000000;">
                ScreeningID:
                <asp:Label ID="ScreeningIDLabel" runat="server" 
                    Text='<%# Eval("ScreeningID") %>' />
                <br />
                FindOutAboutUs:
                <asp:Label ID="FindOutAboutUsLabel" runat="server" 
                    Text='<%# Eval("FindOutAboutUs") %>' />
                <br />
                ScreeningDate:
                <asp:Label ID="ScreeningDateLabel" runat="server" 
                    Text='<%# Eval("ScreeningDate") %>' />
                <br />
                ScreeningTime:
                <asp:Label ID="ScreeningTimeLabel" runat="server" 
                    Text='<%# Eval("ScreeningTime") %>' />
                <br />
                CompleteAddress:
                <asp:Label ID="CompleteAddressLabel" runat="server" 
                    Text='<%# Eval("CompleteAddress") %>' />
                <br />
                DateOfDesiredMoveIn:
                <asp:Label ID="DateOfDesiredMoveInLabel" runat="server" 
                    Text='<%# Eval("DateOfDesiredMoveIn") %>' />
                <br />
                NumOfOccupants:
                <asp:Label ID="NumOfOccupantsLabel" runat="server" 
                    Text='<%# Eval("NumOfOccupants") %>' />
                <br />
                RequiredNumBed:
                <asp:Label ID="RequiredNumBedLabel" runat="server" 
                    Text='<%# Eval("RequiredNumBed") %>' />
                <br />
                RequiredNumBath:
                <asp:Label ID="RequiredNumBathLabel" runat="server" 
                    Text='<%# Eval("RequiredNumBath") %>' />
                <br />
                <asp:CheckBox ID="RequiredWDCheckBox" runat="server" 
                    Checked='<%# Eval("RequiredWD") %>' Enabled="false" Text="RequiredWD" />
                <br />
                RequestLease:
                <asp:Label ID="RequestLeaseLabel" runat="server" 
                    Text='<%# Eval("RequestLease") %>' />
                <br />
                TargetRent:
                <asp:Label ID="TargetRentLabel" runat="server" 
                    Text='<%# Eval("TargetRent") %>' />
                <br />
                OtherDesiredFeatures:
                <asp:Label ID="OtherDesiredFeaturesLabel" runat="server" 
                    Text='<%# Eval("OtherDesiredFeatures") %>' />
                <br />
                <asp:CheckBox ID="BrokenLeaseCheckBox" runat="server" 
                    Checked='<%# Eval("BrokenLease") %>' Enabled="false" 
                    Text="BrokenLease" />
                <br />
                BrokenLeaseWhy:
                <asp:Label ID="BrokenLeaseWhyLabel" runat="server" 
                    Text='<%# Eval("BrokenLeaseWhy") %>' />
                <br />
                <asp:CheckBox ID="CriminalConvictionCheckBox" runat="server" 
                    Checked='<%# Eval("CriminalConviction") %>' Enabled="false" 
                    Text="CriminalConviction" />
                <br />
                CriminalConvictionReason:
                <asp:Label ID="CriminalConvictionReasonLabel" runat="server" 
                    Text='<%# Eval("CriminalConvictionReason") %>' />
                <br />
                <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                    Checked='<%# Eval("nonHumanOccupants") %>' Enabled="false" 
                    Text="nonHumanOccupants" />
                <br />
                PetKind1:
                <asp:Label ID="PetKind1Label" runat="server" 
                    Text='<%# Eval("PetKind1") %>' />
                <br />
                PetWeight1:
                <asp:Label ID="PetWeight1Label" runat="server" 
                    Text='<%# Eval("PetWeight1") %>' />
                <br />
                PetAge1:
                <asp:Label ID="PetAge1Label" runat="server" 
                    Text='<%# Eval("PetAge1") %>' />
                <br />
                PetBreed1:
                <asp:Label ID="PetBreed1Label" runat="server" 
                    Text='<%# Eval("PetBreed1") %>' />
                <br />
                OthOccName1:
                <asp:Label ID="OthOccName1Label" runat="server" 
                    Text='<%# Eval("OthOccName1") %>' />
                <br />
                OthOccRelationship1:
                <asp:Label ID="OthOccRelationship1Label" runat="server" 
                    Text='<%# Eval("OthOccRelationship1") %>' />
                <br />
                OthOccAge1:
                <asp:Label ID="OthOccAge1Label" runat="server" 
                    Text='<%# Eval("OthOccAge1") %>' />
                <br />
                OthOccName2:
                <asp:Label ID="OthOccName2Label" runat="server" 
                    Text='<%# Eval("OthOccName2") %>' />
                <br />
                OthOccRelationship2:
                <asp:Label ID="OthOccRelationship2Label" runat="server" 
                    Text='<%# Eval("OthOccRelationship2") %>' />
                <br />
                OthOccAge2:
                <asp:Label ID="OthOccAge2Label" runat="server" 
                    Text='<%# Eval("OthOccAge2") %>' />
                <br />
                OthOccName3:
                <asp:Label ID="OthOccName3Label" runat="server" 
                    Text='<%# Eval("OthOccName3") %>' />
                <br />
                OthOccRelationship3:
                <asp:Label ID="OthOccRelationship3Label" runat="server" 
                    Text='<%# Eval("OthOccRelationship3") %>' />
                <br />
                OthOccAge3:
                <asp:Label ID="OthOccAge3Label" runat="server" 
                    Text='<%# Eval("OthOccAge3") %>' />
                <br />
                Demeanor:
                <asp:Label ID="DemeanorLabel" runat="server" Text='<%# Eval("Demeanor") %>' />
                <br />
                ScreeningStatus:
                <asp:Label ID="ScreeningStatusLabel" runat="server" 
                    Text='<%# Eval("ScreeningStatus") %>' />
                <br />
                MaxApt:
                <asp:Label ID="MaxAptLabel" runat="server" Text='<%# Eval("MaxApt") %>' />
                <br />
                MaxHouseAmount:
                <asp:Label ID="MaxHouseAmountLabel" runat="server" 
                    Text='<%# Eval("MaxHouseAmount") %>' />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" 
                style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">
                ScreeningID:
                <asp:Label ID="ScreeningIDLabel" runat="server" 
                    Text='<%# Eval("ScreeningID") %>' />
                <br />
                FindOutAboutUs:
                <asp:Label ID="FindOutAboutUsLabel" runat="server" 
                    Text='<%# Eval("FindOutAboutUs") %>' />
                <br />
                ScreeningDate:
                <asp:Label ID="ScreeningDateLabel" runat="server" 
                    Text='<%# Eval("ScreeningDate") %>' />
                <br />
                ScreeningTime:
                <asp:Label ID="ScreeningTimeLabel" runat="server" 
                    Text='<%# Eval("ScreeningTime") %>' />
                <br />
                CompleteAddress:
                <asp:Label ID="CompleteAddressLabel" runat="server" 
                    Text='<%# Eval("CompleteAddress") %>' />
                <br />
                DateOfDesiredMoveIn:
                <asp:Label ID="DateOfDesiredMoveInLabel" runat="server" 
                    Text='<%# Eval("DateOfDesiredMoveIn") %>' />
                <br />
                NumOfOccupants:
                <asp:Label ID="NumOfOccupantsLabel" runat="server" 
                    Text='<%# Eval("NumOfOccupants") %>' />
                <br />
                RequiredNumBed:
                <asp:Label ID="RequiredNumBedLabel" runat="server" 
                    Text='<%# Eval("RequiredNumBed") %>' />
                <br />
                RequiredNumBath:
                <asp:Label ID="RequiredNumBathLabel" runat="server" 
                    Text='<%# Eval("RequiredNumBath") %>' />
                <br />
                <asp:CheckBox ID="RequiredWDCheckBox" runat="server" 
                    Checked='<%# Eval("RequiredWD") %>' Enabled="false" Text="RequiredWD" />
                <br />
                RequestLease:
                <asp:Label ID="RequestLeaseLabel" runat="server" 
                    Text='<%# Eval("RequestLease") %>' />
                <br />
                TargetRent:
                <asp:Label ID="TargetRentLabel" runat="server" 
                    Text='<%# Eval("TargetRent") %>' />
                <br />
                OtherDesiredFeatures:
                <asp:Label ID="OtherDesiredFeaturesLabel" runat="server" 
                    Text='<%# Eval("OtherDesiredFeatures") %>' />
                <br />
                <asp:CheckBox ID="BrokenLeaseCheckBox" runat="server" 
                    Checked='<%# Eval("BrokenLease") %>' Enabled="false" 
                    Text="BrokenLease" />
                <br />
                BrokenLeaseWhy:
                <asp:Label ID="BrokenLeaseWhyLabel" runat="server" 
                    Text='<%# Eval("BrokenLeaseWhy") %>' />
                <br />
                <asp:CheckBox ID="CriminalConvictionCheckBox" runat="server" 
                    Checked='<%# Eval("CriminalConviction") %>' Enabled="false" 
                    Text="CriminalConviction" />
                <br />
                CriminalConvictionReason:
                <asp:Label ID="CriminalConvictionReasonLabel" runat="server" 
                    Text='<%# Eval("CriminalConvictionReason") %>' />
                <br />
                <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                    Checked='<%# Eval("nonHumanOccupants") %>' Enabled="false" 
                    Text="nonHumanOccupants" />
                <br />
                PetKind1:
                <asp:Label ID="PetKind1Label" runat="server" 
                    Text='<%# Eval("PetKind1") %>' />
                <br />
                PetWeight1:
                <asp:Label ID="PetWeight1Label" runat="server" 
                    Text='<%# Eval("PetWeight1") %>' />
                <br />
                PetAge1:
                <asp:Label ID="PetAge1Label" runat="server" 
                    Text='<%# Eval("PetAge1") %>' />
                <br />
                PetBreed1:
                <asp:Label ID="PetBreed1Label" runat="server" 
                    Text='<%# Eval("PetBreed1") %>' />
                <br />
                OthOccName1:
                <asp:Label ID="OthOccName1Label" runat="server" 
                    Text='<%# Eval("OthOccName1") %>' />
                <br />
                OthOccRelationship1:
                <asp:Label ID="OthOccRelationship1Label" runat="server" 
                    Text='<%# Eval("OthOccRelationship1") %>' />
                <br />
                OthOccAge1:
                <asp:Label ID="OthOccAge1Label" runat="server" 
                    Text='<%# Eval("OthOccAge1") %>' />
                <br />
                OthOccName2:
                <asp:Label ID="OthOccName2Label" runat="server" 
                    Text='<%# Eval("OthOccName2") %>' />
                <br />
                OthOccRelationship2:
                <asp:Label ID="OthOccRelationship2Label" runat="server" 
                    Text='<%# Eval("OthOccRelationship2") %>' />
                <br />
                OthOccAge2:
                <asp:Label ID="OthOccAge2Label" runat="server" 
                    Text='<%# Eval("OthOccAge2") %>' />
                <br />
                OthOccName3:
                <asp:Label ID="OthOccName3Label" runat="server" 
                    Text='<%# Eval("OthOccName3") %>' />
                <br />
                OthOccRelationship3:
                <asp:Label ID="OthOccRelationship3Label" runat="server" 
                    Text='<%# Eval("OthOccRelationship3") %>' />
                <br />
                OthOccAge3:
                <asp:Label ID="OthOccAge3Label" runat="server" 
                    Text='<%# Eval("OthOccAge3") %>' />
                <br />
                Demeanor:
                <asp:Label ID="DemeanorLabel" runat="server" Text='<%# Eval("Demeanor") %>' />
                <br />
                ScreeningStatus:
                <asp:Label ID="ScreeningStatusLabel" runat="server" 
                    Text='<%# Eval("ScreeningStatus") %>' />
                <br />
                MaxApt:
                <asp:Label ID="MaxAptLabel" runat="server" Text='<%# Eval("MaxApt") %>' />
                <br />
                MaxHouseAmount:
                <asp:Label ID="MaxHouseAmountLabel" runat="server" 
                    Text='<%# Eval("MaxHouseAmount") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    </td>
    <td align="left" valign="top">
    
        <asp:ListView ID="ListView2" runat="server" 
            DataSourceID="SqlScreening2" GroupItemCount="2" style="font-size: small">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFF8DC;">
                    FirstName:
                    <asp:Label ID="FirstNameLabel" runat="server" 
                        Text='<%# Eval("FirstName") %>' />
                    <br />
                    MiddleName:
                    <asp:Label ID="MiddleNameLabel" runat="server" 
                        Text='<%# Eval("MiddleName") %>' />
                    <br />
                    LastName:
                    <asp:Label ID="LastNameLabel" runat="server" 
                        Text='<%# Eval("LastName") %>' />
                    <br />
                    PhoneNumber:
                    <asp:Label ID="PhoneNumberLabel" runat="server" 
                        Text='<%# Eval("PhoneNumber") %>' />
                    <br />
                    DriverLicenseState:
                    <asp:Label ID="DriverLicenseStateLabel" runat="server" 
                        Text='<%# Eval("DriverLicenseState") %>' />
                    <br />
                    DriverLicenseNumber:
                    <asp:Label ID="DriverLicenseNumberLabel" runat="server" 
                        Text='<%# Eval("DriverLicenseNumber") %>' />
                    <br />
                    SSN:
                    <asp:Label ID="SSNLabel" runat="server" 
                        Text='<%# Eval("SSN") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" 
                        Text='<%# Eval("DOB") %>' />
                    <br />
                    Employer:
                    <asp:Label ID="EmployerLabel" runat="server" 
                        Text='<%# Eval("Employer") %>' />
                    <br />
                    DOH:
                    <asp:Label ID="DOHLabel" runat="server" 
                        Text='<%# Eval("DOH") %>' />
                    <br />
                    <asp:CheckBox ID="FullTimeCheckBox" runat="server" 
                        Checked='<%# Eval("FullTime") %>' Enabled="false" Text="FullTime" />
                    <br />
                    EmployerNumber:
                    <asp:Label ID="EmployerNumberLabel" runat="server" 
                        Text='<%# Eval("EmployerNumber") %>' />
                    <br />
                    GrossSalary:
                    <asp:Label ID="GrossSalaryLabel" runat="server" 
                        Text='<%# Eval("GrossSalary") %>' />
                    <br />
                    SalarySchedule:
                    <asp:Label ID="SalaryScheduleLabel" runat="server" 
                        Text='<%# Eval("SalarySchedule") %>' />
                    <br />
                    OtherIncome:
                    <asp:Label ID="OtherIncomeLabel" runat="server" 
                        Text='<%# Eval("OtherIncome") %>' />
                    <br />
                    OtherIncomeType:
                    <asp:Label ID="OtherIncomeTypeLabel" runat="server" 
                        Text='<%# Eval("OtherIncomeType") %>' />
                    <br />
                    SSIIncome:
                    <asp:Label ID="SSIIncomeLabel" runat="server" Text='<%# Eval("SSIIncome") %>' />
                    <br />
                    SSBIncome:
                    <asp:Label ID="SSBIncomeLabel" runat="server" Text='<%# Eval("SSBIncome") %>' />
                    <br />
                    CreditScore:
                    <asp:Label ID="CreditScoreLabel" runat="server" 
                        Text='<%# Eval("CreditScore") %>' />
                    <br />
                    PresentLandlord:
                    <asp:Label ID="PresentLandlordLabel" runat="server" 
                        Text='<%# Eval("PresentLandlord") %>' />
                    <br />
                    LandLordPhone:
                    <asp:Label ID="LandLordPhoneLabel" runat="server" 
                        Text='<%# Eval("LandLordPhone") %>' />
                    <br />
                    CurrentStreetAddress:
                    <asp:Label ID="CurrentStreetAddressLabel" runat="server" 
                        Text='<%# Eval("CurrentStreetAddress") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                    <br />
                    State:
                    <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                    <br />
                    Zip:
                    <asp:Label ID="ZipLabel" runat="server" Text='<%# Eval("Zip") %>' />
                    <br />
                    YearsRented:
                    <asp:Label ID="YearsRentedLabel" runat="server" 
                        Text='<%# Eval("YearsRented") %>' />
                    <br />
                    MonthPayment:
                    <asp:Label ID="MonthPaymentLabel" runat="server" 
                        Text='<%# Eval("MonthPayment") %>' />
                    <br />
                    VehicleMake:
                    <asp:Label ID="VehicleMakeLabel" runat="server" 
                        Text='<%# Eval("VehicleMake") %>' />
                    <br />
                    VehicleColor:
                    <asp:Label ID="VehicleColorLabel" runat="server" 
                        Text='<%# Eval("VehicleColor") %>' />
                    <br />
                    VehicleYear:
                    <asp:Label ID="VehicleYearLabel" runat="server" 
                        Text='<%# Eval("VehicleYear") %>' />
                    <br />
                    LicenseState:
                    <asp:Label ID="LicenseStateLabel" runat="server" 
                        Text='<%# Eval("LicenseState") %>' />
                    <br />
                    LicenseNum:
                    <asp:Label ID="LicenseNumLabel" runat="server" 
                        Text='<%# Eval("LicenseNum") %>' />
                    <br />
                    EmergencyContact:
                    <asp:Label ID="EmergencyContactLabel" runat="server" 
                        Text='<%# Eval("EmergencyContact") %>' />
                    <br />
                    EmergencyRelationship:
                    <asp:Label ID="EmergencyRelationshipLabel" runat="server" 
                        Text='<%# Eval("EmergencyRelationship") %>' />
                    <br />
                    EmergencyContactPhone:
                    <asp:Label ID="EmergencyContactPhoneLabel" runat="server" 
                        Text='<%# Eval("EmergencyContactPhone") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #008A8C; color: #FFFFFF;">
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
                    PhoneNumber:
                    <asp:TextBox ID="PhoneNumberTextBox" runat="server" 
                        Text='<%# Bind("PhoneNumber") %>' />
                    <br />
                    DriverLicenseState:
                    <asp:TextBox ID="DriverLicenseStateTextBox" runat="server" 
                        Text='<%# Bind("DriverLicenseState") %>' />
                    <br />
                    DriverLicenseNumber:
                    <asp:TextBox ID="DriverLicenseNumberTextBox" runat="server" 
                        Text='<%# Bind("DriverLicenseNumber") %>' />
                    <br />
                    SSN:
                    <asp:TextBox ID="SSNTextBox" runat="server" 
                        Text='<%# Bind("SSN") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" 
                        Text='<%# Bind("DOB") %>' />
                    <br />
                    Employer:
                    <asp:TextBox ID="EmployerTextBox" runat="server" 
                        Text='<%# Bind("Employer") %>' />
                    <br />
                    DOH:
                    <asp:TextBox ID="DOHTextBox" runat="server" 
                        Text='<%# Bind("DOH") %>' />
                    <br />
                    <asp:CheckBox ID="FullTimeCheckBox" runat="server" 
                        Checked='<%# Bind("FullTime") %>' Text="FullTime" />
                    <br />
                    EmployerNumber:
                    <asp:TextBox ID="EmployerNumberTextBox" runat="server" 
                        Text='<%# Bind("EmployerNumber") %>' />
                    <br />
                    GrossSalary:
                    <asp:TextBox ID="GrossSalaryTextBox" runat="server" 
                        Text='<%# Bind("GrossSalary") %>' />
                    <br />
                    SalarySchedule:
                    <asp:TextBox ID="SalaryScheduleTextBox" runat="server" 
                        Text='<%# Bind("SalarySchedule") %>' />
                    <br />
                    OtherIncome:
                    <asp:TextBox ID="OtherIncomeTextBox" runat="server" 
                        Text='<%# Bind("OtherIncome") %>' />
                    <br />
                    OtherIncomeType:
                    <asp:TextBox ID="OtherIncomeTypeTextBox" runat="server" 
                        Text='<%# Bind("OtherIncomeType") %>' />
                    <br />
                    SSIIncome:
                    <asp:TextBox ID="SSIIncomeTextBox" runat="server" 
                        Text='<%# Bind("SSIIncome") %>' />
                    <br />
                    SSBIncome:
                    <asp:TextBox ID="SSBIncomeTextBox" runat="server" 
                        Text='<%# Bind("SSBIncome") %>' />
                    <br />
                    CreditScore:
                    <asp:TextBox ID="CreditScoreTextBox" runat="server" 
                        Text='<%# Bind("CreditScore") %>' />
                    <br />
                    PresentLandlord:
                    <asp:TextBox ID="PresentLandlordTextBox" runat="server" 
                        Text='<%# Bind("PresentLandlord") %>' />
                    <br />
                    LandLordPhone:
                    <asp:TextBox ID="LandLordPhoneTextBox" runat="server" 
                        Text='<%# Bind("LandLordPhone") %>' />
                    <br />
                    CurrentStreetAddress:
                    <asp:TextBox ID="CurrentStreetAddressTextBox" runat="server" 
                        Text='<%# Bind("CurrentStreetAddress") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
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
                    VehicleMake:
                    <asp:TextBox ID="VehicleMakeTextBox" runat="server" 
                        Text='<%# Bind("VehicleMake") %>' />
                    <br />
                    VehicleColor:
                    <asp:TextBox ID="VehicleColorTextBox" runat="server" 
                        Text='<%# Bind("VehicleColor") %>' />
                    <br />
                    VehicleYear:
                    <asp:TextBox ID="VehicleYearTextBox" runat="server" 
                        Text='<%# Bind("VehicleYear") %>' />
                    <br />
                    LicenseState:
                    <asp:TextBox ID="LicenseStateTextBox" runat="server" 
                        Text='<%# Bind("LicenseState") %>' />
                    <br />
                    LicenseNum:
                    <asp:TextBox ID="LicenseNumTextBox" runat="server" 
                        Text='<%# Bind("LicenseNum") %>' />
                    <br />
                    EmergencyContact:
                    <asp:TextBox ID="EmergencyContactTextBox" runat="server" 
                        Text='<%# Bind("EmergencyContact") %>' />
                    <br />
                    EmergencyRelationship:
                    <asp:TextBox ID="EmergencyRelationshipTextBox" runat="server" 
                        Text='<%# Bind("EmergencyRelationship") %>' />
                    <br />
                    EmergencyContactPhone:
                    <asp:TextBox ID="EmergencyContactPhoneTextBox" runat="server" 
                        Text='<%# Bind("EmergencyContactPhone") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;" 
                    runat="server">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr ID="itemPlaceholderContainer" runat="server">
                    <td ID="itemPlaceholder" runat="server">
                    </td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">
                    FirstName:
                    <asp:TextBox ID="FirstNameTextBox" runat="server" 
                        Text='<%# Bind("FirstName") %>' />
                    <br />MiddleName:
                    <asp:TextBox ID="MiddleNameTextBox" runat="server" 
                        Text='<%# Bind("MiddleName") %>' />
                    <br />LastName:
                    <asp:TextBox ID="LastNameTextBox" runat="server" 
                        Text='<%# Bind("LastName") %>' />
                    <br />PhoneNumber:
                    <asp:TextBox ID="PhoneNumberTextBox" runat="server" 
                        Text='<%# Bind("PhoneNumber") %>' />
                    <br />DriverLicenseState:
                    <asp:TextBox ID="DriverLicenseStateTextBox" runat="server" 
                        Text='<%# Bind("DriverLicenseState") %>' />
                    <br />DriverLicenseNumber:
                    <asp:TextBox ID="DriverLicenseNumberTextBox" runat="server" 
                        Text='<%# Bind("DriverLicenseNumber") %>' />
                    <br />SSN:
                    <asp:TextBox ID="SSNTextBox" runat="server" 
                        Text='<%# Bind("SSN") %>' />
                    <br />DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" 
                        Text='<%# Bind("DOB") %>' />
                    <br />Employer:
                    <asp:TextBox ID="EmployerTextBox" runat="server" 
                        Text='<%# Bind("Employer") %>' />
                    <br />
                    DOH:
                    <asp:TextBox ID="DOHTextBox" runat="server" Text='<%# Bind("DOH") %>' />
                    <br />
                    <asp:CheckBox ID="FullTimeCheckBox" runat="server" 
                        Checked='<%# Bind("FullTime") %>' Text="FullTime" />
                    <br />
                    EmployerNumber:
                    <asp:TextBox ID="EmployerNumberTextBox" runat="server" 
                        Text='<%# Bind("EmployerNumber") %>' />
                    <br />
                    GrossSalary:
                    <asp:TextBox ID="GrossSalaryTextBox" runat="server" 
                        Text='<%# Bind("GrossSalary") %>' />
                    <br />
                    SalarySchedule:
                    <asp:TextBox ID="SalaryScheduleTextBox" runat="server" 
                        Text='<%# Bind("SalarySchedule") %>' />
                    <br />
                    OtherIncome:
                    <asp:TextBox ID="OtherIncomeTextBox" runat="server" 
                        Text='<%# Bind("OtherIncome") %>' />
                    <br />
                    OtherIncomeType:
                    <asp:TextBox ID="OtherIncomeTypeTextBox" runat="server" 
                        Text='<%# Bind("OtherIncomeType") %>' />
                    <br />
                    SSIIncome:
                    <asp:TextBox ID="SSIIncomeTextBox" runat="server" 
                        Text='<%# Bind("SSIIncome") %>' />
                    <br />
                    SSBIncome:
                    <asp:TextBox ID="SSBIncomeTextBox" runat="server" 
                        Text='<%# Bind("SSBIncome") %>' />
                    <br />
                    CreditScore:
                    <asp:TextBox ID="CreditScoreTextBox" runat="server" 
                        Text='<%# Bind("CreditScore") %>' />
                    <br />
                    PresentLandlord:
                    <asp:TextBox ID="PresentLandlordTextBox" runat="server" 
                        Text='<%# Bind("PresentLandlord") %>' />
                    <br />
                    LandLordPhone:
                    <asp:TextBox ID="LandLordPhoneTextBox" runat="server" 
                        Text='<%# Bind("LandLordPhone") %>' />
                    <br />
                    CurrentStreetAddress:
                    <asp:TextBox ID="CurrentStreetAddressTextBox" runat="server" 
                        Text='<%# Bind("CurrentStreetAddress") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
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
                    VehicleMake:
                    <asp:TextBox ID="VehicleMakeTextBox" runat="server" 
                        Text='<%# Bind("VehicleMake") %>' />
                    <br />
                    VehicleColor:
                    <asp:TextBox ID="VehicleColorTextBox" runat="server" 
                        Text='<%# Bind("VehicleColor") %>' />
                    <br />
                    VehicleYear:
                    <asp:TextBox ID="VehicleYearTextBox" runat="server" 
                        Text='<%# Bind("VehicleYear") %>' />
                    <br />
                    LicenseState:
                    <asp:TextBox ID="LicenseStateTextBox" runat="server" 
                        Text='<%# Bind("LicenseState") %>' />
                    <br />
                    LicenseNum:
                    <asp:TextBox ID="LicenseNumTextBox" runat="server" 
                        Text='<%# Bind("LicenseNum") %>' />
                    <br />
                    EmergencyContact:
                    <asp:TextBox ID="EmergencyContactTextBox" runat="server" 
                        Text='<%# Bind("EmergencyContact") %>' />
                    <br />
                    EmergencyRelationship:
                    <asp:TextBox ID="EmergencyRelationshipTextBox" runat="server" 
                        Text='<%# Bind("EmergencyRelationship") %>' />
                    <br />
                    EmergencyContactPhone:
                    <asp:TextBox ID="EmergencyContactPhoneTextBox" runat="server" 
                        Text='<%# Bind("EmergencyContactPhone") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #DCDCDC; color: #000000;">
                    FirstName:
                    <asp:Label ID="FirstNameLabel" runat="server" 
                        Text='<%# Eval("FirstName") %>' />
                    <br />
                    MiddleName:
                    <asp:Label ID="MiddleNameLabel" runat="server" 
                        Text='<%# Eval("MiddleName") %>' />
                    <br />
                    LastName:
                    <asp:Label ID="LastNameLabel" runat="server" 
                        Text='<%# Eval("LastName") %>' />
                    <br />
                    PhoneNumber:
                    <asp:Label ID="PhoneNumberLabel" runat="server" 
                        Text='<%# Eval("PhoneNumber") %>' />
                    <br />
                    DriverLicenseState:
                    <asp:Label ID="DriverLicenseStateLabel" runat="server" 
                        Text='<%# Eval("DriverLicenseState") %>' />
                    <br />
                    DriverLicenseNumber:
                    <asp:Label ID="DriverLicenseNumberLabel" runat="server" 
                        Text='<%# Eval("DriverLicenseNumber") %>' />
                    <br />
                    SSN:
                    <asp:Label ID="SSNLabel" runat="server" 
                        Text='<%# Eval("SSN") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" 
                        Text='<%# Eval("DOB") %>' />
                    <br />
                    Employer:
                    <asp:Label ID="EmployerLabel" runat="server" 
                        Text='<%# Eval("Employer") %>' />
                    <br />
                    DOH:
                    <asp:Label ID="DOHLabel" runat="server" 
                        Text='<%# Eval("DOH") %>' />
                    <br />
                    <asp:CheckBox ID="FullTimeCheckBox" runat="server" 
                        Checked='<%# Eval("FullTime") %>' Enabled="false" Text="FullTime" />
                    <br />
                    EmployerNumber:
                    <asp:Label ID="EmployerNumberLabel" runat="server" 
                        Text='<%# Eval("EmployerNumber") %>' />
                    <br />
                    GrossSalary:
                    <asp:Label ID="GrossSalaryLabel" runat="server" 
                        Text='<%# Eval("GrossSalary") %>' />
                    <br />
                    SalarySchedule:
                    <asp:Label ID="SalaryScheduleLabel" runat="server" 
                        Text='<%# Eval("SalarySchedule") %>' />
                    <br />
                    OtherIncome:
                    <asp:Label ID="OtherIncomeLabel" runat="server" 
                        Text='<%# Eval("OtherIncome") %>' />
                    <br />
                    OtherIncomeType:
                    <asp:Label ID="OtherIncomeTypeLabel" runat="server" 
                        Text='<%# Eval("OtherIncomeType") %>' />
                    <br />
                    SSIIncome:
                    <asp:Label ID="SSIIncomeLabel" runat="server" Text='<%# Eval("SSIIncome") %>' />
                    <br />
                    SSBIncome:
                    <asp:Label ID="SSBIncomeLabel" runat="server" Text='<%# Eval("SSBIncome") %>' />
                    <br />
                    CreditScore:
                    <asp:Label ID="CreditScoreLabel" runat="server" 
                        Text='<%# Eval("CreditScore") %>' />
                    <br />
                    PresentLandlord:
                    <asp:Label ID="PresentLandlordLabel" runat="server" 
                        Text='<%# Eval("PresentLandlord") %>' />
                    <br />
                    LandLordPhone:
                    <asp:Label ID="LandLordPhoneLabel" runat="server" 
                        Text='<%# Eval("LandLordPhone") %>' />
                    <br />
                    CurrentStreetAddress:
                    <asp:Label ID="CurrentStreetAddressLabel" runat="server" 
                        Text='<%# Eval("CurrentStreetAddress") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                    <br />
                    State:
                    <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                    <br />
                    Zip:
                    <asp:Label ID="ZipLabel" runat="server" Text='<%# Eval("Zip") %>' />
                    <br />
                    YearsRented:
                    <asp:Label ID="YearsRentedLabel" runat="server" 
                        Text='<%# Eval("YearsRented") %>' />
                    <br />
                    MonthPayment:
                    <asp:Label ID="MonthPaymentLabel" runat="server" 
                        Text='<%# Eval("MonthPayment") %>' />
                    <br />
                    VehicleMake:
                    <asp:Label ID="VehicleMakeLabel" runat="server" 
                        Text='<%# Eval("VehicleMake") %>' />
                    <br />
                    VehicleColor:
                    <asp:Label ID="VehicleColorLabel" runat="server" 
                        Text='<%# Eval("VehicleColor") %>' />
                    <br />
                    VehicleYear:
                    <asp:Label ID="VehicleYearLabel" runat="server" 
                        Text='<%# Eval("VehicleYear") %>' />
                    <br />
                    LicenseState:
                    <asp:Label ID="LicenseStateLabel" runat="server" 
                        Text='<%# Eval("LicenseState") %>' />
                    <br />
                    LicenseNum:
                    <asp:Label ID="LicenseNumLabel" runat="server" 
                        Text='<%# Eval("LicenseNum") %>' />
                    <br />
                    EmergencyContact:
                    <asp:Label ID="EmergencyContactLabel" runat="server" 
                        Text='<%# Eval("EmergencyContact") %>' />
                    <br />
                    EmergencyRelationship:
                    <asp:Label ID="EmergencyRelationshipLabel" runat="server" 
                        Text='<%# Eval("EmergencyRelationship") %>' />
                    <br />
                    EmergencyContactPhone:
                    <asp:Label ID="EmergencyContactPhoneLabel" runat="server" 
                        Text='<%# Eval("EmergencyContactPhone") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="groupPlaceholderContainer" runat="server" border="1" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr ID="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" 
                    style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">
                    FirstName:
                    <asp:Label ID="FirstNameLabel" runat="server" 
                        Text='<%# Eval("FirstName") %>' />
                    <br />
                    MiddleName:
                    <asp:Label ID="MiddleNameLabel" runat="server" 
                        Text='<%# Eval("MiddleName") %>' />
                    <br />
                    LastName:
                    <asp:Label ID="LastNameLabel" runat="server" 
                        Text='<%# Eval("LastName") %>' />
                    <br />
                    PhoneNumber:
                    <asp:Label ID="PhoneNumberLabel" runat="server" 
                        Text='<%# Eval("PhoneNumber") %>' />
                    <br />
                    DriverLicenseState:
                    <asp:Label ID="DriverLicenseStateLabel" runat="server" 
                        Text='<%# Eval("DriverLicenseState") %>' />
                    <br />
                    DriverLicenseNumber:
                    <asp:Label ID="DriverLicenseNumberLabel" runat="server" 
                        Text='<%# Eval("DriverLicenseNumber") %>' />
                    <br />
                    SSN:
                    <asp:Label ID="SSNLabel" runat="server" 
                        Text='<%# Eval("SSN") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" 
                        Text='<%# Eval("DOB") %>' />
                    <br />
                    Employer:
                    <asp:Label ID="EmployerLabel" runat="server" 
                        Text='<%# Eval("Employer") %>' />
                    <br />
                    DOH:
                    <asp:Label ID="DOHLabel" runat="server" 
                        Text='<%# Eval("DOH") %>' />
                    <br />
                    <asp:CheckBox ID="FullTimeCheckBox" runat="server" 
                        Checked='<%# Eval("FullTime") %>' Enabled="false" Text="FullTime" />
                    <br />
                    EmployerNumber:
                    <asp:Label ID="EmployerNumberLabel" runat="server" 
                        Text='<%# Eval("EmployerNumber") %>' />
                    <br />
                    GrossSalary:
                    <asp:Label ID="GrossSalaryLabel" runat="server" 
                        Text='<%# Eval("GrossSalary") %>' />
                    <br />
                    SalarySchedule:
                    <asp:Label ID="SalaryScheduleLabel" runat="server" 
                        Text='<%# Eval("SalarySchedule") %>' />
                    <br />
                    OtherIncome:
                    <asp:Label ID="OtherIncomeLabel" runat="server" 
                        Text='<%# Eval("OtherIncome") %>' />
                    <br />
                    OtherIncomeType:
                    <asp:Label ID="OtherIncomeTypeLabel" runat="server" 
                        Text='<%# Eval("OtherIncomeType") %>' />
                    <br />
                    SSIIncome:
                    <asp:Label ID="SSIIncomeLabel" runat="server" Text='<%# Eval("SSIIncome") %>' />
                    <br />
                    SSBIncome:
                    <asp:Label ID="SSBIncomeLabel" runat="server" Text='<%# Eval("SSBIncome") %>' />
                    <br />
                    CreditScore:
                    <asp:Label ID="CreditScoreLabel" runat="server" 
                        Text='<%# Eval("CreditScore") %>' />
                    <br />
                    PresentLandlord:
                    <asp:Label ID="PresentLandlordLabel" runat="server" 
                        Text='<%# Eval("PresentLandlord") %>' />
                    <br />
                    LandLordPhone:
                    <asp:Label ID="LandLordPhoneLabel" runat="server" 
                        Text='<%# Eval("LandLordPhone") %>' />
                    <br />
                    CurrentStreetAddress:
                    <asp:Label ID="CurrentStreetAddressLabel" runat="server" 
                        Text='<%# Eval("CurrentStreetAddress") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                    <br />
                    State:
                    <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                    <br />
                    Zip:
                    <asp:Label ID="ZipLabel" runat="server" Text='<%# Eval("Zip") %>' />
                    <br />
                    YearsRented:
                    <asp:Label ID="YearsRentedLabel" runat="server" 
                        Text='<%# Eval("YearsRented") %>' />
                    <br />
                    MonthPayment:
                    <asp:Label ID="MonthPaymentLabel" runat="server" 
                        Text='<%# Eval("MonthPayment") %>' />
                    <br />
                    VehicleMake:
                    <asp:Label ID="VehicleMakeLabel" runat="server" 
                        Text='<%# Eval("VehicleMake") %>' />
                    <br />
                    VehicleColor:
                    <asp:Label ID="VehicleColorLabel" runat="server" 
                        Text='<%# Eval("VehicleColor") %>' />
                    <br />
                    VehicleYear:
                    <asp:Label ID="VehicleYearLabel" runat="server" 
                        Text='<%# Eval("VehicleYear") %>' />
                    <br />
                    LicenseState:
                    <asp:Label ID="LicenseStateLabel" runat="server" 
                        Text='<%# Eval("LicenseState") %>' />
                    <br />
                    LicenseNum:
                    <asp:Label ID="LicenseNumLabel" runat="server" 
                        Text='<%# Eval("LicenseNum") %>' />
                    <br />
                    EmergencyContact:
                    <asp:Label ID="EmergencyContactLabel" runat="server" 
                        Text='<%# Eval("EmergencyContact") %>' />
                    <br />
                    EmergencyRelationship:
                    <asp:Label ID="EmergencyRelationshipLabel" runat="server" 
                        Text='<%# Eval("EmergencyRelationship") %>' />
                    <br />
                    EmergencyContactPhone:
                    <asp:Label ID="EmergencyContactPhoneLabel" runat="server" 
                        Text='<%# Eval("EmergencyContactPhone") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
    
        <asp:SqlDataSource ID="SqlScreening2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            SelectCommand="SELECT [FirstName], [MiddleName], [LastName], [PhoneNumber], [DriverLicenseState], [DriverLicenseNumber], [SSN], [DOB], [Employer], [DOH], [FullTime], [EmployerNumber], [GrossSalary], [SalarySchedule], [OtherIncome], [OtherIncomeType], [SSIIncome], [SSBIncome], [CreditScore], [PresentLandlord], [LandLordPhone], [CurrentStreetAddress], [City], [State], [Zip], [YearsRented], [MonthPayment], [VehicleMake], [VehicleColor], [VehicleYear], [LicenseState], [LicenseNum], [EmergencyContact], [EmergencyRelationship], [EmergencyContactPhone] FROM [Applicant] WHERE ([screeningid] = @screeningid)">
            <SelectParameters>
                <asp:SessionParameter Name="screeningid" SessionField="newscreeningid" 
                    Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </td>
    </tr>
    </table>
    
    <table>
    <tr>
    <td><b>Office Only Information</b></td>
    </tr>
 
    <tr>
    <td><asp:ListView ID="ListView3" runat="server" DataSourceID="SqlScreening3" 
            style="font-size: small">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color:#FFF8DC;">
                LeasingApprovedBy:
                <asp:Label ID="LeasingApprovedByLabel" runat="server" 
                    Text='<%# Eval("LeasingApprovedBy") %>' />
                <br />LeasingApprovalDate:
                <asp:Label ID="LeasingApprovalDateLabel" runat="server" 
                    Text='<%# Eval("LeasingApprovalDate") %>' />
                <br />LeasingAgentComments:
                <asp:Label ID="LeasingAgentCommentsLabel" runat="server" 
                    Text='<%# Eval("LeasingAgentComments") %>' />
                <br />EnteredBy:
                <asp:Label ID="EnteredByLabel" runat="server" Text='<%# Eval("EnteredBy") %>' />
                <br />ManagementApprovedBy:
                <asp:Label ID="ManagementApprovedByLabel" runat="server" 
                    Text='<%# Eval("ManagementApprovedBy") %>' />
                <br />ManagementApprovalDate:
                <asp:Label ID="ManagementApprovalDateLabel" runat="server" 
                    Text='<%# Eval("ManagementApprovalDate") %>' />
                <br />ManagementComments:
                <asp:Label ID="ManagementCommentsLabel" runat="server" 
                    Text='<%# Eval("ManagementComments") %>' />
                <br />ApplicationFeeAmount:
                <asp:Label ID="ApplicationFeeAmountLabel" runat="server" 
                    Text='<%# Eval("ApplicationFeeAmount") %>' />
                <br />ApplicationFeeDate:
                <asp:Label ID="ApplicationFeeDateLabel" runat="server" 
                    Text='<%# Eval("ApplicationFeeDate") %>' />
                <br />DepAmountRecieved:
                <asp:Label ID="DepAmountRecievedLabel" runat="server" 
                    Text='<%# Eval("DepAmountRecieved") %>' />
                <br />DepDateRecieved:
                <asp:Label ID="DepDateRecievedLabel" runat="server" 
                    Text='<%# Eval("DepDateRecieved") %>' />
                <br />
                <asp:CheckBox ID="BackgroundCompleteCheckBox" runat="server" 
                    Checked='<%# Eval("BackgroundComplete") %>' Enabled="false" 
                    Text="BackgroundComplete" />
                <br />
                <asp:CheckBox ID="CreditReportCheckBox" runat="server" 
                    Checked='<%# Eval("CreditReport") %>' Enabled="false" Text="CreditReport" />
                <br />
                <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Eval("ProofOfIncome") %>' Enabled="false" Text="ProofOfIncome" />
                <br />
                <asp:CheckBox ID="EmployerVerificationCheckBox" runat="server" 
                    Checked='<%# Eval("EmployerVerification") %>' Enabled="false" 
                    Text="EmployerVerification" />
                <br />
                <asp:CheckBox ID="LandlordReferenceCheckBox" runat="server" 
                    Checked='<%# Eval("LandlordReference") %>' Enabled="false" 
                    Text="LandlordReference" />
                <br />
                <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Eval("PastTenant") %>' Enabled="false" Text="PastTenant" />
                <br />
                <asp:CheckBox ID="ApprovedCheckBox" runat="server" 
                    Checked='<%# Eval("Approved") %>' Enabled="false" Text="Approved" />
                <br />ReviewedBy:
                <asp:Label ID="ReviewedByLabel" runat="server" 
                    Text='<%# Eval("ReviewedBy") %>' />
                <br />Classification:
                <asp:Label ID="ClassificationLabel" runat="server" 
                    Text='<%# Eval("Classification") %>' />
                <br />ProcessedBy:
                <asp:Label ID="ProcessedByLabel" runat="server" 
                    Text='<%# Eval("ProcessedBy") %>' />
                <br />ProcessedOnDate:
                <asp:Label ID="ProcessedOnDateLabel" runat="server" 
                    Text='<%# Eval("ProcessedOnDate") %>' />
                <br />cosignerID:
                <asp:Label ID="cosignerIDLabel" runat="server" 
                    Text='<%# Eval("cosignerID") %>' />
                <br />
                ScreeningNotes:
                <asp:Label ID="ScreeningNotesLabel" runat="server" 
                    Text='<%# Eval("ScreeningNotes") %>' />
                <br />incomeDifferent:
                <asp:Label ID="incomeDifferentLabel" runat="server" 
                    Text='<%# Eval("incomeDifferent") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">
                LeasingApprovedBy:
                <asp:TextBox ID="LeasingApprovedByTextBox" runat="server" 
                    Text='<%# Bind("LeasingApprovedBy") %>' />
                <br />LeasingApprovalDate:
                <asp:TextBox ID="LeasingApprovalDateTextBox" runat="server" 
                    Text='<%# Bind("LeasingApprovalDate") %>' />
                <br />LeasingAgentComments:
                <asp:TextBox ID="LeasingAgentCommentsTextBox" runat="server" 
                    Text='<%# Bind("LeasingAgentComments") %>' />
                <br />EnteredBy:
                <asp:TextBox ID="EnteredByTextBox" runat="server" 
                    Text='<%# Bind("EnteredBy") %>' />
                <br />ManagementApprovedBy:
                <asp:TextBox ID="ManagementApprovedByTextBox" runat="server" 
                    Text='<%# Bind("ManagementApprovedBy") %>' />
                <br />ManagementApprovalDate:
                <asp:TextBox ID="ManagementApprovalDateTextBox" runat="server" 
                    Text='<%# Bind("ManagementApprovalDate") %>' />
                <br />ManagementComments:
                <asp:TextBox ID="ManagementCommentsTextBox" runat="server" 
                    Text='<%# Bind("ManagementComments") %>' />
                <br />ApplicationFeeAmount:
                <asp:TextBox ID="ApplicationFeeAmountTextBox" runat="server" 
                    Text='<%# Bind("ApplicationFeeAmount") %>' />
                <br />ApplicationFeeDate:
                <asp:TextBox ID="ApplicationFeeDateTextBox" runat="server" 
                    Text='<%# Bind("ApplicationFeeDate") %>' />
                <br />DepAmountRecieved:
                <asp:TextBox ID="DepAmountRecievedTextBox" runat="server" 
                    Text='<%# Bind("DepAmountRecieved") %>' />
                <br />DepDateRecieved:
                <asp:TextBox ID="DepDateRecievedTextBox" runat="server" 
                    Text='<%# Bind("DepDateRecieved") %>' />
                <br />
                <asp:CheckBox ID="BackgroundCompleteCheckBox" runat="server" 
                    Checked='<%# Bind("BackgroundComplete") %>' Text="BackgroundComplete" />
                <br />
                <asp:CheckBox ID="CreditReportCheckBox" runat="server" 
                    Checked='<%# Bind("CreditReport") %>' Text="CreditReport" />
                <br />
                <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Bind("ProofOfIncome") %>' Text="ProofOfIncome" />
                <br />
                <asp:CheckBox ID="EmployerVerificationCheckBox" runat="server" 
                    Checked='<%# Bind("EmployerVerification") %>' Text="EmployerVerification" />
                <br />
                <asp:CheckBox ID="LandlordReferenceCheckBox" runat="server" 
                    Checked='<%# Bind("LandlordReference") %>' Text="LandlordReference" />
                <br />
                <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Bind("PastTenant") %>' Text="PastTenant" />
                <br />
                <asp:CheckBox ID="ApprovedCheckBox" runat="server" 
                    Checked='<%# Bind("Approved") %>' Text="Approved" />
                <br />ReviewedBy:
                <asp:TextBox ID="ReviewedByTextBox" runat="server" 
                    Text='<%# Bind("ReviewedBy") %>' />
                <br />Classification:
                <asp:TextBox ID="ClassificationTextBox" runat="server" 
                    Text='<%# Bind("Classification") %>' />
                <br />ProcessedBy:
                <asp:TextBox ID="ProcessedByTextBox" runat="server" 
                    Text='<%# Bind("ProcessedBy") %>' />
                <br />ProcessedOnDate:
                <asp:TextBox ID="ProcessedOnDateTextBox" runat="server" 
                    Text='<%# Bind("ProcessedOnDate") %>' />
                <br />cosignerID:
                <asp:TextBox ID="cosignerIDTextBox" runat="server" 
                    Text='<%# Bind("cosignerID") %>' />
                <br />
                ScreeningNotes:
                <asp:TextBox ID="ScreeningNotesTextBox" runat="server" 
                    Text='<%# Bind("ScreeningNotes") %>' />
                <br />incomeDifferent:
                <asp:TextBox ID="incomeDifferentTextBox" runat="server" 
                    Text='<%# Bind("incomeDifferent") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">
                LeasingApprovedBy:
                <asp:TextBox ID="LeasingApprovedByTextBox" runat="server" 
                    Text='<%# Bind("LeasingApprovedBy") %>' />
                <br />LeasingApprovalDate:
                <asp:TextBox ID="LeasingApprovalDateTextBox" runat="server" 
                    Text='<%# Bind("LeasingApprovalDate") %>' />
                <br />LeasingAgentComments:
                <asp:TextBox ID="LeasingAgentCommentsTextBox" runat="server" 
                    Text='<%# Bind("LeasingAgentComments") %>' />
                <br />EnteredBy:
                <asp:TextBox ID="EnteredByTextBox" runat="server" 
                    Text='<%# Bind("EnteredBy") %>' />
                <br />ManagementApprovedBy:
                <asp:TextBox ID="ManagementApprovedByTextBox" runat="server" 
                    Text='<%# Bind("ManagementApprovedBy") %>' />
                <br />ManagementApprovalDate:
                <asp:TextBox ID="ManagementApprovalDateTextBox" runat="server" 
                    Text='<%# Bind("ManagementApprovalDate") %>' />
                <br />ManagementComments:
                <asp:TextBox ID="ManagementCommentsTextBox" runat="server" 
                    Text='<%# Bind("ManagementComments") %>' />
                <br />ApplicationFeeAmount:
                <asp:TextBox ID="ApplicationFeeAmountTextBox" runat="server" 
                    Text='<%# Bind("ApplicationFeeAmount") %>' />
                <br />ApplicationFeeDate:
                <asp:TextBox ID="ApplicationFeeDateTextBox" runat="server" 
                    Text='<%# Bind("ApplicationFeeDate") %>' />
                <br />DepAmountRecieved:
                <asp:TextBox ID="DepAmountRecievedTextBox" runat="server" 
                    Text='<%# Bind("DepAmountRecieved") %>' />
                <br />DepDateRecieved:
                <asp:TextBox ID="DepDateRecievedTextBox" runat="server" 
                    Text='<%# Bind("DepDateRecieved") %>' />
                <br />
                <asp:CheckBox ID="BackgroundCompleteCheckBox" runat="server" 
                    Checked='<%# Bind("BackgroundComplete") %>' Text="BackgroundComplete" />
                <br />
                <asp:CheckBox ID="CreditReportCheckBox" runat="server" 
                    Checked='<%# Bind("CreditReport") %>' Text="CreditReport" />
                <br />
                <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Bind("ProofOfIncome") %>' Text="ProofOfIncome" />
                <br />
                <asp:CheckBox ID="EmployerVerificationCheckBox" runat="server" 
                    Checked='<%# Bind("EmployerVerification") %>' Text="EmployerVerification" />
                <br />
                <asp:CheckBox ID="LandlordReferenceCheckBox" runat="server" 
                    Checked='<%# Bind("LandlordReference") %>' Text="LandlordReference" />
                <br />
                <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Bind("PastTenant") %>' Text="PastTenant" />
                <br />
                <asp:CheckBox ID="ApprovedCheckBox" runat="server" 
                    Checked='<%# Bind("Approved") %>' Text="Approved" />
                <br />ReviewedBy:
                <asp:TextBox ID="ReviewedByTextBox" runat="server" 
                    Text='<%# Bind("ReviewedBy") %>' />
                <br />Classification:
                <asp:TextBox ID="ClassificationTextBox" runat="server" 
                    Text='<%# Bind("Classification") %>' />
                <br />ProcessedBy:
                <asp:TextBox ID="ProcessedByTextBox" runat="server" 
                    Text='<%# Bind("ProcessedBy") %>' />
                <br />ProcessedOnDate:
                <asp:TextBox ID="ProcessedOnDateTextBox" runat="server" 
                    Text='<%# Bind("ProcessedOnDate") %>' />
                <br />cosignerID:
                <asp:TextBox ID="cosignerIDTextBox" runat="server" 
                    Text='<%# Bind("cosignerID") %>' />
                <br />
                ScreeningNotes:
                <asp:TextBox ID="ScreeningNotesTextBox" runat="server" 
                    Text='<%# Bind("ScreeningNotes") %>' />
                <br />incomeDifferent:
                <asp:TextBox ID="incomeDifferentTextBox" runat="server" 
                    Text='<%# Bind("incomeDifferent") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
        <table><tr><td>
            <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                LeasingApprovedBy:
                <asp:Label ID="LeasingApprovedByLabel" runat="server" 
                    Text='<%# Eval("LeasingApprovedBy") %>' />
                <br />LeasingApprovalDate:
                <asp:Label ID="LeasingApprovalDateLabel" runat="server" 
                    Text='<%# Eval("LeasingApprovalDate") %>' />
                <br />LeasingAgentComments:
                <asp:Label ID="LeasingAgentCommentsLabel" runat="server" 
                    Text='<%# Eval("LeasingAgentComments") %>' />
                <br />EnteredBy:
                <asp:Label ID="EnteredByLabel" runat="server" Text='<%# Eval("EnteredBy") %>' />
                 </td><td style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">
                <br />ManagementApprovedBy:
                <asp:Label ID="ManagementApprovedByLabel" runat="server" 
                    Text='<%# Eval("ManagementApprovedBy") %>' />
                <br />ManagementApprovalDate:
                <asp:Label ID="ManagementApprovalDateLabel" runat="server" 
                    Text='<%# Eval("ManagementApprovalDate") %>' />
                <br />ManagementComments:
                <asp:Label ID="ManagementCommentsLabel" runat="server" 
                    Text='<%# Eval("ManagementComments") %>' />
                <br />ApplicationFeeAmount:
                <asp:Label ID="ApplicationFeeAmountLabel" runat="server" 
                    Text='<%# Eval("ApplicationFeeAmount") %>' />
                <br />ApplicationFeeDate:
                <asp:Label ID="ApplicationFeeDateLabel" runat="server" 
                    Text='<%# Eval("ApplicationFeeDate") %>' />
                <br />DepAmountRecieved:
                <asp:Label ID="DepAmountRecievedLabel" runat="server" 
                    Text='<%# Eval("DepAmountRecieved") %>' />
                <br />DepDateRecieved:
                <asp:Label ID="DepDateRecievedLabel" runat="server" 
                    Text='<%# Eval("DepDateRecieved") %>' />
                <br />
                </td><td style="background-color:#DCDCDC;color: #000000;">
                <asp:CheckBox ID="BackgroundCompleteCheckBox" runat="server" 
                    Checked='<%# Eval("BackgroundComplete") %>' Enabled="false" 
                    Text="BackgroundComplete" />
                <br />
                <asp:CheckBox ID="CreditReportCheckBox" runat="server" 
                    Checked='<%# Eval("CreditReport") %>' Enabled="false" Text="CreditReport" />
                <br />
                <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Eval("ProofOfIncome") %>' Enabled="false" Text="ProofOfIncome" />
                <br />
                <asp:CheckBox ID="EmployerVerificationCheckBox" runat="server" 
                    Checked='<%# Eval("EmployerVerification") %>' Enabled="false" 
                    Text="EmployerVerification" />
                <br />
                <asp:CheckBox ID="LandlordReferenceCheckBox" runat="server" 
                    Checked='<%# Eval("LandlordReference") %>' Enabled="false" 
                    Text="LandlordReference" />
                <br />
                <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Eval("PastTenant") %>' Enabled="false" Text="PastTenant" />
                <br />
                <asp:CheckBox ID="ApprovedCheckBox" runat="server" 
                    Checked='<%# Eval("Approved") %>' Enabled="false" Text="Approved" />
                <br />
                 </td><td style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">
                ReviewedBy:
                <asp:Label ID="ReviewedByLabel" runat="server" 
                    Text='<%# Eval("ReviewedBy") %>' />
                <br />Classification:
                <asp:Label ID="ClassificationLabel" runat="server" 
                    Text='<%# Eval("Classification") %>' />
                <br />ProcessedBy:
                <asp:Label ID="ProcessedByLabel" runat="server" 
                    Text='<%# Eval("ProcessedBy") %>' />
                <br />ProcessedOnDate:
                <asp:Label ID="ProcessedOnDateLabel" runat="server" 
                    Text='<%# Eval("ProcessedOnDate") %>' />
                <br />cosignerID:
                <asp:Label ID="cosignerIDLabel" runat="server" 
                    Text='<%# Eval("cosignerID") %>' />
                <br />
              
                ScreeningNotes:
                <asp:Label ID="ScreeningNotesLabel" runat="server" 
                    Text='<%# Eval("ScreeningNotes") %>' />
                <br />
                incomeDifferent:
                <asp:Label ID="incomeDifferentLabel" runat="server" 
                    Text='<%# Eval("incomeDifferent") %>' />
                <br />
              </td></tr></table>
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" 
                style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                LeasingApprovedBy:
                <asp:Label ID="LeasingApprovedByLabel" runat="server" 
                    Text='<%# Eval("LeasingApprovedBy") %>' />
                <br />LeasingApprovalDate:
                <asp:Label ID="LeasingApprovalDateLabel" runat="server" 
                    Text='<%# Eval("LeasingApprovalDate") %>' />
                <br />LeasingAgentComments:
                <asp:Label ID="LeasingAgentCommentsLabel" runat="server" 
                    Text='<%# Eval("LeasingAgentComments") %>' />
                <br />EnteredBy:
                <asp:Label ID="EnteredByLabel" runat="server" Text='<%# Eval("EnteredBy") %>' />
                <br />ManagementApprovedBy:
                <asp:Label ID="ManagementApprovedByLabel" runat="server" 
                    Text='<%# Eval("ManagementApprovedBy") %>' />
                <br />ManagementApprovalDate:
                <asp:Label ID="ManagementApprovalDateLabel" runat="server" 
                    Text='<%# Eval("ManagementApprovalDate") %>' />
                <br />ManagementComments:
                <asp:Label ID="ManagementCommentsLabel" runat="server" 
                    Text='<%# Eval("ManagementComments") %>' />
                <br />ApplicationFeeAmount:
                <asp:Label ID="ApplicationFeeAmountLabel" runat="server" 
                    Text='<%# Eval("ApplicationFeeAmount") %>' />
                <br />ApplicationFeeDate:
                <asp:Label ID="ApplicationFeeDateLabel" runat="server" 
                    Text='<%# Eval("ApplicationFeeDate") %>' />
                <br />DepAmountRecieved:
                <asp:Label ID="DepAmountRecievedLabel" runat="server" 
                    Text='<%# Eval("DepAmountRecieved") %>' />
                <br />DepDateRecieved:
                <asp:Label ID="DepDateRecievedLabel" runat="server" 
                    Text='<%# Eval("DepDateRecieved") %>' />
                <br />
                <asp:CheckBox ID="BackgroundCompleteCheckBox" runat="server" 
                    Checked='<%# Eval("BackgroundComplete") %>' Enabled="false" 
                    Text="BackgroundComplete" />
                <br />
                <asp:CheckBox ID="CreditReportCheckBox" runat="server" 
                    Checked='<%# Eval("CreditReport") %>' Enabled="false" Text="CreditReport" />
                <br />
                <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Eval("ProofOfIncome") %>' Enabled="false" Text="ProofOfIncome" />
                <br />
                <asp:CheckBox ID="EmployerVerificationCheckBox" runat="server" 
                    Checked='<%# Eval("EmployerVerification") %>' Enabled="false" 
                    Text="EmployerVerification" />
                <br />
                <asp:CheckBox ID="LandlordReferenceCheckBox" runat="server" 
                    Checked='<%# Eval("LandlordReference") %>' Enabled="false" 
                    Text="LandlordReference" />
                <br />
                <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Eval("PastTenant") %>' Enabled="false" Text="PastTenant" />
                <br />
                <asp:CheckBox ID="ApprovedCheckBox" runat="server" 
                    Checked='<%# Eval("Approved") %>' Enabled="false" Text="Approved" />
                <br />ReviewedBy:
                <asp:Label ID="ReviewedByLabel" runat="server" 
                    Text='<%# Eval("ReviewedBy") %>' />
                <br />Classification:
                <asp:Label ID="ClassificationLabel" runat="server" 
                    Text='<%# Eval("Classification") %>' />
                <br />ProcessedBy:
                <asp:Label ID="ProcessedByLabel" runat="server" 
                    Text='<%# Eval("ProcessedBy") %>' />
                <br />ProcessedOnDate:
                <asp:Label ID="ProcessedOnDateLabel" runat="server" 
                    Text='<%# Eval("ProcessedOnDate") %>' />
                <br />cosignerID:
                <asp:Label ID="cosignerIDLabel" runat="server" 
                    Text='<%# Eval("cosignerID") %>' />
                <br />
                ScreeningNotes:
                <asp:Label ID="ScreeningNotesLabel" runat="server" 
                    Text='<%# Eval("ScreeningNotes") %>' />
                <br />incomeDifferent:
                <asp:Label ID="incomeDifferentLabel" runat="server" 
                    Text='<%# Eval("incomeDifferent") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
     </asp:ListView>
        <asp:SqlDataSource ID="SqlScreening3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            SelectCommand="SELECT [LeasingApprovedBy], [LeasingApprovalDate], [LeasingAgentComments], [EnteredBy], [ManagementApprovedBy], [ManagementApprovalDate], [ManagementComments], [ApplicationFeeAmount], [ApplicationFeeDate], [DepAmountRecieved], [DepDateRecieved], [BackgroundComplete], [CreditReport], [ProofOfIncome], [EmployerVerification], [LandlordReference], [PastTenant], [Approved], [ReviewedBy], [Classification], [ProcessedBy], [ProcessedOnDate], [cosignerID], [ScreeningNotes], [incomeDifferent] FROM [Screening] WHERE ([ScreeningID] = @ScreeningID)">
            <SelectParameters>
                <asp:SessionParameter Name="ScreeningID" SessionField="newscreeningid" 
                    Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        </td>
    </tr>
    </table>
    <asp:SqlDataSource ID="ScreeningSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
        
        SelectCommand="SELECT Screening.ScreeningID, Screening.FindOutAboutUs, Screening.ScreeningDate, Screening.ScreeningTime, Property.CompleteAddress, Screening.DateOfDesiredMoveIn, Screening.NumOfOccupants, Screening.RequiredNumBed, Screening.RequiredNumBath, Screening.RequiredWD, Screening.RequestLease, Screening.TargetRent, Screening.OtherDesiredFeatures, Screening.BrokenLease, Screening.BrokenLeaseWhy, Screening.CriminalConviction, Screening.CriminalConvictionReason, Screening.nonHumanOccupants, Screening.PetKind1, Screening.PetWeight1, Screening.PetAge1, Screening.PetBreed1, Screening.OthOccName1, Screening.OthOccRelationship1, Screening.OthOccAge1, Screening.OthOccName2, Screening.OthOccRelationship2, Screening.OthOccAge2, Screening.OthOccName3, Screening.OthOccRelationship3, Screening.OthOccAge3, Screening.Demeanor, Screening.ScreeningStatus, Screening.MaxApt, Screening.MaxHouseAmount FROM Screening INNER JOIN Property ON Screening.PropertyID = Property.PropertyID WHERE (Screening.ScreeningID = @ScreeningID)">
        <SelectParameters>
            <asp:SessionParameter Name="ScreeningID" SessionField="newscreeningid" 
                Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
