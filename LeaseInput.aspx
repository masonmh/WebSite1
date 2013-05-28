<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="LeaseInput.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Lease Input</h2>
    <p>
      <asp:DropDownList ID="ddlSelectApplicant" runat="server" AutoPostBack="True" 
            DataSourceID="sqlDSddlApplicant" DataTextField="CombinedName"
            DataValueField="ScreeningID" Height="18px" Width="415px">
            <asp:ListItem>-- pick one --</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnRefresh" runat="server" 
            PostBackUrl="~/LeaseInput.aspx" Text="Refresh Page" />
        <asp:SqlDataSource ID="sqlDSddlApplicant" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            SelectCommand="select lastname, grossSalary, applicant.screeningID, lastname+' '+CAST(applicant.screeningID as VarChar(255))+' '+CAST(screening.screeningdate as VarChar(10)) as CombinedName from applicant, screening where grossSalary = (select max(grossSalary) from applicant as f where f.screeningID = applicant.screeningID) AND applicant.screeningid = screening.screeningid AND ApprovedByManagement = 'true' AND screening.propertyid IS NOT NULL AND (screening.ScreeningStatus = '4' OR screening.ScreeningStatus IS NULL)">
        </asp:SqlDataSource>
    </p>
        <asp:Panel ID="Panel3" runat="server">
    
        <asp:Label ID="lblInitialQ0" runat="server" 
            Text="Current Screening Form" style="font-weight: 700"></asp:Label>
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
                    <asp:BoundField DataField="propertyID" HeaderText="Property ID" 
                    SortExpression="propertyID" Visible="True" />
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
    SelectCommand="SELECT [ScreeningID], [CriminalConviction], [CriminalConvictionReason], [TenantIsEmployee], [DateOfDesiredMoveIn], [NumOfOccupants], [RequiredNumBed], [RequiredNumBath], [RequiredWD], [TargetRent], [OtherDesiredFeatures], [BrokenLease], [nonHumanOccupants], [numnonrelated], [spouseIncluded], [propertyID] FROM [Screening] WHERE ([ScreeningID] = @ScreeningID)">
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
                <asp:BoundField DataField="ApplicantID" HeaderText="ApplicantID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ApplicantID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" 
                    SortExpression="MiddleName" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            
            SelectCommand="SELECT [ApplicantID], [FirstName], [LastName], [MiddleName], [GrossSalary], [FullTime], [OtherIncome], [OtherIncomeType], [SSBIncome], [SSIIncome], [DOB], [CreditScore] FROM [Applicant] WHERE ([screeningid] = @screeningid) Order By GrossSalary Desc">
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
                <asp:BoundField DataField="GasAdditional" HeaderText="GasAdditional" 
                    SortExpression="GasAdditional" />
                <asp:BoundField DataField="WaterAdditional" HeaderText="WaterAdditional" 
                    SortExpression="WaterAdditional" />
                <asp:BoundField DataField="ElectricAdditional" HeaderText="ElectricAdditional" 
                    SortExpression="ElectricAdditional" />
                <asp:CheckBoxField DataField="rentReady" HeaderText="rentReady" 
                    SortExpression="rentReady" />
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
        <asp:GridView ID="GridView6" runat="server" DataSourceID="SqlDataSource1" 
            AutoGenerateColumns="False" DataKeyNames="CoSignerID" Visible="False">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="CoSignerID" HeaderText="CoSignerID" 
                    SortExpression="CoSignerID" InsertVisible="False" ReadOnly="True" />
<asp:BoundField DataField="MiddleInitial" HeaderText="MiddleInitial" 
                    SortExpression="MiddleInitial"></asp:BoundField>
<asp:BoundField DataField="LastInitial" HeaderText="LastInitial" 
                    SortExpression="LastInitial"></asp:BoundField>
                <asp:BoundField DataField="screeningID" HeaderText="screeningID" 
                    SortExpression="screeningID" />
            </Columns>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
        SelectCommand="SELECT [FirstName], [CoSignerID], [MiddleInitial], [LastInitial], [screeningID] FROM [CoSigner] WHERE ([screeningID] = @screeningID)">
    <SelectParameters>
            <asp:SessionParameter Name="screeningid" SessionField="newscreeningid" 
                    Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div style="overflow:auto;width:2000px">
    <p>
    
        <asp:GridView ID="GridView5" runat="server" DataSourceID="SQLDSLease" 
            AutoGenerateColumns="False" DataKeyNames="leaseID" Visible="False">
            <Columns>
                <asp:BoundField DataField="leaseID" HeaderText="leaseID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="leaseID" />
                <asp:BoundField DataField="propertyID" HeaderText="propertyID" 
                    SortExpression="propertyID" />
<asp:BoundField DataField="applicantID" HeaderText="applicantID" SortExpression="applicantID"></asp:BoundField>
<asp:BoundField DataField="applicantID2" HeaderText="applicantID2" 
                    SortExpression="applicantID2"></asp:BoundField>
                <asp:BoundField DataField="dateCompleted" HeaderText="dateCompleted" 
                    SortExpression="dateCompleted" />
                <asp:BoundField DataField="wordedDateCompleted" 
                    HeaderText="wordedDateCompleted" SortExpression="wordedDateCompleted" />
                <asp:BoundField DataField="RNALLC" HeaderText="RNALLC" 
                    SortExpression="RNALLC" />
<asp:BoundField DataField="applicantID3" HeaderText="applicantID3" 
                    SortExpression="applicantID3"></asp:BoundField>
<asp:BoundField DataField="applicantID4" HeaderText="applicantID4" 
                    SortExpression="applicantID4"></asp:BoundField>
                <asp:BoundField DataField="unitNo" HeaderText="unitNo" 
                    SortExpression="unitNo" />
                <asp:BoundField DataField="propertyName" HeaderText="propertyName" 
                    SortExpression="propertyName" />
                <asp:BoundField DataField="leaseBeginDate" HeaderText="leaseBeginDate" 
                    SortExpression="leaseBeginDate" />
                <asp:BoundField DataField="wordedBeginDate" HeaderText="wordedBeginDate" 
                    SortExpression="wordedBeginDate" />
                <asp:BoundField DataField="leaseEndDate" HeaderText="leaseEndDate" 
                    SortExpression="leaseEndDate" />
                <asp:BoundField DataField="wordedEndDate" HeaderText="wordedEndDate" 
                    SortExpression="wordedEndDate" />
                <asp:BoundField DataField="MarketBaseRentA" HeaderText="MarketBaseRentA" 
                    SortExpression="MarketBaseRentA" />
                <asp:BoundField DataField="WasherDryerB" HeaderText="WasherDryerB" 
                    SortExpression="WasherDryerB" />
                <asp:BoundField DataField="ExtraOccC" HeaderText="ExtraOccC" 
                    SortExpression="ExtraOccC" />
                <asp:BoundField DataField="UtilitiesBaseD" HeaderText="UtilitiesBaseD" 
                    SortExpression="UtilitiesBaseD" />
                <asp:CheckBoxField DataField="gasUtilities" HeaderText="gasUtilities" 
                    SortExpression="gasUtilities" />
                <asp:CheckBoxField DataField="waterUtilities" HeaderText="waterUtilities" 
                    SortExpression="waterUtilities" />
                <asp:CheckBoxField DataField="electricUtilities" HeaderText="electricUtilities" 
                    SortExpression="electricUtilities" />
                <asp:BoundField DataField="UtilitiesExtra" HeaderText="UtilitiesExtra" 
                    SortExpression="UtilitiesExtra" />
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
                <asp:BoundField DataField="ShortLeaseSecDep" HeaderText="ShortLeaseSecDep" 
                    SortExpression="ShortLeaseSecDep" />
                <asp:BoundField DataField="firstNHOFeeM" HeaderText="firstNHOFeeM" 
                    SortExpression="firstNHOFeeM" />
                <asp:BoundField DataField="AddNHOFeeN" HeaderText="AddNHOFeeN" 
                    SortExpression="AddNHOFeeN" />
                <asp:BoundField DataField="firstFullMonthRentO" 
                    HeaderText="firstFullMonthRentO" SortExpression="firstFullMonthRentO" />
                <asp:BoundField DataField="PartialMonthP" HeaderText="PartialMonthP" 
                    SortExpression="PartialMonthP" />
                <asp:BoundField DataField="RenewalRebateQ" HeaderText="RenewalRebateQ" 
                    SortExpression="RenewalRebateQ" />
                <asp:BoundField DataField="SpecialDepositR" HeaderText="SpecialDepositR" 
                    SortExpression="SpecialDepositR" />
                <asp:BoundField DataField="RefundableScreenDepS" 
                    HeaderText="RefundableScreenDepS" SortExpression="RefundableScreenDepS" />
                <asp:BoundField DataField="AdvertisedSpecialT" HeaderText="AdvertisedSpecialT" 
                    SortExpression="AdvertisedSpecialT" />
                <asp:BoundField DataField="LessDepCoveredU" HeaderText="LessDepCoveredU" 
                    SortExpression="LessDepCoveredU" />
                <asp:BoundField DataField="TotalCashDueV" HeaderText="TotalCashDueV" 
                    SortExpression="TotalCashDueV" />
                <asp:BoundField DataField="FutureSpecialW" HeaderText="FutureSpecialW" 
                    SortExpression="FutureSpecialW" />
                <asp:BoundField DataField="vehicleID1" HeaderText="vehicleID1" 
                    SortExpression="vehicleID1" />
                <asp:BoundField DataField="vehicleID2" HeaderText="vehicleID2" 
                    SortExpression="vehicleID2" />
                <asp:BoundField DataField="vehicleID3" HeaderText="vehicleID3" 
                    SortExpression="vehicleID3" />
                <asp:BoundField DataField="vehicleID4" HeaderText="vehicleID4" 
                    SortExpression="vehicleID4" />
                <asp:BoundField DataField="cosigner" HeaderText="cosigner" 
                    SortExpression="cosigner" />
                <asp:BoundField DataField="LeaseAgentID" HeaderText="LeaseAgentID" 
                    SortExpression="LeaseAgentID" />
                <asp:BoundField DataField="AgentTitle" HeaderText="AgentTitle" 
                    SortExpression="AgentTitle" />
                <asp:BoundField DataField="approvedBy" HeaderText="approvedBy" 
                    SortExpression="approvedBy" />
                <asp:CheckBoxField DataField="approved" HeaderText="approved" 
                    SortExpression="approved" />
                <asp:CheckBoxField DataField="rejected" HeaderText="rejected" 
                    SortExpression="rejected" />
                <asp:BoundField DataField="decisionDate" HeaderText="decisionDate" 
                    SortExpression="decisionDate" />
                <asp:BoundField DataField="signedDate" HeaderText="signedDate" 
                    SortExpression="signedDate" />
                <asp:BoundField DataField="UserInput" HeaderText="UserInput" 
                    SortExpression="UserInput" />
                <asp:BoundField DataField="inputDate" HeaderText="inputDate" 
                    SortExpression="inputDate" />
                <asp:BoundField DataField="PetAge2" HeaderText="PetAge2" 
                    SortExpression="PetAge2" />
                <asp:BoundField DataField="PetWeight2" HeaderText="PetWeight2" 
                    SortExpression="PetWeight2" />
                <asp:BoundField DataField="PetType2" HeaderText="PetType2" 
                    SortExpression="PetType2" />
                <asp:BoundField DataField="PetColor2" HeaderText="PetColor2" 
                    SortExpression="PetColor2" />
                <asp:BoundField DataField="LastRabiesShot2" HeaderText="LastRabiesShot2" 
                    SortExpression="LastRabiesShot2" />
                <asp:BoundField DataField="PetAge" HeaderText="PetAge" 
                    SortExpression="PetAge" />
                <asp:BoundField DataField="PetWeight" HeaderText="PetWeight" 
                    SortExpression="PetWeight" />
                <asp:BoundField DataField="PetType" HeaderText="PetType" 
                    SortExpression="PetType" />
                <asp:BoundField DataField="PetColor" HeaderText="PetColor" 
                    SortExpression="PetColor" />
                <asp:BoundField DataField="LastRabiesShot" HeaderText="LastRabiesShot" 
                    SortExpression="LastRabiesShot" />
                <asp:BoundField DataField="screeningID" HeaderText="screeningID" 
                    SortExpression="screeningID" />
                <asp:CheckBoxField DataField="APlusRating" HeaderText="APlusRating" 
                    SortExpression="APlusRating" />
                <asp:BoundField DataField="LeaseNotes" HeaderText="LeaseNotes" 
                    SortExpression="LeaseNotes" />
            </Columns>
        </asp:GridView>
    </p>    </div>
    <div style="float:left; width: 700px;">
<asp:Panel ID="Panel1" runat="server">
    Enter the Following Information to Complete the Lease:<br />
    
   
    <br />
        <table>
    <tr><td align="right">Lease Begin Date:
        </td><td>
        <asp:TextBox ID="leaseBeginTextbox" runat="server" 
                     />
                          <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                 TargetControlID="leaseBeginTextbox" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                 ControlToValidate="leaseBeginTextbox" Display="Dynamic" 
                                 ErrorMessage="Date is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                        
        </td></tr>
        <tr><td align="right">Select Lease Length (Months)</td><td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
            </asp:DropDownList>
        </td></tr>
    <tr><td align="right">Lease End Date:
        </td><td>
        <asp:TextBox ID="LeaseEndDateTextbox" runat="server" ForeColor="#FF3300" Enabled="False" 
                     />
                     <asp:CalendarExtender ID="CalendarExtender2" runat="server" 
                                 TargetControlID="LeaseEndDateTextbox" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ControlToValidate="LeaseEndDateTextbox" Display="Dynamic" 
                                 ErrorMessage="Date is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label2" runat="server" Text="RNA, LLC:  "></asp:Label>
        </td><td>
    <asp:TextBox ID="txtRNA" runat="server"></asp:TextBox>
 </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label10" runat="server" Text="Add Electric"></asp:Label>
    <br />
    <asp:Label ID="Label11" runat="server" Text="Add Gas"></asp:Label>
    <br />
    <asp:Label ID="Label12" runat="server" Text="Add Water"></asp:Label>
        </td><td>
    <asp:CheckBox ID="ckElectric" runat="server" />
            <br />
    <asp:CheckBox ID="ckGas" runat="server" />
            <br />
    <asp:CheckBox ID="ckWater" runat="server" />
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label3" runat="server" Text="Other Discounts"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtDiscounts" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                 ControlToValidate="txtDiscounts" Display="Dynamic" 
                                 ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                         ControlToValidate="txtDiscounts" Display="Dynamic" 
                                         ErrorMessage="Number is Required.  Enter 0 if no discount" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                             
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label30" runat="server" Text="Prepay Amount:"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtPrepay" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                 ControlToValidate="txtPrepay" Display="Dynamic" 
                                 ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                         ControlToValidate="txtPrepay" Display="Dynamic" ErrorMessage="Number is Required.  Enter 0 if no discount" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
        </td></tr>
        <tr><td align="right">
    <asp:Label ID="Label32" runat="server" Text="Deposit Amount Transferred (Minus any Fees/Cleaning Costs):"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtDepTrans" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                 ControlToValidate="txtDepTrans" Display="Dynamic" 
                                 ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                         ControlToValidate="txtDepTrans" Display="Dynamic" ErrorMessage="Number is Required.  Enter 0 if no discount" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label4" runat="server" Text="Pet 1 Type"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtPet1Type" runat="server"></asp:TextBox>
    
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label5" runat="server" Text="Pet 1 Weight (LBS)"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtPet1Weight" runat="server"></asp:TextBox>
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label6" runat="server" Text="Pet 1 Color"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtPet1Color" runat="server"></asp:TextBox>
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label7" runat="server" Text="Pet 1 Age"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtPet1Age" runat="server"></asp:TextBox>
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label8" runat="server" Text="Pet 1 Last Rabies Shot"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtPet1LastRabShot" runat="server"></asp:TextBox>
     <asp:CalendarExtender ID="CalendarExtender4" runat="server" 
                                 TargetControlID="txtPet1LastRabShot" />
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label13" runat="server" Text="Pet 2 Type"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtPet2Type" runat="server"></asp:TextBox>
        </td></tr>
<tr><td align="right">
    <asp:Label ID="Label14" runat="server" Text="Pet 2 Weight (LBS)"></asp:Label>
    </td><td>
    <asp:TextBox ID="txtPet2Weight" runat="server"></asp:TextBox>
    </td></tr><tr><td align="right">
    <asp:Label ID="Label15" runat="server" Text="Pet 2 Color"></asp:Label>
            </td><td>
    <asp:TextBox ID="txtPet2Color" runat="server"></asp:TextBox>
            </td></tr>
<tr><td align="right">
    <asp:Label ID="Label16" runat="server" Text="Pet 2 Age"></asp:Label>
    </td><td>
    <asp:TextBox ID="txtPet2Age" runat="server"></asp:TextBox>
    </td></tr>
<tr><td align="right">
    <asp:Label ID="Label17" runat="server" Text="Pet 2 Last Rabies Shot"></asp:Label>
    </td><td>
    <asp:TextBox ID="txtPet2LastRabShot" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender3" runat="server" 
                                 TargetControlID="txtPet2LastRabShot" />
                            
    </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label9" runat="server" Text="CoSigner"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtCoSigner" runat="server" Enabled="False"></asp:TextBox>
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label18" runat="server" Text="Primary Tenant"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtPrimary" runat="server" Enabled="False"></asp:TextBox>
        </td></tr>
    <tr><td align="right">

    <asp:Label ID="Label19" runat="server" Text="Primary Vehicle ID"></asp:Label>
        </td>
    <td>
    <asp:TextBox ID="txtPrimaryVehicle" runat="server"></asp:TextBox>
        </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label20" runat="server" Text="Co-Tenant"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtCoTenant" runat="server" Enabled="False"></asp:TextBox>
    
        </td></tr>
    <tr><td align="right">
     <asp:Label ID="Label21" runat="server" Text="Co-Tenant Vehicle ID"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtCoTenantVehicle" runat="server"></asp:TextBox>
    
        </td></tr>
    <tr><td align="right">
     <asp:Label ID="Label22" runat="server" Text="Third Tenant"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtThird" runat="server" Enabled="False"></asp:TextBox>
    
        </td></tr>
    <tr><td align="right">
     <asp:Label ID="Label23" runat="server" Text="Third Tenant Vehicle ID"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtThirdVehicle" runat="server"></asp:TextBox>
        </td></tr>
    <tr><td align="right">
    
    <asp:Label ID="Label24" runat="server" Text="Fourth Tenant"></asp:Label>
        </td><td>
    <asp:TextBox ID="txtFourth" runat="server" Enabled="False"></asp:TextBox>
        </td></tr>
<tr><td align="right">
    
    <asp:Label ID="Label25" runat="server" Text="Fourth Tenant Vehicle ID"></asp:Label>
    </td><td>
    <asp:TextBox ID="txtFourthVehicle" runat="server"></asp:TextBox>
    </td></tr>
<tr><td align="right">

    <asp:Label ID="Label26" runat="server" Text="Decision Date"></asp:Label>
    </td><td>
    <asp:TextBox ID="txtDecisionDate" runat="server"></asp:TextBox>
      <asp:CalendarExtender ID="CalendarExtender5" runat="server" 
                                 TargetControlID="txtDecisionDate" />
                            
    </td></tr>
<tr><td align="right">
    
    <asp:Label ID="Label27" runat="server" Text="Signed Date"></asp:Label>
    </td><td>
    <asp:TextBox ID="txtSignedDate" runat="server"></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender6" runat="server" 
                                 TargetControlID="txtSignedDate" />
    </td></tr>
<tr><td align="right">
<asp:Label ID="Label28" runat="server" Text="Advertised Special(Total amount to be deducted from Cash Due Before Occupancy)"></asp:Label>
    </td><td>
    <asp:TextBox ID="txtAdvertised" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                 ControlToValidate="txtAdvertised" Display="Dynamic" 
                                 ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
    </td></tr>
    <tr><td align="right">
<asp:Label ID="Label29" runat="server" Text="Tenants A+ Rated:" 
            style="font-weight: 700"></asp:Label> <br />
<asp:Label ID="Label31" runat="server" Text="A+ Rating &/or have 2 or more recent years  of perfect 
payment history with Landlord and 12 months’ or more Lease). Also, A+ Rating = Gross Mo. Earned Income (including pension) of each tenant (combined if married) is ≥ 5 × 1 month’s rent and an Excellent Credit Rating and Excellent Background for each lease holder.    Must sign a 12 month or more Lease. "></asp:Label>
    </td><td>
   
            <asp:CheckBox ID="chkAPlus" runat="server" />
   
    </td></tr>
    <tr><td align="right"><asp:Label ID="Label1" runat="server" Text="Lease Notes"></asp:Label></td>
    <td><asp:TextBox ID="txtLeaseNotes" runat="server" Textmode="MultiLine"></asp:TextBox></td></tr>
    </table>
    <asp:Button ID="btnSaveData" runat="server" Text="Save Data and ReCalculate Lease" 
        ValidationGroup="AllValidators" CausesValidation="true" 
        PostBackUrl="~/LeaseInput.aspx"/>
         </asp:Panel>
    <br />
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        
            <asp:FormView ID="FormView1" runat="server" 
        DataKeyNames="leaseID" DataSourceID="SQLDSLease" 
        Width="670px" Visible="False" Enabled="False">
        <EditItemTemplate>
            leaseID:
            <asp:Label ID="leaseIDLabel1" runat="server" Text='<%# Eval("leaseID") %>' />
            <br />
            propertyID:
            <asp:TextBox ID="propertyIDTextBox" runat="server" 
                Text='<%# Bind("propertyID") %>' />
            <br />
            applicantID:
            <asp:TextBox ID="applicantIDTextBox" runat="server" 
                Text='<%# Bind("applicantID") %>' />
            <br />
            applicantID2:
            <asp:TextBox ID="applicantID2TextBox" runat="server" 
                Text='<%# Bind("applicantID2") %>' />
            <br />
            dateCompleted:
            <asp:TextBox ID="dateCompletedTextBox" runat="server" 
                Text='<%# Bind("dateCompleted") %>' />
            <br />
            wordedDateCompleted:
            <asp:TextBox ID="wordedDateCompletedTextBox" runat="server" 
                Text='<%# Bind("wordedDateCompleted") %>' />
            <br />
            RNALLC:
            <asp:TextBox ID="RNALLCTextBox" runat="server" Text='<%# Bind("RNALLC") %>' />
            <br />
            applicantID3:
            <asp:TextBox ID="applicantID3TextBox" runat="server" 
                Text='<%# Bind("applicantID3") %>' />
            <br />
            applicantID4:
            <asp:TextBox ID="applicantID4TextBox" runat="server" 
                Text='<%# Bind("applicantID4") %>' />
            <br />
            unitNo:
            <asp:TextBox ID="unitNoTextBox" runat="server" Text='<%# Bind("unitNo") %>' />
            <br />
            propertyName:
            <asp:TextBox ID="propertyNameTextBox" runat="server" 
                Text='<%# Bind("propertyName") %>' />
            <br />
            leaseBeginDate:
            <asp:TextBox ID="leaseBeginDateTextBox" runat="server" 
                Text='<%# Bind("leaseBeginDate") %>' />
            <br />
            wordedBeginDate:
            <asp:TextBox ID="wordedBeginDateTextBox" runat="server" 
                Text='<%# Bind("wordedBeginDate") %>' />
            <br />
            leaseEndDate:
            <asp:TextBox ID="leaseEndDateTextBox" runat="server" 
                Text='<%# Bind("leaseEndDate") %>' />
            <br />
            wordedEndDate:
            <asp:TextBox ID="wordedEndDateTextBox" runat="server" 
                Text='<%# Bind("wordedEndDate") %>' />
            <br />
            MarketBaseRentA:
            <asp:TextBox ID="MarketBaseRentATextBox" runat="server" 
                Text='<%# Bind("MarketBaseRentA") %>' />
            <br />
            WasherDryerB:
            <asp:TextBox ID="WasherDryerBTextBox" runat="server" 
                Text='<%# Bind("WasherDryerB") %>' />
            <br />
            ExtraOccC:
            <asp:TextBox ID="ExtraOccCTextBox" runat="server" 
                Text='<%# Bind("ExtraOccC") %>' />
            <br />
            UtilitiesBaseD:
            <asp:TextBox ID="UtilitiesBaseDTextBox" runat="server" 
                Text='<%# Bind("UtilitiesBaseD") %>' />
            <br />
            gasUtilities:
            <asp:CheckBox ID="gasUtilitiesCheckBox" runat="server" 
                Checked='<%# Bind("gasUtilities") %>' />
            <br />
            waterUtilities:
            <asp:CheckBox ID="waterUtilitiesCheckBox" runat="server" 
                Checked='<%# Bind("waterUtilities") %>' />
            <br />
            electricUtilities:
            <asp:CheckBox ID="electricUtilitiesCheckBox" runat="server" 
                Checked='<%# Bind("electricUtilities") %>' />
            <br />
            UtilitiesExtra:
            <asp:TextBox ID="UtilitiesExtraTextBox" runat="server" 
                Text='<%# Bind("UtilitiesExtra") %>' />
            <br />
            SubRentE:
            <asp:TextBox ID="SubRentETextBox" runat="server" 
                Text='<%# Bind("SubRentE") %>' />
            <br />
            NHOPremiumF:
            <asp:TextBox ID="NHOPremiumFTextBox" runat="server" 
                Text='<%# Bind("NHOPremiumF") %>' />
            <br />
            NHOPremiumF2:
            <asp:TextBox ID="NHOPremiumF2TextBox" runat="server" 
                Text='<%# Bind("NHOPremiumF2") %>' />
            <br />
            MonthLeasePremiumG:
            <asp:TextBox ID="MonthLeasePremiumGTextBox" runat="server" 
                Text='<%# Bind("MonthLeasePremiumG") %>' />
            <br />
            MonthLeasePremiumG2:
            <asp:TextBox ID="MonthLeasePremiumG2TextBox" runat="server" 
                Text='<%# Bind("MonthLeasePremiumG2") %>' />
            <br />
            TotalMonthlyRentH:
            <asp:TextBox ID="TotalMonthlyRentHTextBox" runat="server" 
                Text='<%# Bind("TotalMonthlyRentH") %>' />
            <br />
            SeniorDiscI:
            <asp:TextBox ID="SeniorDiscITextBox" runat="server" 
                Text='<%# Bind("SeniorDiscI") %>' />
            <br />
            MultiYearI:
            <asp:TextBox ID="MultiYearITextBox" runat="server" 
                Text='<%# Bind("MultiYearI") %>' />
            <br />
            totalLeasePrepayI:
            <asp:TextBox ID="totalLeasePrepayITextBox" runat="server" 
                Text='<%# Bind("totalLeasePrepayI") %>' />
            <br />
            OtherDiscountI:
            <asp:TextBox ID="OtherDiscountITextBox" runat="server" 
                Text='<%# Bind("OtherDiscountI") %>' />
            <br />standardSecurityDepH:
            <asp:TextBox ID="standardSecurityDepHTextBox" runat="server" 
                Text='<%# Bind("standardSecurityDepH") %>' />
            <br />
            AltSecDepK:
            <asp:TextBox ID="AltSecDepKTextBox" runat="server" 
                Text='<%# Bind("AltSecDepK") %>' />
            <br />
            ShortLeaseSecDep:
            <asp:TextBox ID="ShortLeaseSecDepTextBox" runat="server" 
                Text='<%# Bind("ShortLeaseSecDep") %>' />
            <br />
            firstNHOFeeM:
            <asp:TextBox ID="firstNHOFeeMTextBox" runat="server" 
                Text='<%# Bind("firstNHOFeeM") %>' />
            <br />
            AddNHOFeeN:
            <asp:TextBox ID="AddNHOFeeNTextBox" runat="server" 
                Text='<%# Bind("AddNHOFeeN") %>' />
            <br />
            firstFullMonthRentO:
            <asp:TextBox ID="firstFullMonthRentOTextBox" runat="server" 
                Text='<%# Bind("firstFullMonthRentO") %>' />
            <br />
            PartialMonthP:
            <asp:TextBox ID="PartialMonthPTextBox" runat="server" 
                Text='<%# Bind("PartialMonthP") %>' />
            <br />
            RenewalRebateQ:
            <asp:TextBox ID="RenewalRebateQTextBox" runat="server" 
                Text='<%# Bind("RenewalRebateQ") %>' />
            <br />
            SpecialDepositR:
            <asp:TextBox ID="SpecialDepositRTextBox" runat="server" 
                Text='<%# Bind("SpecialDepositR") %>' />
            <br />
            RefundableScreenDepS:
            <asp:TextBox ID="RefundableScreenDepSTextBox" runat="server" 
                Text='<%# Bind("RefundableScreenDepS") %>' />
            <br />
            AdvertisedSpecialT:
            <asp:TextBox ID="AdvertisedSpecialTTextBox" runat="server" 
                Text='<%# Bind("AdvertisedSpecialT") %>' />
            <br />
            LessDepCoveredU:
            <asp:TextBox ID="LessDepCoveredUTextBox" runat="server" 
                Text='<%# Bind("LessDepCoveredU") %>' />
            <br />
            TotalCashDueV:
            <asp:TextBox ID="TotalCashDueVTextBox" runat="server" 
                Text='<%# Bind("TotalCashDueV") %>' />
            <br />
            FutureSpecialW:
            <asp:TextBox ID="FutureSpecialWTextBox" runat="server" 
                Text='<%# Bind("FutureSpecialW") %>' />
            <br />
            vehicleID1:
            <asp:TextBox ID="vehicleID1TextBox" runat="server" 
                Text='<%# Bind("vehicleID1") %>' />
            <br />
            vehicleID2:
            <asp:TextBox ID="vehicleID2TextBox" runat="server" 
                Text='<%# Bind("vehicleID2") %>' />
            <br />
            vehicleID3:
            <asp:TextBox ID="vehicleID3TextBox" runat="server" 
                Text='<%# Bind("vehicleID3") %>' />
            <br />
            vehicleID4:
            <asp:TextBox ID="vehicleID4TextBox" runat="server" 
                Text='<%# Bind("vehicleID4") %>' />
            <br />
            cosigner:
            <asp:TextBox ID="cosignerTextBox" runat="server" 
                Text='<%# Bind("cosigner") %>' />
            <br />
            LeaseAgentID:
            <asp:TextBox ID="LeaseAgentIDTextBox" runat="server" 
                Text='<%# Bind("LeaseAgentID") %>' />
            <br />
            AgentTitle:
            <asp:TextBox ID="AgentTitleTextBox" runat="server" 
                Text='<%# Bind("AgentTitle") %>' />
            <br />
            approvedBy:
            <asp:TextBox ID="approvedByTextBox" runat="server" 
                Text='<%# Bind("approvedBy") %>' />
            <br />
            approved:
            <asp:CheckBox ID="approvedCheckBox" runat="server" 
                Checked='<%# Bind("approved") %>' />
            <br />
            rejected:
            <asp:CheckBox ID="rejectedCheckBox" runat="server" 
                Checked='<%# Bind("rejected") %>' />
            <br />
            decisionDate:
            <asp:TextBox ID="decisionDateTextBox" runat="server" 
                Text='<%# Bind("decisionDate") %>' />
            <br />
            signedDate:
            <asp:TextBox ID="signedDateTextBox" runat="server" 
                Text='<%# Bind("signedDate") %>' />
            <br />
            UserInput:
            <asp:TextBox ID="UserInputTextBox" runat="server" 
                Text='<%# Bind("UserInput") %>' />
            <br />
            inputDate:
            <asp:TextBox ID="inputDateTextBox" runat="server" 
                Text='<%# Bind("inputDate") %>' />
            <br />
            PetAge2:
            <asp:TextBox ID="PetAge2TextBox" runat="server" Text='<%# Bind("PetAge2") %>' />
            <br />
            PetWeight2:
            <asp:TextBox ID="PetWeight2TextBox" runat="server" 
                Text='<%# Bind("PetWeight2") %>' />
            <br />
            PetType2:
            <asp:TextBox ID="PetType2TextBox" runat="server" 
                Text='<%# Bind("PetType2") %>' />
            <br />
            PetColor2:
            <asp:TextBox ID="PetColor2TextBox" runat="server" 
                Text='<%# Bind("PetColor2") %>' />
            <br />
            LastRabiesShot2:
            <asp:TextBox ID="LastRabiesShot2TextBox" runat="server" 
                Text='<%# Bind("LastRabiesShot2") %>' />
            <br />
            PetAge:
            <asp:TextBox ID="PetAgeTextBox" runat="server" Text='<%# Bind("PetAge") %>' />
            <br />
            PetWeight:
            <asp:TextBox ID="PetWeightTextBox" runat="server" 
                Text='<%# Bind("PetWeight") %>' />
            <br />
            PetType:
            <asp:TextBox ID="PetTypeTextBox" runat="server" Text='<%# Bind("PetType") %>' />
            <br />
            PetColor:
            <asp:TextBox ID="PetColorTextBox" runat="server" 
                Text='<%# Bind("PetColor") %>' />
            <br />
            LastRabiesShot:
            <asp:TextBox ID="LastRabiesShotTextBox" runat="server" 
                Text='<%# Bind("LastRabiesShot") %>' />
            <br />
            screeningID:
            <asp:TextBox ID="screeningIDTextBox" runat="server" 
                Text='<%# Bind("screeningID") %>' />
            <br />
            APlusRating:
            <asp:CheckBox ID="APlusRatingCheckBox" runat="server" 
                Checked='<%# Bind("APlusRating") %>' />
            <br />
            LeaseNotes:
            <asp:TextBox ID="LeaseNotesTextBox" runat="server" 
                Text='<%# Bind("LeaseNotes") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle Width="900px" />
        <InsertItemTemplate>
            propertyID:
            <asp:TextBox ID="propertyIDTextBox" runat="server" 
                Text='<%# Bind("propertyID") %>' />
            <br />
            applicantID:
            <asp:TextBox ID="applicantIDTextBox" runat="server" 
                Text='<%# Bind("applicantID") %>' />
            <br />
            applicantID2:
            <asp:TextBox ID="applicantID2TextBox" runat="server" 
                Text='<%# Bind("applicantID2") %>' />
            <br />
            dateCompleted:
            <asp:TextBox ID="dateCompletedTextBox" runat="server" 
                Text='<%# Bind("dateCompleted") %>' />
            <br />
            wordedDateCompleted:
            <asp:TextBox ID="wordedDateCompletedTextBox" runat="server" 
                Text='<%# Bind("wordedDateCompleted") %>' />
            <br />
            RNALLC:
            <asp:TextBox ID="RNALLCTextBox" runat="server" Text='<%# Bind("RNALLC") %>' />
            <br />
            applicantID3:
            <asp:TextBox ID="applicantID3TextBox" runat="server" 
                Text='<%# Bind("applicantID3") %>' />
            <br />
            applicantID4:
            <asp:TextBox ID="applicantID4TextBox" runat="server" 
                Text='<%# Bind("applicantID4") %>' />
            <br />
            unitNo:
            <asp:TextBox ID="unitNoTextBox" runat="server" Text='<%# Bind("unitNo") %>' />
            <br />
            propertyName:
            <asp:TextBox ID="propertyNameTextBox" runat="server" 
                Text='<%# Bind("propertyName") %>' />
            <br />
            leaseBeginDate:
            <asp:TextBox ID="leaseBeginDateTextBox" runat="server" 
                Text='<%# Bind("leaseBeginDate") %>' />
            <br />
            wordedBeginDate:
            <asp:TextBox ID="wordedBeginDateTextBox" runat="server" 
                Text='<%# Bind("wordedBeginDate") %>' />
            <br />
            leaseEndDate:
            <asp:TextBox ID="leaseEndDateTextBox" runat="server" 
                Text='<%# Bind("leaseEndDate") %>' />
            <br />
            wordedEndDate:
            <asp:TextBox ID="wordedEndDateTextBox" runat="server" 
                Text='<%# Bind("wordedEndDate") %>' />
            <br />
            MarketBaseRentA:
            <asp:TextBox ID="MarketBaseRentATextBox" runat="server" 
                Text='<%# Bind("MarketBaseRentA") %>' />
            <br />
            WasherDryerB:
            <asp:TextBox ID="WasherDryerBTextBox" runat="server" 
                Text='<%# Bind("WasherDryerB") %>' />
            <br />
            ExtraOccC:
            <asp:TextBox ID="ExtraOccCTextBox" runat="server" 
                Text='<%# Bind("ExtraOccC") %>' />
            <br />
            UtilitiesBaseD:
            <asp:TextBox ID="UtilitiesBaseDTextBox" runat="server" 
                Text='<%# Bind("UtilitiesBaseD") %>' />
            <br />
            gasUtilities:
            <asp:CheckBox ID="gasUtilitiesCheckBox" runat="server" 
                Checked='<%# Bind("gasUtilities") %>' />
            <br />
            waterUtilities:
            <asp:CheckBox ID="waterUtilitiesCheckBox" runat="server" 
                Checked='<%# Bind("waterUtilities") %>' />
            <br />
            electricUtilities:
            <asp:CheckBox ID="electricUtilitiesCheckBox" runat="server" 
                Checked='<%# Bind("electricUtilities") %>' />
            <br />
            UtilitiesExtra:
            <asp:TextBox ID="UtilitiesExtraTextBox" runat="server" 
                Text='<%# Bind("UtilitiesExtra") %>' />
            <br />
            SubRentE:
            <asp:TextBox ID="SubRentETextBox" runat="server" 
                Text='<%# Bind("SubRentE") %>' />
            <br />
            NHOPremiumF:
            <asp:TextBox ID="NHOPremiumFTextBox" runat="server" 
                Text='<%# Bind("NHOPremiumF") %>' />
            <br />
            NHOPremiumF2:
            <asp:TextBox ID="NHOPremiumF2TextBox" runat="server" 
                Text='<%# Bind("NHOPremiumF2") %>' />
            <br />
            MonthLeasePremiumG:
            <asp:TextBox ID="MonthLeasePremiumGTextBox" runat="server" 
                Text='<%# Bind("MonthLeasePremiumG") %>' />
            <br />
            MonthLeasePremiumG2:
            <asp:TextBox ID="MonthLeasePremiumG2TextBox" runat="server" 
                Text='<%# Bind("MonthLeasePremiumG2") %>' />
            <br />
            TotalMonthlyRentH:
            <asp:TextBox ID="TotalMonthlyRentHTextBox" runat="server" 
                Text='<%# Bind("TotalMonthlyRentH") %>' />
            <br />
            SeniorDiscI:
            <asp:TextBox ID="SeniorDiscITextBox" runat="server" 
                Text='<%# Bind("SeniorDiscI") %>' />
            <br />
            MultiYearI:
            <asp:TextBox ID="MultiYearITextBox" runat="server" 
                Text='<%# Bind("MultiYearI") %>' />
            <br />
            totalLeasePrepayI:
            <asp:TextBox ID="totalLeasePrepayITextBox" runat="server" 
                Text='<%# Bind("totalLeasePrepayI") %>' />
            <br />
            OtherDiscountI:
            <asp:TextBox ID="OtherDiscountITextBox" runat="server" 
                Text='<%# Bind("OtherDiscountI") %>' />
            <br />
            standardSecurityDepH:
            <asp:TextBox ID="standardSecurityDepHTextBox" runat="server" 
                Text='<%# Bind("standardSecurityDepH") %>' />
            <br />
            AltSecDepK:
            <asp:TextBox ID="AltSecDepKTextBox" runat="server" 
                Text='<%# Bind("AltSecDepK") %>' />
            <br />
            ShortLeaseSecDep:
            <asp:TextBox ID="ShortLeaseSecDepTextBox" runat="server" 
                Text='<%# Bind("ShortLeaseSecDep") %>' />
            <br />
            firstNHOFeeM:
            <asp:TextBox ID="firstNHOFeeMTextBox" runat="server" 
                Text='<%# Bind("firstNHOFeeM") %>' />
            <br />
            AddNHOFeeN:
            <asp:TextBox ID="AddNHOFeeNTextBox" runat="server" 
                Text='<%# Bind("AddNHOFeeN") %>' />
            <br />
            firstFullMonthRentO:
            <asp:TextBox ID="firstFullMonthRentOTextBox" runat="server" 
                Text='<%# Bind("firstFullMonthRentO") %>' />
            <br />
            PartialMonthP:
            <asp:TextBox ID="PartialMonthPTextBox" runat="server" 
                Text='<%# Bind("PartialMonthP") %>' />
            <br />
            RenewalRebateQ:
            <asp:TextBox ID="RenewalRebateQTextBox" runat="server" 
                Text='<%# Bind("RenewalRebateQ") %>' />
            <br />
            SpecialDepositR:
            <asp:TextBox ID="SpecialDepositRTextBox" runat="server" 
                Text='<%# Bind("SpecialDepositR") %>' />
            <br />
            RefundableScreenDepS:
            <asp:TextBox ID="RefundableScreenDepSTextBox" runat="server" 
                Text='<%# Bind("RefundableScreenDepS") %>' />
            <br />
            AdvertisedSpecialT:
            <asp:TextBox ID="AdvertisedSpecialTTextBox" runat="server" 
                Text='<%# Bind("AdvertisedSpecialT") %>' />
            <br />
            LessDepCoveredU:
            <asp:TextBox ID="LessDepCoveredUTextBox" runat="server" 
                Text='<%# Bind("LessDepCoveredU") %>' />
            <br />
            TotalCashDueV:
            <asp:TextBox ID="TotalCashDueVTextBox" runat="server" 
                Text='<%# Bind("TotalCashDueV") %>' />
            <br />
            FutureSpecialW:
            <asp:TextBox ID="FutureSpecialWTextBox" runat="server" 
                Text='<%# Bind("FutureSpecialW") %>' />
            <br />
            vehicleID1:
            <asp:TextBox ID="vehicleID1TextBox" runat="server" 
                Text='<%# Bind("vehicleID1") %>' />
            <br />
            vehicleID2:
            <asp:TextBox ID="vehicleID2TextBox" runat="server" 
                Text='<%# Bind("vehicleID2") %>' />
            <br />
            vehicleID3:
            <asp:TextBox ID="vehicleID3TextBox" runat="server" 
                Text='<%# Bind("vehicleID3") %>' />
            <br />
            vehicleID4:
            <asp:TextBox ID="vehicleID4TextBox" runat="server" 
                Text='<%# Bind("vehicleID4") %>' />
            <br />
            cosigner:
            <asp:TextBox ID="cosignerTextBox" runat="server" 
                Text='<%# Bind("cosigner") %>' />
            <br />
            LeaseAgentID:
            <asp:TextBox ID="LeaseAgentIDTextBox" runat="server" 
                Text='<%# Bind("LeaseAgentID") %>' />
            <br />
            AgentTitle:
            <asp:TextBox ID="AgentTitleTextBox" runat="server" 
                Text='<%# Bind("AgentTitle") %>' />
            <br />
            approvedBy:
            <asp:TextBox ID="approvedByTextBox" runat="server" 
                Text='<%# Bind("approvedBy") %>' />
            <br />
            approved:
            <asp:CheckBox ID="approvedCheckBox" runat="server" 
                Checked='<%# Bind("approved") %>' />
            <br />
            rejected:
            <asp:CheckBox ID="rejectedCheckBox" runat="server" 
                Checked='<%# Bind("rejected") %>' />
            <br />
            decisionDate:
            <asp:TextBox ID="decisionDateTextBox" runat="server" 
                Text='<%# Bind("decisionDate") %>' />
            <br />
            signedDate:
            <asp:TextBox ID="signedDateTextBox" runat="server" 
                Text='<%# Bind("signedDate") %>' />
            <br />
            UserInput:
            <asp:TextBox ID="UserInputTextBox" runat="server" 
                Text='<%# Bind("UserInput") %>' />
            <br />
            inputDate:
            <asp:TextBox ID="inputDateTextBox" runat="server" 
                Text='<%# Bind("inputDate") %>' />
            <br />
            PetAge2:
            <asp:TextBox ID="PetAge2TextBox" runat="server" Text='<%# Bind("PetAge2") %>' />
            <br />
            PetWeight2:
            <asp:TextBox ID="PetWeight2TextBox" runat="server" 
                Text='<%# Bind("PetWeight2") %>' />
            <br />
            PetType2:
            <asp:TextBox ID="PetType2TextBox" runat="server" 
                Text='<%# Bind("PetType2") %>' />
            <br />
            PetColor2:
            <asp:TextBox ID="PetColor2TextBox" runat="server" 
                Text='<%# Bind("PetColor2") %>' />
            <br />
            LastRabiesShot2:
            <asp:TextBox ID="LastRabiesShot2TextBox" runat="server" 
                Text='<%# Bind("LastRabiesShot2") %>' />
            <br />
            PetAge:
            <asp:TextBox ID="PetAgeTextBox" runat="server" Text='<%# Bind("PetAge") %>' />
            <br />
            PetWeight:
            <asp:TextBox ID="PetWeightTextBox" runat="server" 
                Text='<%# Bind("PetWeight") %>' />
            <br />
            PetType:
            <asp:TextBox ID="PetTypeTextBox" runat="server" Text='<%# Bind("PetType") %>' />
            <br />
            PetColor:
            <asp:TextBox ID="PetColorTextBox" runat="server" 
                Text='<%# Bind("PetColor") %>' />
            <br />
            LastRabiesShot:
            <asp:TextBox ID="LastRabiesShotTextBox" runat="server" 
                Text='<%# Bind("LastRabiesShot") %>' />
            <br />
            screeningID:
            <asp:TextBox ID="screeningIDTextBox" runat="server" 
                Text='<%# Bind("screeningID") %>' />
            <br />
            APlusRating:
            <asp:CheckBox ID="APlusRatingCheckBox" runat="server" 
                Checked='<%# Bind("APlusRating") %>' />
            <br />
            LeaseNotes:
            <asp:TextBox ID="LeaseNotesTextBox" runat="server" 
                Text='<%# Bind("LeaseNotes") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            leaseID:
            <asp:Label ID="leaseIDLabel" runat="server" Text='<%# Eval("leaseID") %>' />
            <br />
            propertyID:
            <asp:Label ID="propertyIDLabel" runat="server" 
                Text='<%# Bind("propertyID") %>' />
            <br />
            applicantID:
            <asp:Label ID="applicantIDLabel" runat="server" 
                Text='<%# Bind("applicantID") %>' />
            <br />
            applicantID2:
            <asp:Label ID="applicantID2Label" runat="server" 
                Text='<%# Bind("applicantID2") %>' />
            <br />
            dateCompleted:
            <asp:Label ID="dateCompletedLabel" runat="server" 
                Text='<%# Bind("dateCompleted") %>' />
            <br />
            wordedDateCompleted:
            <asp:Label ID="wordedDateCompletedLabel" runat="server" 
                Text='<%# Bind("wordedDateCompleted") %>' />
            <br />
            RNALLC:
            <asp:Label ID="RNALLCLabel" runat="server" Text='<%# Bind("RNALLC") %>' />
            <br />
            applicantID3:
            <asp:Label ID="applicantID3Label" runat="server" 
                Text='<%# Bind("applicantID3") %>' />
            <br />
            applicantID4:
            <asp:Label ID="applicantID4Label" runat="server" 
                Text='<%# Bind("applicantID4") %>' />
            <br />
            unitNo:
            <asp:Label ID="unitNoLabel" runat="server" Text='<%# Bind("unitNo") %>' />
            <br />
            propertyName:
            <asp:Label ID="propertyNameLabel" runat="server" 
                Text='<%# Bind("propertyName") %>' />
            <br />
            leaseBeginDate:
            <asp:Label ID="leaseBeginDateLabel" runat="server" 
                Text='<%# Bind("leaseBeginDate") %>' />
            <br />
            wordedBeginDate:
            <asp:Label ID="wordedBeginDateLabel" runat="server" 
                Text='<%# Bind("wordedBeginDate") %>' />
            <br />
            leaseEndDate:
            <asp:Label ID="leaseEndDateLabel" runat="server" 
                Text='<%# Bind("leaseEndDate") %>' />
            <br />
            wordedEndDate:
            <asp:Label ID="wordedEndDateLabel" runat="server" 
                Text='<%# Bind("wordedEndDate") %>' />
            <br />
            MarketBaseRentA:
            <asp:Label ID="MarketBaseRentALabel" runat="server" 
                Text='<%# Bind("MarketBaseRentA") %>' />
            <br />
            WasherDryerB:
            <asp:Label ID="WasherDryerBLabel" runat="server" 
                Text='<%# Bind("WasherDryerB") %>' />
            <br />
            ExtraOccC:
            <asp:Label ID="ExtraOccCLabel" runat="server" Text='<%# Bind("ExtraOccC") %>' />
            <br />
            UtilitiesBaseD:
            <asp:Label ID="UtilitiesBaseDLabel" runat="server" 
                Text='<%# Bind("UtilitiesBaseD") %>' />
            <br />
            gasUtilities:
            <asp:CheckBox ID="gasUtilitiesCheckBox" runat="server" 
                Checked='<%# Bind("gasUtilities") %>' Enabled="false" />
            <br />
            waterUtilities:
            <asp:CheckBox ID="waterUtilitiesCheckBox" runat="server" 
                Checked='<%# Bind("waterUtilities") %>' Enabled="false" />
            <br />
            electricUtilities:
            <asp:CheckBox ID="electricUtilitiesCheckBox" runat="server" 
                Checked='<%# Bind("electricUtilities") %>' Enabled="false" />
            <br />
            UtilitiesExtra:
            <asp:Label ID="UtilitiesExtraLabel" runat="server" 
                Text='<%# Bind("UtilitiesExtra") %>' />
            <br />
            SubRentE:
            <asp:Label ID="SubRentELabel" runat="server" Text='<%# Bind("SubRentE") %>' />
            <br />
            NHOPremiumF:
            <asp:Label ID="NHOPremiumFLabel" runat="server" 
                Text='<%# Bind("NHOPremiumF") %>' />
            <br />
            NHOPremiumF2:
            <asp:Label ID="NHOPremiumF2Label" runat="server" 
                Text='<%# Bind("NHOPremiumF2") %>' />
            <br />
            MonthLeasePremiumG:
            <asp:Label ID="MonthLeasePremiumGLabel" runat="server" 
                Text='<%# Bind("MonthLeasePremiumG") %>' />
            <br />
            MonthLeasePremiumG2:
            <asp:Label ID="MonthLeasePremiumG2Label" runat="server" 
                Text='<%# Bind("MonthLeasePremiumG2") %>' />
            <br />
            TotalMonthlyRentH:
            <asp:Label ID="TotalMonthlyRentHLabel" runat="server" 
                Text='<%# Bind("TotalMonthlyRentH") %>' />
            <br />
            SeniorDiscI:
            <asp:Label ID="SeniorDiscILabel" runat="server" 
                Text='<%# Bind("SeniorDiscI") %>' />
            <br />
            MultiYearI:
            <asp:Label ID="MultiYearILabel" runat="server" 
                Text='<%# Bind("MultiYearI") %>' />
            <br />
            totalLeasePrepayI:
            <asp:Label ID="totalLeasePrepayILabel" runat="server" 
                Text='<%# Bind("totalLeasePrepayI") %>' />
            <br />
            OtherDiscountI:
            <asp:Label ID="OtherDiscountILabel" runat="server" 
                Text='<%# Bind("OtherDiscountI") %>' />
            <br />
            standardSecurityDepH:
            <asp:Label ID="standardSecurityDepHLabel" runat="server" 
                Text='<%# Bind("standardSecurityDepH") %>' />
            <br />
            AltSecDepK:
            <asp:Label ID="AltSecDepKLabel" runat="server" 
                Text='<%# Bind("AltSecDepK") %>' />
            <br />
            ShortLeaseSecDep:
            <asp:Label ID="ShortLeaseSecDepLabel" runat="server" 
                Text='<%# Bind("ShortLeaseSecDep") %>' />
            <br />
            firstNHOFeeM:
            <asp:Label ID="firstNHOFeeMLabel" runat="server" 
                Text='<%# Bind("firstNHOFeeM") %>' />
            <br />
            AddNHOFeeN:
            <asp:Label ID="AddNHOFeeNLabel" runat="server" 
                Text='<%# Bind("AddNHOFeeN") %>' />
            <br />
            firstFullMonthRentO:
            <asp:Label ID="firstFullMonthRentOLabel" runat="server" 
                Text='<%# Bind("firstFullMonthRentO") %>' />
            <br />
            PartialMonthP:
            <asp:Label ID="PartialMonthPLabel" runat="server" 
                Text='<%# Bind("PartialMonthP") %>' />
            <br />
            RenewalRebateQ:
            <asp:Label ID="RenewalRebateQLabel" runat="server" 
                Text='<%# Bind("RenewalRebateQ") %>' />
            <br />
            SpecialDepositR:
            <asp:Label ID="SpecialDepositRLabel" runat="server" 
                Text='<%# Bind("SpecialDepositR") %>' />
            <br />
            RefundableScreenDepS:
            <asp:Label ID="RefundableScreenDepSLabel" runat="server" 
                Text='<%# Bind("RefundableScreenDepS") %>' />
            <br />
            AdvertisedSpecialT:
            <asp:Label ID="AdvertisedSpecialTLabel" runat="server" 
                Text='<%# Bind("AdvertisedSpecialT") %>' />
            <br />
            LessDepCoveredU:
            <asp:Label ID="LessDepCoveredULabel" runat="server" 
                Text='<%# Bind("LessDepCoveredU") %>' />
            <br />
            TotalCashDueV:
            <asp:Label ID="TotalCashDueVLabel" runat="server" 
                Text='<%# Bind("TotalCashDueV") %>' />
            <br />
            FutureSpecialW:
            <asp:Label ID="FutureSpecialWLabel" runat="server" 
                Text='<%# Bind("FutureSpecialW") %>' />
            <br />
            vehicleID1:
            <asp:Label ID="vehicleID1Label" runat="server" 
                Text='<%# Bind("vehicleID1") %>' />
            <br />
            vehicleID2:
            <asp:Label ID="vehicleID2Label" runat="server" 
                Text='<%# Bind("vehicleID2") %>' />
            <br />
            vehicleID3:
            <asp:Label ID="vehicleID3Label" runat="server" 
                Text='<%# Bind("vehicleID3") %>' />
            <br />
            vehicleID4:
            <asp:Label ID="vehicleID4Label" runat="server" 
                Text='<%# Bind("vehicleID4") %>' />
            <br />
            cosigner:
            <asp:Label ID="cosignerLabel" runat="server" Text='<%# Bind("cosigner") %>' />
            <br />

            LeaseAgentID:
            <asp:Label ID="LeaseAgentIDLabel" runat="server" 
                Text='<%# Bind("LeaseAgentID") %>' />
            <br />
            AgentTitle:
            <asp:Label ID="AgentTitleLabel" runat="server" 
                Text='<%# Bind("AgentTitle") %>' />
            <br />
            approvedBy:
            <asp:Label ID="approvedByLabel" runat="server" 
                Text='<%# Bind("approvedBy") %>' />
            <br />
            approved:
            <asp:CheckBox ID="approvedCheckBox" runat="server" 
                Checked='<%# Bind("approved") %>' Enabled="false" />
            <br />
            rejected:
            <asp:CheckBox ID="rejectedCheckBox" runat="server" 
                Checked='<%# Bind("rejected") %>' Enabled="false" />
            <br />
            decisionDate:
            <asp:Label ID="decisionDateLabel" runat="server" 
                Text='<%# Bind("decisionDate") %>' />
            <br />
            signedDate:
            <asp:Label ID="signedDateLabel" runat="server" 
                Text='<%# Bind("signedDate") %>' />
            <br />
            UserInput:
            <asp:Label ID="UserInputLabel" runat="server" Text='<%# Bind("UserInput") %>' />
            <br />
            inputDate:
            <asp:Label ID="inputDateLabel" runat="server" Text='<%# Bind("inputDate") %>' />
            <br />
            PetAge2:
            <asp:Label ID="PetAge2Label" runat="server" Text='<%# Bind("PetAge2") %>' />
            <br />
            PetWeight2:
            <asp:Label ID="PetWeight2Label" runat="server" 
                Text='<%# Bind("PetWeight2") %>' />
            <br />
            PetType2:
            <asp:Label ID="PetType2Label" runat="server" Text='<%# Bind("PetType2") %>' />
            <br />
            PetColor2:
            <asp:Label ID="PetColor2Label" runat="server" Text='<%# Bind("PetColor2") %>' />
            <br />
            LastRabiesShot2:
            <asp:Label ID="LastRabiesShot2Label" runat="server" 
                Text='<%# Bind("LastRabiesShot2") %>' />
            <br />
            PetAge:
            <asp:Label ID="PetAgeLabel" runat="server" Text='<%# Bind("PetAge") %>' />
            <br />
            PetWeight:
            <asp:Label ID="PetWeightLabel" runat="server" Text='<%# Bind("PetWeight") %>' />
            <br />
            PetType:
            <asp:Label ID="PetTypeLabel" runat="server" Text='<%# Bind("PetType") %>' />
            <br />
            PetColor:
            <asp:Label ID="PetColorLabel" runat="server" Text='<%# Bind("PetColor") %>' />
            <br />
            LastRabiesShot:
            <asp:Label ID="LastRabiesShotLabel" runat="server" 
                Text='<%# Bind("LastRabiesShot") %>' />
            <br />
            screeningID:
            <asp:Label ID="screeningIDLabel" runat="server" 
                Text='<%# Bind("screeningID") %>' />
            <br />
            APlusRating:
            <asp:CheckBox ID="APlusRatingCheckBox" runat="server" 
                Checked='<%# Bind("APlusRating") %>' Enabled="false" />
            <br />
            LeaseNotes:
            <asp:Label ID="LeaseNotesLabel" runat="server" 
                Text='<%# Bind("LeaseNotes") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SQLDSLease" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
        
        SelectCommand="SELECT * FROM [LeaseForm] WHERE ([screeningID] = @screeningID)" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [LeaseForm] WHERE [leaseID] = @original_leaseID AND (([propertyID] = @original_propertyID) OR ([propertyID] IS NULL AND @original_propertyID IS NULL)) AND (([applicantID] = @original_applicantID) OR ([applicantID] IS NULL AND @original_applicantID IS NULL)) AND (([applicantID2] = @original_applicantID2) OR ([applicantID2] IS NULL AND @original_applicantID2 IS NULL)) AND (([dateCompleted] = @original_dateCompleted) OR ([dateCompleted] IS NULL AND @original_dateCompleted IS NULL)) AND (([wordedDateCompleted] = @original_wordedDateCompleted) OR ([wordedDateCompleted] IS NULL AND @original_wordedDateCompleted IS NULL)) AND (([RNALLC] = @original_RNALLC) OR ([RNALLC] IS NULL AND @original_RNALLC IS NULL)) AND (([applicantID3] = @original_applicantID3) OR ([applicantID3] IS NULL AND @original_applicantID3 IS NULL)) AND (([applicantID4] = @original_applicantID4) OR ([applicantID4] IS NULL AND @original_applicantID4 IS NULL)) AND (([unitNo] = @original_unitNo) OR ([unitNo] IS NULL AND @original_unitNo IS NULL)) AND (([propertyName] = @original_propertyName) OR ([propertyName] IS NULL AND @original_propertyName IS NULL)) AND (([leaseBeginDate] = @original_leaseBeginDate) OR ([leaseBeginDate] IS NULL AND @original_leaseBeginDate IS NULL)) AND (([wordedBeginDate] = @original_wordedBeginDate) OR ([wordedBeginDate] IS NULL AND @original_wordedBeginDate IS NULL)) AND (([leaseEndDate] = @original_leaseEndDate) OR ([leaseEndDate] IS NULL AND @original_leaseEndDate IS NULL)) AND (([wordedEndDate] = @original_wordedEndDate) OR ([wordedEndDate] IS NULL AND @original_wordedEndDate IS NULL)) AND (([MarketBaseRentA] = @original_MarketBaseRentA) OR ([MarketBaseRentA] IS NULL AND @original_MarketBaseRentA IS NULL)) AND (([WasherDryerB] = @original_WasherDryerB) OR ([WasherDryerB] IS NULL AND @original_WasherDryerB IS NULL)) AND (([ExtraOccC] = @original_ExtraOccC) OR ([ExtraOccC] IS NULL AND @original_ExtraOccC IS NULL)) AND (([UtilitiesBaseD] = @original_UtilitiesBaseD) OR ([UtilitiesBaseD] IS NULL AND @original_UtilitiesBaseD IS NULL)) AND (([gasUtilities] = @original_gasUtilities) OR ([gasUtilities] IS NULL AND @original_gasUtilities IS NULL)) AND (([waterUtilities] = @original_waterUtilities) OR ([waterUtilities] IS NULL AND @original_waterUtilities IS NULL)) AND (([electricUtilities] = @original_electricUtilities) OR ([electricUtilities] IS NULL AND @original_electricUtilities IS NULL)) AND (([UtilitiesExtra] = @original_UtilitiesExtra) OR ([UtilitiesExtra] IS NULL AND @original_UtilitiesExtra IS NULL)) AND (([SubRentE] = @original_SubRentE) OR ([SubRentE] IS NULL AND @original_SubRentE IS NULL)) AND (([NHOPremiumF] = @original_NHOPremiumF) OR ([NHOPremiumF] IS NULL AND @original_NHOPremiumF IS NULL)) AND (([NHOPremiumF2] = @original_NHOPremiumF2) OR ([NHOPremiumF2] IS NULL AND @original_NHOPremiumF2 IS NULL)) AND (([MonthLeasePremiumG] = @original_MonthLeasePremiumG) OR ([MonthLeasePremiumG] IS NULL AND @original_MonthLeasePremiumG IS NULL)) AND (([MonthLeasePremiumG2] = @original_MonthLeasePremiumG2) OR ([MonthLeasePremiumG2] IS NULL AND @original_MonthLeasePremiumG2 IS NULL)) AND (([TotalMonthlyRentH] = @original_TotalMonthlyRentH) OR ([TotalMonthlyRentH] IS NULL AND @original_TotalMonthlyRentH IS NULL)) AND (([SeniorDiscI] = @original_SeniorDiscI) OR ([SeniorDiscI] IS NULL AND @original_SeniorDiscI IS NULL)) AND (([MultiYearI] = @original_MultiYearI) OR ([MultiYearI] IS NULL AND @original_MultiYearI IS NULL)) AND (([totalLeasePrepayI] = @original_totalLeasePrepayI) OR ([totalLeasePrepayI] IS NULL AND @original_totalLeasePrepayI IS NULL)) AND (([OtherDiscountI] = @original_OtherDiscountI) OR ([OtherDiscountI] IS NULL AND @original_OtherDiscountI IS NULL)) AND (([standardSecurityDepH] = @original_standardSecurityDepH) OR ([standardSecurityDepH] IS NULL AND @original_standardSecurityDepH IS NULL)) AND (([AltSecDepK] = @original_AltSecDepK) OR ([AltSecDepK] IS NULL AND @original_AltSecDepK IS NULL)) AND (([ShortLeaseSecDep] = @original_ShortLeaseSecDep) OR ([ShortLeaseSecDep] IS NULL AND @original_ShortLeaseSecDep IS NULL)) AND (([firstNHOFeeM] = @original_firstNHOFeeM) OR ([firstNHOFeeM] IS NULL AND @original_firstNHOFeeM IS NULL)) AND (([AddNHOFeeN] = @original_AddNHOFeeN) OR ([AddNHOFeeN] IS NULL AND @original_AddNHOFeeN IS NULL)) AND (([firstFullMonthRentO] = @original_firstFullMonthRentO) OR ([firstFullMonthRentO] IS NULL AND @original_firstFullMonthRentO IS NULL)) AND (([PartialMonthP] = @original_PartialMonthP) OR ([PartialMonthP] IS NULL AND @original_PartialMonthP IS NULL)) AND (([RenewalRebateQ] = @original_RenewalRebateQ) OR ([RenewalRebateQ] IS NULL AND @original_RenewalRebateQ IS NULL)) AND (([SpecialDepositR] = @original_SpecialDepositR) OR ([SpecialDepositR] IS NULL AND @original_SpecialDepositR IS NULL)) AND (([RefundableScreenDepS] = @original_RefundableScreenDepS) OR ([RefundableScreenDepS] IS NULL AND @original_RefundableScreenDepS IS NULL)) AND (([AdvertisedSpecialT] = @original_AdvertisedSpecialT) OR ([AdvertisedSpecialT] IS NULL AND @original_AdvertisedSpecialT IS NULL)) AND (([LessDepCoveredU] = @original_LessDepCoveredU) OR ([LessDepCoveredU] IS NULL AND @original_LessDepCoveredU IS NULL)) AND (([TotalCashDueV] = @original_TotalCashDueV) OR ([TotalCashDueV] IS NULL AND @original_TotalCashDueV IS NULL)) AND (([FutureSpecialW] = @original_FutureSpecialW) OR ([FutureSpecialW] IS NULL AND @original_FutureSpecialW IS NULL)) AND (([vehicleID1] = @original_vehicleID1) OR ([vehicleID1] IS NULL AND @original_vehicleID1 IS NULL)) AND (([vehicleID2] = @original_vehicleID2) OR ([vehicleID2] IS NULL AND @original_vehicleID2 IS NULL)) AND (([vehicleID3] = @original_vehicleID3) OR ([vehicleID3] IS NULL AND @original_vehicleID3 IS NULL)) AND (([vehicleID4] = @original_vehicleID4) OR ([vehicleID4] IS NULL AND @original_vehicleID4 IS NULL)) AND (([cosigner] = @original_cosigner) OR ([cosigner] IS NULL AND @original_cosigner IS NULL)) AND (([LeaseAgentID] = @original_LeaseAgentID) OR ([LeaseAgentID] IS NULL AND @original_LeaseAgentID IS NULL)) AND (([AgentTitle] = @original_AgentTitle) OR ([AgentTitle] IS NULL AND @original_AgentTitle IS NULL)) AND (([approvedBy] = @original_approvedBy) OR ([approvedBy] IS NULL AND @original_approvedBy IS NULL)) AND (([approved] = @original_approved) OR ([approved] IS NULL AND @original_approved IS NULL)) AND (([rejected] = @original_rejected) OR ([rejected] IS NULL AND @original_rejected IS NULL)) AND (([decisionDate] = @original_decisionDate) OR ([decisionDate] IS NULL AND @original_decisionDate IS NULL)) AND (([signedDate] = @original_signedDate) OR ([signedDate] IS NULL AND @original_signedDate IS NULL)) AND (([UserInput] = @original_UserInput) OR ([UserInput] IS NULL AND @original_UserInput IS NULL)) AND (([inputDate] = @original_inputDate) OR ([inputDate] IS NULL AND @original_inputDate IS NULL)) AND (([PetAge2] = @original_PetAge2) OR ([PetAge2] IS NULL AND @original_PetAge2 IS NULL)) AND (([PetWeight2] = @original_PetWeight2) OR ([PetWeight2] IS NULL AND @original_PetWeight2 IS NULL)) AND (([PetType2] = @original_PetType2) OR ([PetType2] IS NULL AND @original_PetType2 IS NULL)) AND (([PetColor2] = @original_PetColor2) OR ([PetColor2] IS NULL AND @original_PetColor2 IS NULL)) AND (([LastRabiesShot2] = @original_LastRabiesShot2) OR ([LastRabiesShot2] IS NULL AND @original_LastRabiesShot2 IS NULL)) AND (([PetAge] = @original_PetAge) OR ([PetAge] IS NULL AND @original_PetAge IS NULL)) AND (([PetWeight] = @original_PetWeight) OR ([PetWeight] IS NULL AND @original_PetWeight IS NULL)) AND (([PetType] = @original_PetType) OR ([PetType] IS NULL AND @original_PetType IS NULL)) AND (([PetColor] = @original_PetColor) OR ([PetColor] IS NULL AND @original_PetColor IS NULL)) AND (([LastRabiesShot] = @original_LastRabiesShot) OR ([LastRabiesShot] IS NULL AND @original_LastRabiesShot IS NULL)) AND (([screeningID] = @original_screeningID) OR ([screeningID] IS NULL AND @original_screeningID IS NULL)) AND (([APlusRating] = @original_APlusRating) OR ([APlusRating] IS NULL AND @original_APlusRating IS NULL)) AND (([LeaseNotes] = @original_LeaseNotes) OR ([LeaseNotes] IS NULL AND @original_LeaseNotes IS NULL))" 
        InsertCommand="INSERT INTO [LeaseForm] ([propertyID], [applicantID], [applicantID2], [dateCompleted], [wordedDateCompleted], [RNALLC], [applicantID3], [applicantID4], [unitNo], [propertyName], [leaseBeginDate], [wordedBeginDate], [leaseEndDate], [wordedEndDate], [MarketBaseRentA], [WasherDryerB], [ExtraOccC], [UtilitiesBaseD], [gasUtilities], [waterUtilities], [electricUtilities], [UtilitiesExtra], [SubRentE], [NHOPremiumF], [NHOPremiumF2], [MonthLeasePremiumG], [MonthLeasePremiumG2], [TotalMonthlyRentH], [SeniorDiscI], [MultiYearI], [totalLeasePrepayI], [OtherDiscountI], [standardSecurityDepH], [AltSecDepK], [ShortLeaseSecDep], [firstNHOFeeM], [AddNHOFeeN], [firstFullMonthRentO], [PartialMonthP], [RenewalRebateQ], [SpecialDepositR], [RefundableScreenDepS], [AdvertisedSpecialT], [LessDepCoveredU], [TotalCashDueV], [FutureSpecialW], [vehicleID1], [vehicleID2], [vehicleID3], [vehicleID4], [cosigner], [LeaseAgentID], [AgentTitle], [approvedBy], [approved], [rejected], [decisionDate], [signedDate], [UserInput], [inputDate], [PetAge2], [PetWeight2], [PetType2], [PetColor2], [LastRabiesShot2], [PetAge], [PetWeight], [PetType], [PetColor], [LastRabiesShot], [screeningID], [APlusRating], [LeaseNotes]) VALUES (@propertyID, @applicantID, @applicantID2, @dateCompleted, @wordedDateCompleted, @RNALLC, @applicantID3, @applicantID4, @unitNo, @propertyName, @leaseBeginDate, @wordedBeginDate, @leaseEndDate, @wordedEndDate, @MarketBaseRentA, @WasherDryerB, @ExtraOccC, @UtilitiesBaseD, @gasUtilities, @waterUtilities, @electricUtilities, @UtilitiesExtra, @SubRentE, @NHOPremiumF, @NHOPremiumF2, @MonthLeasePremiumG, @MonthLeasePremiumG2, @TotalMonthlyRentH, @SeniorDiscI, @MultiYearI, @totalLeasePrepayI, @OtherDiscountI, @standardSecurityDepH, @AltSecDepK, @ShortLeaseSecDep, @firstNHOFeeM, @AddNHOFeeN, @firstFullMonthRentO, @PartialMonthP, @RenewalRebateQ, @SpecialDepositR, @RefundableScreenDepS, @AdvertisedSpecialT, @LessDepCoveredU, @TotalCashDueV, @FutureSpecialW, @vehicleID1, @vehicleID2, @vehicleID3, @vehicleID4, @cosigner, @LeaseAgentID, @AgentTitle, @approvedBy, @approved, @rejected, @decisionDate, @signedDate, @UserInput, @inputDate, @PetAge2, @PetWeight2, @PetType2, @PetColor2, @LastRabiesShot2, @PetAge, @PetWeight, @PetType, @PetColor, @LastRabiesShot, @screeningID, @APlusRating, @LeaseNotes)" 
        OldValuesParameterFormatString="original_{0}" 
        
        UpdateCommand="UPDATE [LeaseForm] SET [propertyID] = @propertyID, [applicantID] = @applicantID, [applicantID2] = @applicantID2, [dateCompleted] = @dateCompleted, [wordedDateCompleted] = @wordedDateCompleted, [RNALLC] = @RNALLC, [applicantID3] = @applicantID3, [applicantID4] = @applicantID4, [unitNo] = @unitNo, [propertyName] = @propertyName, [leaseBeginDate] = @leaseBeginDate, [wordedBeginDate] = @wordedBeginDate, [leaseEndDate] = @leaseEndDate, [wordedEndDate] = @wordedEndDate, [MarketBaseRentA] = @MarketBaseRentA, [WasherDryerB] = @WasherDryerB, [ExtraOccC] = @ExtraOccC, [UtilitiesBaseD] = @UtilitiesBaseD, [gasUtilities] = @gasUtilities, [waterUtilities] = @waterUtilities, [electricUtilities] = @electricUtilities, [UtilitiesExtra] = @UtilitiesExtra, [SubRentE] = @SubRentE, [NHOPremiumF] = @NHOPremiumF, [NHOPremiumF2] = @NHOPremiumF2, [MonthLeasePremiumG] = @MonthLeasePremiumG, [MonthLeasePremiumG2] = @MonthLeasePremiumG2, [TotalMonthlyRentH] = @TotalMonthlyRentH, [SeniorDiscI] = @SeniorDiscI, [MultiYearI] = @MultiYearI, [totalLeasePrepayI] = @totalLeasePrepayI, [OtherDiscountI] = @OtherDiscountI, [standardSecurityDepH] = @standardSecurityDepH, [AltSecDepK] = @AltSecDepK, [ShortLeaseSecDep] = @ShortLeaseSecDep, [firstNHOFeeM] = @firstNHOFeeM, [AddNHOFeeN] = @AddNHOFeeN, [firstFullMonthRentO] = @firstFullMonthRentO, [PartialMonthP] = @PartialMonthP, [RenewalRebateQ] = @RenewalRebateQ, [SpecialDepositR] = @SpecialDepositR, [RefundableScreenDepS] = @RefundableScreenDepS, [AdvertisedSpecialT] = @AdvertisedSpecialT, [LessDepCoveredU] = @LessDepCoveredU, [TotalCashDueV] = @TotalCashDueV, [FutureSpecialW] = @FutureSpecialW, [vehicleID1] = @vehicleID1, [vehicleID2] = @vehicleID2, [vehicleID3] = @vehicleID3, [vehicleID4] = @vehicleID4, [cosigner] = @cosigner, [LeaseAgentID] = @LeaseAgentID, [AgentTitle] = @AgentTitle, [approvedBy] = @approvedBy, [approved] = @approved, [rejected] = @rejected, [decisionDate] = @decisionDate, [signedDate] = @signedDate, [UserInput] = @UserInput, [inputDate] = @inputDate, [PetAge2] = @PetAge2, [PetWeight2] = @PetWeight2, [PetType2] = @PetType2, [PetColor2] = @PetColor2, [LastRabiesShot2] = @LastRabiesShot2, [PetAge] = @PetAge, [PetWeight] = @PetWeight, [PetType] = @PetType, [PetColor] = @PetColor, [LastRabiesShot] = @LastRabiesShot, [screeningID] = @screeningID, [APlusRating] = @APlusRating, [LeaseNotes] = @LeaseNotes WHERE [leaseID] = @original_leaseID AND (([propertyID] = @original_propertyID) OR ([propertyID] IS NULL AND @original_propertyID IS NULL)) AND (([applicantID] = @original_applicantID) OR ([applicantID] IS NULL AND @original_applicantID IS NULL)) AND (([applicantID2] = @original_applicantID2) OR ([applicantID2] IS NULL AND @original_applicantID2 IS NULL)) AND (([dateCompleted] = @original_dateCompleted) OR ([dateCompleted] IS NULL AND @original_dateCompleted IS NULL)) AND (([wordedDateCompleted] = @original_wordedDateCompleted) OR ([wordedDateCompleted] IS NULL AND @original_wordedDateCompleted IS NULL)) AND (([RNALLC] = @original_RNALLC) OR ([RNALLC] IS NULL AND @original_RNALLC IS NULL)) AND (([applicantID3] = @original_applicantID3) OR ([applicantID3] IS NULL AND @original_applicantID3 IS NULL)) AND (([applicantID4] = @original_applicantID4) OR ([applicantID4] IS NULL AND @original_applicantID4 IS NULL)) AND (([unitNo] = @original_unitNo) OR ([unitNo] IS NULL AND @original_unitNo IS NULL)) AND (([propertyName] = @original_propertyName) OR ([propertyName] IS NULL AND @original_propertyName IS NULL)) AND (([leaseBeginDate] = @original_leaseBeginDate) OR ([leaseBeginDate] IS NULL AND @original_leaseBeginDate IS NULL)) AND (([wordedBeginDate] = @original_wordedBeginDate) OR ([wordedBeginDate] IS NULL AND @original_wordedBeginDate IS NULL)) AND (([leaseEndDate] = @original_leaseEndDate) OR ([leaseEndDate] IS NULL AND @original_leaseEndDate IS NULL)) AND (([wordedEndDate] = @original_wordedEndDate) OR ([wordedEndDate] IS NULL AND @original_wordedEndDate IS NULL)) AND (([MarketBaseRentA] = @original_MarketBaseRentA) OR ([MarketBaseRentA] IS NULL AND @original_MarketBaseRentA IS NULL)) AND (([WasherDryerB] = @original_WasherDryerB) OR ([WasherDryerB] IS NULL AND @original_WasherDryerB IS NULL)) AND (([ExtraOccC] = @original_ExtraOccC) OR ([ExtraOccC] IS NULL AND @original_ExtraOccC IS NULL)) AND (([UtilitiesBaseD] = @original_UtilitiesBaseD) OR ([UtilitiesBaseD] IS NULL AND @original_UtilitiesBaseD IS NULL)) AND (([gasUtilities] = @original_gasUtilities) OR ([gasUtilities] IS NULL AND @original_gasUtilities IS NULL)) AND (([waterUtilities] = @original_waterUtilities) OR ([waterUtilities] IS NULL AND @original_waterUtilities IS NULL)) AND (([electricUtilities] = @original_electricUtilities) OR ([electricUtilities] IS NULL AND @original_electricUtilities IS NULL)) AND (([UtilitiesExtra] = @original_UtilitiesExtra) OR ([UtilitiesExtra] IS NULL AND @original_UtilitiesExtra IS NULL)) AND (([SubRentE] = @original_SubRentE) OR ([SubRentE] IS NULL AND @original_SubRentE IS NULL)) AND (([NHOPremiumF] = @original_NHOPremiumF) OR ([NHOPremiumF] IS NULL AND @original_NHOPremiumF IS NULL)) AND (([NHOPremiumF2] = @original_NHOPremiumF2) OR ([NHOPremiumF2] IS NULL AND @original_NHOPremiumF2 IS NULL)) AND (([MonthLeasePremiumG] = @original_MonthLeasePremiumG) OR ([MonthLeasePremiumG] IS NULL AND @original_MonthLeasePremiumG IS NULL)) AND (([MonthLeasePremiumG2] = @original_MonthLeasePremiumG2) OR ([MonthLeasePremiumG2] IS NULL AND @original_MonthLeasePremiumG2 IS NULL)) AND (([TotalMonthlyRentH] = @original_TotalMonthlyRentH) OR ([TotalMonthlyRentH] IS NULL AND @original_TotalMonthlyRentH IS NULL)) AND (([SeniorDiscI] = @original_SeniorDiscI) OR ([SeniorDiscI] IS NULL AND @original_SeniorDiscI IS NULL)) AND (([MultiYearI] = @original_MultiYearI) OR ([MultiYearI] IS NULL AND @original_MultiYearI IS NULL)) AND (([totalLeasePrepayI] = @original_totalLeasePrepayI) OR ([totalLeasePrepayI] IS NULL AND @original_totalLeasePrepayI IS NULL)) AND (([OtherDiscountI] = @original_OtherDiscountI) OR ([OtherDiscountI] IS NULL AND @original_OtherDiscountI IS NULL)) AND (([standardSecurityDepH] = @original_standardSecurityDepH) OR ([standardSecurityDepH] IS NULL AND @original_standardSecurityDepH IS NULL)) AND (([AltSecDepK] = @original_AltSecDepK) OR ([AltSecDepK] IS NULL AND @original_AltSecDepK IS NULL)) AND (([ShortLeaseSecDep] = @original_ShortLeaseSecDep) OR ([ShortLeaseSecDep] IS NULL AND @original_ShortLeaseSecDep IS NULL)) AND (([firstNHOFeeM] = @original_firstNHOFeeM) OR ([firstNHOFeeM] IS NULL AND @original_firstNHOFeeM IS NULL)) AND (([AddNHOFeeN] = @original_AddNHOFeeN) OR ([AddNHOFeeN] IS NULL AND @original_AddNHOFeeN IS NULL)) AND (([firstFullMonthRentO] = @original_firstFullMonthRentO) OR ([firstFullMonthRentO] IS NULL AND @original_firstFullMonthRentO IS NULL)) AND (([PartialMonthP] = @original_PartialMonthP) OR ([PartialMonthP] IS NULL AND @original_PartialMonthP IS NULL)) AND (([RenewalRebateQ] = @original_RenewalRebateQ) OR ([RenewalRebateQ] IS NULL AND @original_RenewalRebateQ IS NULL)) AND (([SpecialDepositR] = @original_SpecialDepositR) OR ([SpecialDepositR] IS NULL AND @original_SpecialDepositR IS NULL)) AND (([RefundableScreenDepS] = @original_RefundableScreenDepS) OR ([RefundableScreenDepS] IS NULL AND @original_RefundableScreenDepS IS NULL)) AND (([AdvertisedSpecialT] = @original_AdvertisedSpecialT) OR ([AdvertisedSpecialT] IS NULL AND @original_AdvertisedSpecialT IS NULL)) AND (([LessDepCoveredU] = @original_LessDepCoveredU) OR ([LessDepCoveredU] IS NULL AND @original_LessDepCoveredU IS NULL)) AND (([TotalCashDueV] = @original_TotalCashDueV) OR ([TotalCashDueV] IS NULL AND @original_TotalCashDueV IS NULL)) AND (([FutureSpecialW] = @original_FutureSpecialW) OR ([FutureSpecialW] IS NULL AND @original_FutureSpecialW IS NULL)) AND (([vehicleID1] = @original_vehicleID1) OR ([vehicleID1] IS NULL AND @original_vehicleID1 IS NULL)) AND (([vehicleID2] = @original_vehicleID2) OR ([vehicleID2] IS NULL AND @original_vehicleID2 IS NULL)) AND (([vehicleID3] = @original_vehicleID3) OR ([vehicleID3] IS NULL AND @original_vehicleID3 IS NULL)) AND (([vehicleID4] = @original_vehicleID4) OR ([vehicleID4] IS NULL AND @original_vehicleID4 IS NULL)) AND (([cosigner] = @original_cosigner) OR ([cosigner] IS NULL AND @original_cosigner IS NULL)) AND (([LeaseAgentID] = @original_LeaseAgentID) OR ([LeaseAgentID] IS NULL AND @original_LeaseAgentID IS NULL)) AND (([AgentTitle] = @original_AgentTitle) OR ([AgentTitle] IS NULL AND @original_AgentTitle IS NULL)) AND (([approvedBy] = @original_approvedBy) OR ([approvedBy] IS NULL AND @original_approvedBy IS NULL)) AND (([approved] = @original_approved) OR ([approved] IS NULL AND @original_approved IS NULL)) AND (([rejected] = @original_rejected) OR ([rejected] IS NULL AND @original_rejected IS NULL)) AND (([decisionDate] = @original_decisionDate) OR ([decisionDate] IS NULL AND @original_decisionDate IS NULL)) AND (([signedDate] = @original_signedDate) OR ([signedDate] IS NULL AND @original_signedDate IS NULL)) AND (([UserInput] = @original_UserInput) OR ([UserInput] IS NULL AND @original_UserInput IS NULL)) AND (([inputDate] = @original_inputDate) OR ([inputDate] IS NULL AND @original_inputDate IS NULL)) AND (([PetAge2] = @original_PetAge2) OR ([PetAge2] IS NULL AND @original_PetAge2 IS NULL)) AND (([PetWeight2] = @original_PetWeight2) OR ([PetWeight2] IS NULL AND @original_PetWeight2 IS NULL)) AND (([PetType2] = @original_PetType2) OR ([PetType2] IS NULL AND @original_PetType2 IS NULL)) AND (([PetColor2] = @original_PetColor2) OR ([PetColor2] IS NULL AND @original_PetColor2 IS NULL)) AND (([LastRabiesShot2] = @original_LastRabiesShot2) OR ([LastRabiesShot2] IS NULL AND @original_LastRabiesShot2 IS NULL)) AND (([PetAge] = @original_PetAge) OR ([PetAge] IS NULL AND @original_PetAge IS NULL)) AND (([PetWeight] = @original_PetWeight) OR ([PetWeight] IS NULL AND @original_PetWeight IS NULL)) AND (([PetType] = @original_PetType) OR ([PetType] IS NULL AND @original_PetType IS NULL)) AND (([PetColor] = @original_PetColor) OR ([PetColor] IS NULL AND @original_PetColor IS NULL)) AND (([LastRabiesShot] = @original_LastRabiesShot) OR ([LastRabiesShot] IS NULL AND @original_LastRabiesShot IS NULL)) AND (([screeningID] = @original_screeningID) OR ([screeningID] IS NULL AND @original_screeningID IS NULL)) AND (([APlusRating] = @original_APlusRating) OR ([APlusRating] IS NULL AND @original_APlusRating IS NULL)) AND (([LeaseNotes] = @original_LeaseNotes) OR ([LeaseNotes] IS NULL AND @original_LeaseNotes IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_leaseID" Type="Int64" />
            <asp:Parameter Name="original_propertyID" Type="Int64" />
            <asp:Parameter Name="original_applicantID" Type="String" />
            <asp:Parameter Name="original_applicantID2" Type="String" />
            <asp:Parameter DbType="Date" Name="original_dateCompleted" />
            <asp:Parameter Name="original_wordedDateCompleted" Type="String" />
            <asp:Parameter Name="original_RNALLC" Type="String" />
            <asp:Parameter Name="original_applicantID3" Type="String" />
            <asp:Parameter Name="original_applicantID4" Type="String" />
            <asp:Parameter Name="original_unitNo" Type="String" />
            <asp:Parameter Name="original_propertyName" Type="String" />
            <asp:Parameter DbType="Date" Name="original_leaseBeginDate" />
            <asp:Parameter Name="original_wordedBeginDate" Type="String" />
            <asp:Parameter DbType="Date" Name="original_leaseEndDate" />
            <asp:Parameter Name="original_wordedEndDate" Type="String" />
            <asp:Parameter Name="original_MarketBaseRentA" Type="Decimal" />
            <asp:Parameter Name="original_WasherDryerB" Type="Decimal" />
            <asp:Parameter Name="original_ExtraOccC" Type="Decimal" />
            <asp:Parameter Name="original_UtilitiesBaseD" Type="Decimal" />
            <asp:Parameter Name="original_gasUtilities" Type="Boolean" />
            <asp:Parameter Name="original_waterUtilities" Type="Boolean" />
            <asp:Parameter Name="original_electricUtilities" Type="Boolean" />
            <asp:Parameter Name="original_UtilitiesExtra" Type="Decimal" />
            <asp:Parameter Name="original_SubRentE" Type="Decimal" />
            <asp:Parameter Name="original_NHOPremiumF" Type="Decimal" />
            <asp:Parameter Name="original_NHOPremiumF2" Type="Decimal" />
            <asp:Parameter Name="original_MonthLeasePremiumG" Type="Decimal" />
            <asp:Parameter Name="original_MonthLeasePremiumG2" Type="Decimal" />
            <asp:Parameter Name="original_TotalMonthlyRentH" Type="Decimal" />
            <asp:Parameter Name="original_SeniorDiscI" Type="Decimal" />
            <asp:Parameter Name="original_MultiYearI" Type="Decimal" />
            <asp:Parameter Name="original_totalLeasePrepayI" Type="Decimal" />
            <asp:Parameter Name="original_OtherDiscountI" Type="Decimal" />
            <asp:Parameter Name="original_standardSecurityDepH" Type="Decimal" />
            <asp:Parameter Name="original_AltSecDepK" Type="Decimal" />
            <asp:Parameter Name="original_ShortLeaseSecDep" Type="Decimal" />
            <asp:Parameter Name="original_firstNHOFeeM" Type="Decimal" />
            <asp:Parameter Name="original_AddNHOFeeN" Type="Decimal" />
            <asp:Parameter Name="original_firstFullMonthRentO" Type="Decimal" />
            <asp:Parameter Name="original_PartialMonthP" Type="Decimal" />
            <asp:Parameter Name="original_RenewalRebateQ" Type="Decimal" />
            <asp:Parameter Name="original_SpecialDepositR" Type="Decimal" />
            <asp:Parameter Name="original_RefundableScreenDepS" Type="Decimal" />
            <asp:Parameter Name="original_AdvertisedSpecialT" Type="Decimal" />
            <asp:Parameter Name="original_LessDepCoveredU" Type="Decimal" />
            <asp:Parameter Name="original_TotalCashDueV" Type="Decimal" />
            <asp:Parameter Name="original_FutureSpecialW" Type="Decimal" />
            <asp:Parameter Name="original_vehicleID1" Type="String" />
            <asp:Parameter Name="original_vehicleID2" Type="String" />
            <asp:Parameter Name="original_vehicleID3" Type="String" />
            <asp:Parameter Name="original_vehicleID4" Type="String" />
            <asp:Parameter Name="original_cosigner" Type="String" />
            <asp:Parameter Name="original_LeaseAgentID" Type="String" />
            <asp:Parameter Name="original_AgentTitle" Type="String" />
            <asp:Parameter Name="original_approvedBy" Type="String" />
            <asp:Parameter Name="original_approved" Type="Boolean" />
            <asp:Parameter Name="original_rejected" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="original_decisionDate" />
            <asp:Parameter DbType="Date" Name="original_signedDate" />
            <asp:Parameter Name="original_UserInput" Type="String" />
            <asp:Parameter DbType="Date" Name="original_inputDate" />
            <asp:Parameter Name="original_PetAge2" Type="String" />
            <asp:Parameter Name="original_PetWeight2" Type="String" />
            <asp:Parameter Name="original_PetType2" Type="String" />
            <asp:Parameter Name="original_PetColor2" Type="String" />
            <asp:Parameter DbType="Date" Name="original_LastRabiesShot2" />
            <asp:Parameter Name="original_PetAge" Type="String" />
            <asp:Parameter Name="original_PetWeight" Type="String" />
            <asp:Parameter Name="original_PetType" Type="String" />
            <asp:Parameter Name="original_PetColor" Type="String" />
            <asp:Parameter DbType="Date" Name="original_LastRabiesShot" />
            <asp:Parameter Name="original_screeningID" Type="Int64" />
            <asp:Parameter Name="original_APlusRating" Type="Boolean" />
            <asp:Parameter Name="original_LeaseNotes" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="propertyID" Type="Int64" />
            <asp:Parameter Name="applicantID" Type="String" />
            <asp:Parameter Name="applicantID2" Type="String" />
            <asp:Parameter DbType="Date" Name="dateCompleted" />
            <asp:Parameter Name="wordedDateCompleted" Type="String" />
            <asp:Parameter Name="RNALLC" Type="String" />
            <asp:Parameter Name="applicantID3" Type="String" />
            <asp:Parameter Name="applicantID4" Type="String" />
            <asp:Parameter Name="unitNo" Type="String" />
            <asp:Parameter Name="propertyName" Type="String" />
            <asp:Parameter DbType="Date" Name="leaseBeginDate" />
            <asp:Parameter Name="wordedBeginDate" Type="String" />
            <asp:Parameter DbType="Date" Name="leaseEndDate" />
            <asp:Parameter Name="wordedEndDate" Type="String" />
            <asp:Parameter Name="MarketBaseRentA" Type="Decimal" />
            <asp:Parameter Name="WasherDryerB" Type="Decimal" />
            <asp:Parameter Name="ExtraOccC" Type="Decimal" />
            <asp:Parameter Name="UtilitiesBaseD" Type="Decimal" />
            <asp:Parameter Name="gasUtilities" Type="Boolean" />
            <asp:Parameter Name="waterUtilities" Type="Boolean" />
            <asp:Parameter Name="electricUtilities" Type="Boolean" />
            <asp:Parameter Name="UtilitiesExtra" Type="Decimal" />
            <asp:Parameter Name="SubRentE" Type="Decimal" />
            <asp:Parameter Name="NHOPremiumF" Type="Decimal" />
            <asp:Parameter Name="NHOPremiumF2" Type="Decimal" />
            <asp:Parameter Name="MonthLeasePremiumG" Type="Decimal" />
            <asp:Parameter Name="MonthLeasePremiumG2" Type="Decimal" />
            <asp:Parameter Name="TotalMonthlyRentH" Type="Decimal" />
            <asp:Parameter Name="SeniorDiscI" Type="Decimal" />
            <asp:Parameter Name="MultiYearI" Type="Decimal" />
            <asp:Parameter Name="totalLeasePrepayI" Type="Decimal" />
            <asp:Parameter Name="OtherDiscountI" Type="Decimal" />
            <asp:Parameter Name="standardSecurityDepH" Type="Decimal" />
            <asp:Parameter Name="AltSecDepK" Type="Decimal" />
            <asp:Parameter Name="ShortLeaseSecDep" Type="Decimal" />
            <asp:Parameter Name="firstNHOFeeM" Type="Decimal" />
            <asp:Parameter Name="AddNHOFeeN" Type="Decimal" />
            <asp:Parameter Name="firstFullMonthRentO" Type="Decimal" />
            <asp:Parameter Name="PartialMonthP" Type="Decimal" />
            <asp:Parameter Name="RenewalRebateQ" Type="Decimal" />
            <asp:Parameter Name="SpecialDepositR" Type="Decimal" />
            <asp:Parameter Name="RefundableScreenDepS" Type="Decimal" />
            <asp:Parameter Name="AdvertisedSpecialT" Type="Decimal" />
            <asp:Parameter Name="LessDepCoveredU" Type="Decimal" />
            <asp:Parameter Name="TotalCashDueV" Type="Decimal" />
            <asp:Parameter Name="FutureSpecialW" Type="Decimal" />
            <asp:Parameter Name="vehicleID1" Type="String" />
            <asp:Parameter Name="vehicleID2" Type="String" />
            <asp:Parameter Name="vehicleID3" Type="String" />
            <asp:Parameter Name="vehicleID4" Type="String" />
            <asp:Parameter Name="cosigner" Type="String" />
            <asp:Parameter Name="LeaseAgentID" Type="String" />
            <asp:Parameter Name="AgentTitle" Type="String" />
            <asp:Parameter Name="approvedBy" Type="String" />
            <asp:Parameter Name="approved" Type="Boolean" />
            <asp:Parameter Name="rejected" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="decisionDate" />
            <asp:Parameter DbType="Date" Name="signedDate" />
            <asp:Parameter Name="UserInput" Type="String" />
            <asp:Parameter DbType="Date" Name="inputDate" />
            <asp:Parameter Name="PetAge2" Type="String" />
            <asp:Parameter Name="PetWeight2" Type="String" />
            <asp:Parameter Name="PetType2" Type="String" />
            <asp:Parameter Name="PetColor2" Type="String" />
            <asp:Parameter DbType="Date" Name="LastRabiesShot2" />
            <asp:Parameter Name="PetAge" Type="String" />
            <asp:Parameter Name="PetWeight" Type="String" />
            <asp:Parameter Name="PetType" Type="String" />
            <asp:Parameter Name="PetColor" Type="String" />
            <asp:Parameter DbType="Date" Name="LastRabiesShot" />
            <asp:Parameter Name="screeningID" Type="Int64" />
            <asp:Parameter Name="APlusRating" Type="Boolean" />
            <asp:Parameter Name="LeaseNotes" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="screeningID" SessionField="newscreeningid" 
                Type="Int64" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="propertyID" Type="Int64" />
            <asp:Parameter Name="applicantID" Type="String" />
            <asp:Parameter Name="applicantID2" Type="String" />
            <asp:Parameter DbType="Date" Name="dateCompleted" />
            <asp:Parameter Name="wordedDateCompleted" Type="String" />
            <asp:Parameter Name="RNALLC" Type="String" />
            <asp:Parameter Name="applicantID3" Type="String" />
            <asp:Parameter Name="applicantID4" Type="String" />
            <asp:Parameter Name="unitNo" Type="String" />
            <asp:Parameter Name="propertyName" Type="String" />
            <asp:Parameter DbType="Date" Name="leaseBeginDate" />
            <asp:Parameter Name="wordedBeginDate" Type="String" />
            <asp:Parameter DbType="Date" Name="leaseEndDate" />
            <asp:Parameter Name="wordedEndDate" Type="String" />
            <asp:Parameter Name="MarketBaseRentA" Type="Decimal" />
            <asp:Parameter Name="WasherDryerB" Type="Decimal" />
            <asp:Parameter Name="ExtraOccC" Type="Decimal" />
            <asp:Parameter Name="UtilitiesBaseD" Type="Decimal" />
            <asp:Parameter Name="gasUtilities" Type="Boolean" />
            <asp:Parameter Name="waterUtilities" Type="Boolean" />
            <asp:Parameter Name="electricUtilities" Type="Boolean" />
            <asp:Parameter Name="UtilitiesExtra" Type="Decimal" />
            <asp:Parameter Name="SubRentE" Type="Decimal" />
            <asp:Parameter Name="NHOPremiumF" Type="Decimal" />
            <asp:Parameter Name="NHOPremiumF2" Type="Decimal" />
            <asp:Parameter Name="MonthLeasePremiumG" Type="Decimal" />
            <asp:Parameter Name="MonthLeasePremiumG2" Type="Decimal" />
            <asp:Parameter Name="TotalMonthlyRentH" Type="Decimal" />
            <asp:Parameter Name="SeniorDiscI" Type="Decimal" />
            <asp:Parameter Name="MultiYearI" Type="Decimal" />
            <asp:Parameter Name="totalLeasePrepayI" Type="Decimal" />
            <asp:Parameter Name="OtherDiscountI" Type="Decimal" />
            <asp:Parameter Name="standardSecurityDepH" Type="Decimal" />
            <asp:Parameter Name="AltSecDepK" Type="Decimal" />
            <asp:Parameter Name="ShortLeaseSecDep" Type="Decimal" />
            <asp:Parameter Name="firstNHOFeeM" Type="Decimal" />
            <asp:Parameter Name="AddNHOFeeN" Type="Decimal" />
            <asp:Parameter Name="firstFullMonthRentO" Type="Decimal" />
            <asp:Parameter Name="PartialMonthP" Type="Decimal" />
            <asp:Parameter Name="RenewalRebateQ" Type="Decimal" />
            <asp:Parameter Name="SpecialDepositR" Type="Decimal" />
            <asp:Parameter Name="RefundableScreenDepS" Type="Decimal" />
            <asp:Parameter Name="AdvertisedSpecialT" Type="Decimal" />
            <asp:Parameter Name="LessDepCoveredU" Type="Decimal" />
            <asp:Parameter Name="TotalCashDueV" Type="Decimal" />
            <asp:Parameter Name="FutureSpecialW" Type="Decimal" />
            <asp:Parameter Name="vehicleID1" Type="String" />
            <asp:Parameter Name="vehicleID2" Type="String" />
            <asp:Parameter Name="vehicleID3" Type="String" />
            <asp:Parameter Name="vehicleID4" Type="String" />
            <asp:Parameter Name="cosigner" Type="String" />
            <asp:Parameter Name="LeaseAgentID" Type="String" />
            <asp:Parameter Name="AgentTitle" Type="String" />
            <asp:Parameter Name="approvedBy" Type="String" />
            <asp:Parameter Name="approved" Type="Boolean" />
            <asp:Parameter Name="rejected" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="decisionDate" />
            <asp:Parameter DbType="Date" Name="signedDate" />
            <asp:Parameter Name="UserInput" Type="String" />
            <asp:Parameter DbType="Date" Name="inputDate" />
            <asp:Parameter Name="PetAge2" Type="String" />
            <asp:Parameter Name="PetWeight2" Type="String" />
            <asp:Parameter Name="PetType2" Type="String" />
            <asp:Parameter Name="PetColor2" Type="String" />
            <asp:Parameter DbType="Date" Name="LastRabiesShot2" />
            <asp:Parameter Name="PetAge" Type="String" />
            <asp:Parameter Name="PetWeight" Type="String" />
            <asp:Parameter Name="PetType" Type="String" />
            <asp:Parameter Name="PetColor" Type="String" />
            <asp:Parameter DbType="Date" Name="LastRabiesShot" />
            <asp:Parameter Name="screeningID" Type="Int64" />
            <asp:Parameter Name="APlusRating" Type="Boolean" />
            <asp:Parameter Name="LeaseNotes" Type="String" />
            <asp:Parameter Name="original_leaseID" Type="Int64" />
            <asp:Parameter Name="original_propertyID" Type="Int64" />
            <asp:Parameter Name="original_applicantID" Type="String" />
            <asp:Parameter Name="original_applicantID2" Type="String" />
            <asp:Parameter Name="original_dateCompleted" DbType="Date" />
            <asp:Parameter Name="original_wordedDateCompleted" Type="String" />
            <asp:Parameter Name="original_RNALLC" Type="String" />
            <asp:Parameter Name="original_applicantID3" Type="String" />
            <asp:Parameter Name="original_applicantID4" Type="String" />
            <asp:Parameter Name="original_unitNo" Type="String" />
            <asp:Parameter Name="original_propertyName" Type="String" />
            <asp:Parameter Name="original_leaseBeginDate" DbType="Date" />
            <asp:Parameter Name="original_wordedBeginDate" Type="String" />
            <asp:Parameter Name="original_leaseEndDate" DbType="Date" />
            <asp:Parameter Name="original_wordedEndDate" Type="String" />
            <asp:Parameter Name="original_MarketBaseRentA" Type="Decimal" />
            <asp:Parameter Name="original_WasherDryerB" Type="Decimal" />
            <asp:Parameter Name="original_ExtraOccC" Type="Decimal" />
            <asp:Parameter Name="original_UtilitiesBaseD" Type="Decimal" />
            <asp:Parameter Name="original_gasUtilities" Type="Boolean" />
            <asp:Parameter Name="original_waterUtilities" Type="Boolean" />
            <asp:Parameter Name="original_electricUtilities" Type="Boolean" />
            <asp:Parameter Name="original_UtilitiesExtra" Type="Decimal" />
            <asp:Parameter Name="original_SubRentE" Type="Decimal" />
            <asp:Parameter Name="original_NHOPremiumF" Type="Decimal" />
            <asp:Parameter Name="original_NHOPremiumF2" Type="Decimal" />
            <asp:Parameter Name="original_MonthLeasePremiumG" Type="Decimal" />
            <asp:Parameter Name="original_MonthLeasePremiumG2" Type="Decimal" />
            <asp:Parameter Name="original_TotalMonthlyRentH" Type="Decimal" />
            <asp:Parameter Name="original_SeniorDiscI" Type="Decimal" />
            <asp:Parameter Name="original_MultiYearI" Type="Decimal" />
            <asp:Parameter Name="original_totalLeasePrepayI" Type="Decimal" />
            <asp:Parameter Name="original_OtherDiscountI" Type="Decimal" />
            <asp:Parameter Name="original_standardSecurityDepH" Type="Decimal" />
            <asp:Parameter Name="original_AltSecDepK" Type="Decimal" />
            <asp:Parameter Name="original_ShortLeaseSecDep" Type="Decimal" />
            <asp:Parameter Name="original_firstNHOFeeM" Type="Decimal" />
            <asp:Parameter Name="original_AddNHOFeeN" Type="Decimal" />
            <asp:Parameter Name="original_firstFullMonthRentO" Type="Decimal" />
            <asp:Parameter Name="original_PartialMonthP" Type="Decimal" />
            <asp:Parameter Name="original_RenewalRebateQ" Type="Decimal" />
            <asp:Parameter Name="original_SpecialDepositR" Type="Decimal" />
            <asp:Parameter Name="original_RefundableScreenDepS" Type="Decimal" />
            <asp:Parameter Name="original_AdvertisedSpecialT" Type="Decimal" />
            <asp:Parameter Name="original_LessDepCoveredU" Type="Decimal" />
            <asp:Parameter Name="original_TotalCashDueV" Type="Decimal" />
            <asp:Parameter Name="original_FutureSpecialW" Type="Decimal" />
            <asp:Parameter Name="original_vehicleID1" Type="String" />
            <asp:Parameter Name="original_vehicleID2" Type="String" />
            <asp:Parameter Name="original_vehicleID3" Type="String" />
            <asp:Parameter Name="original_vehicleID4" Type="String" />
            <asp:Parameter Name="original_cosigner" Type="String" />
            <asp:Parameter Name="original_LeaseAgentID" Type="String" />
            <asp:Parameter Name="original_AgentTitle" Type="String" />
            <asp:Parameter Name="original_approvedBy" Type="String" />
            <asp:Parameter Name="original_approved" Type="Boolean" />
            <asp:Parameter Name="original_rejected" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="original_decisionDate" />
            <asp:Parameter Name="original_signedDate" DbType="Date" />
            <asp:Parameter Name="original_UserInput" Type="String" />
            <asp:Parameter Name="original_inputDate" DbType="Date" />
            <asp:Parameter Name="original_PetAge2" Type="String" />
            <asp:Parameter Name="original_PetWeight2" Type="String" />
            <asp:Parameter Name="original_PetType2" Type="String" />
            <asp:Parameter Name="original_PetColor2" Type="String" />
            <asp:Parameter Name="original_LastRabiesShot2" DbType="Date" />
            <asp:Parameter Name="original_PetAge" Type="String" />
            <asp:Parameter Name="original_PetWeight" Type="String" />
            <asp:Parameter Name="original_PetType" Type="String" />
            <asp:Parameter Name="original_PetColor" Type="String" />
            <asp:Parameter Name="original_LastRabiesShot" DbType="Date" />
            <asp:Parameter Name="original_screeningID" Type="Int64" />
            <asp:Parameter Name="original_APlusRating" Type="Boolean" />
            <asp:Parameter Name="original_LeaseNotes" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:panel ID="Panel2" runat="server" Visible="False">
    <asp:Button ID="btnLeaseMod" runat="server" 
        Text="Click here if lease is incorrect and needs to be modified" />
    <br />

    <asp:Label ID="Labelex" runat="server"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PrintLease.aspx" 
        Target="_blank">Print out lease document</asp:HyperLink>
    <p>
        &nbsp;</p>
        </asp:panel>
    <br />
    
        </div>
        <div style="float:left;" align="center"> 
<h2>The information entered on this screen will complete the information currently residing on the Rental Verification form below and all other relevant fields on the lease document:</h2>
<br />
<br />
    <img src="Documents/LeaseCash.png" align="top" />
    
    </div>

    </asp:Panel>
    </asp:Content>