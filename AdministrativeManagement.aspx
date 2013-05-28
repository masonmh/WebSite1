<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="AdministrativeManagement.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Adminitrative Management&nbsp;&nbsp;
    </h2>
    <p> &nbsp;<asp:Label ID="Label5" runat="server" 
            Text="Select an application to review that is not ready to be approved:" 
            Visible="False"></asp:Label>
        <asp:DropDownList ID="ddlSelectApplicant" runat="server" AutoPostBack="True" 
            DataSourceID="sqlDSddlApplicant" DataTextField="CombinedName" 
            DataValueField="ScreeningID" Height="18px" Width="415px" Visible="False">
        </asp:DropDownList>
        <asp:Button ID="btnRefresh" runat="server" 
            PostBackUrl="~/AdministrativeManagement.aspx" 
            Text="Click to Make this Applicant the Focus" Visible="False" />
        <asp:SqlDataSource ID="sqlDSddlApplicant" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            SelectCommand="select lastname, grossSalary, applicant.screeningID, lastname+' '+CAST(applicant.screeningID as VarChar(255))+' '+CAST(screening.screeningdate as VarChar(10)) as CombinedName from applicant, screening where grossSalary = (select max(grossSalary) from applicant as f where f.screeningID = applicant.screeningID) AND applicant.screeningid = screening.screeningid AND (approved = 'false' OR approved IS NULL) AND (screening.ScreeningStatus = '4' OR screening.ScreeningStatus IS NULL)">
        </asp:SqlDataSource>
    </p>
    <p>Select an application that is ready to be approved:
        <asp:DropDownList ID="ddlApprovedDrop" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="CombinedName" 
            DataValueField="ScreeningID" Height="18px" Width="415px">
        </asp:DropDownList>
        <asp:Button ID="btnRefresh0" runat="server" 
            PostBackUrl="~/AdministrativeManagement.aspx" 
            Text="Click to Make this Applicant the Focus" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            SelectCommand="select lastname, grossSalary, applicant.screeningID, lastname+' '+CAST(applicant.screeningID as VarChar(255))+' '+CAST(screening.screeningdate as VarChar(10)) as CombinedName from applicant, screening, LeaseForm where grossSalary = (select max(grossSalary) from applicant as f where f.screeningID = applicant.screeningID) AND applicant.screeningid = screening.screeningid AND screening.screeningid = LeaseForm.screeningid AND screening.approved = 'true' AND LeaseForm.Leaseid is not null AND (screening.ScreeningStatus = '4' OR screening.ScreeningStatus IS NULL) AND (screening.ApprovedByManagement = 'false' OR screening.ApprovedByManagement is Null)">
        </asp:SqlDataSource>
    </p>
    <asp:Label ID="lblInitialQ0" runat="server" Text="Current Screening Form"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
        BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
        DataKeyNames="ScreeningID" DataSourceID="SqlDataSourceScreening" 
        GridLines="None">
        <Columns>
            <asp:BoundField DataField="ScreeningID" HeaderText="ScreeningID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ScreeningID" 
                Visible="False" />
            <asp:CheckBoxField DataField="CriminalConviction" 
                HeaderText="CriminalConviction" SortExpression="CriminalConviction" 
                Visible="False" />
            <asp:BoundField DataField="CriminalConvictionReason" 
                HeaderText="CriminalConvictionReason" SortExpression="CriminalConvictionReason" 
                Visible="False" />
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
                <asp:BoundField DataField="Demeanor" HeaderText="Demeanor" 
                SortExpression="Deameanor" Visible="True" />
                <asp:BoundField DataField="ScreeningNotes" HeaderText="ScreeningNotes" 
                SortExpression="ScreeningNotes" Visible="True" />
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
        SelectCommand="SELECT [ScreeningID], [CriminalConviction], [CriminalConvictionReason], [TenantIsEmployee], [DateOfDesiredMoveIn], [NumOfOccupants], [RequiredNumBed], [RequiredNumBath], [RequiredWD], [TargetRent], [OtherDesiredFeatures], [BrokenLease], [nonHumanOccupants], [numnonrelated], [spouseIncluded], [propertyID], [Demeanor], [ScreeningNotes] FROM [Screening] WHERE ([ScreeningID] = @ScreeningID)">
        <SelectParameters>
            <asp:SessionParameter Name="ScreeningID" SessionField="newscreeningid" 
                Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
        <asp:Label ID="lblInitialQ" runat="server" 
            Text="All Applicants on Screening Form"></asp:Label>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1" DataKeyNames="ApplicantID" 
            DataSourceID="SqlDataSource3" GridLines="None">
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
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" DataKeyNames="leaseID" 
        DataSourceID="SqlDataSourcePropApart0" GridLines="None" Visible="False">
        <Columns>
            <asp:BoundField DataField="leaseID" HeaderText="leaseID" 
                InsertVisible="False" ReadOnly="True" SortExpression="leaseID" />
            <asp:BoundField DataField="propertyID" HeaderText="propertyID" 
                SortExpression="propertyID" />
            <asp:BoundField DataField="applicantID" HeaderText="applicantID" 
                SortExpression="applicantID" Visible="False" />
            <asp:BoundField DataField="applicantID2" HeaderText="applicantID2" 
                SortExpression="applicantID2" Visible="False" />
            <asp:BoundField DataField="dateCompleted" HeaderText="dateCompleted" 
                SortExpression="dateCompleted" />
            <asp:BoundField DataField="wordedDateCompleted" 
                HeaderText="wordedDateCompleted" SortExpression="wordedDateCompleted" 
                Visible="False" />
            <asp:BoundField DataField="RNALLC" HeaderText="RNALLC" 
                SortExpression="RNALLC" />
            <asp:BoundField DataField="applicantID3" HeaderText="applicantID3" 
                SortExpression="applicantID3" Visible="False" />
            <asp:BoundField DataField="applicantID4" HeaderText="applicantID4" 
                SortExpression="applicantID4" Visible="False" />
            <asp:BoundField DataField="unitNo" HeaderText="unitNo" 
                SortExpression="unitNo" />
            <asp:BoundField DataField="propertyName" HeaderText="propertyName" 
                SortExpression="propertyName" />
            <asp:BoundField DataField="leaseBeginDate" HeaderText="leaseBeginDate" 
                SortExpression="leaseBeginDate" />
            <asp:BoundField DataField="wordedBeginDate" 
                HeaderText="wordedBeginDate" SortExpression="wordedBeginDate" 
                Visible="False" />
            <asp:BoundField DataField="leaseEndDate" HeaderText="leaseEndDate" 
                SortExpression="leaseEndDate" />
            <asp:BoundField DataField="wordedEndDate" HeaderText="wordedEndDate" 
                SortExpression="wordedEndDate" Visible="False" />
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
            <asp:CheckBoxField DataField="waterUtilities" 
                HeaderText="waterUtilities" SortExpression="waterUtilities" />
            <asp:CheckBoxField DataField="electricUtilities" 
                HeaderText="electricUtilities" SortExpression="electricUtilities" />
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
            <asp:BoundField DataField="MonthLeasePremiumG2" HeaderText="MonthLeasePremiumG2" 
                SortExpression="MonthLeasePremiumG2" />
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
    <asp:SqlDataSource ID="SqlDataSourcePropApart0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
        
        SelectCommand="SELECT * FROM [LeaseForm] WHERE ([screeningID] = @screeningID)">
        <SelectParameters>
            <asp:SessionParameter Name="ScreeningID" SessionField="newscreeningid" 
                Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
    <table><tr>
    <td align="right"><asp:Label ID="Label1" runat="server" Text="Calculated Deposit:"></asp:Label></td>
    <td> <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox></td>
    
    </tr>
    <tr>
    <td align="right"> <asp:Label ID="Label4" runat="server" 
            Text="Check if deposit needs to be modified:"></asp:Label></td>
    <td><asp:CheckBox ID="chbChangeDep" runat="server" /></td>
    
    </tr>
    <tr>
    <td align="right"> <asp:Label ID="Label3" runat="server" Text="New Management Approved Deposit:"></asp:Label></td>
    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
    
    </tr>
    <tr>
    <td align="right">Approve for Lease, Enter any comments before clicking button:</td>
    <td><asp:TextBox 
            ID="txtManComments" runat="server" TextMode="MultiLine"></asp:TextBox></td>
    </tr>
    
    </tr>
    </table>
       
      <asp:Button ID="Button1" runat="server" Text="Approve to Create Lease" />
    </p>
    <hr />
    <p>
        &nbsp;</p>
    <p>
        If necessary, select an application to unapprove:
        <asp:DropDownList ID="ddlApprovedDrop0" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource6" DataTextField="CombinedName" 
            DataValueField="ScreeningID" Height="18px" Width="415px">
        </asp:DropDownList>
        <asp:Button ID="btnRefresh1" runat="server" 
            PostBackUrl="~/AdministrativeManagement.aspx" 
            Text="Click to Make this Applicant the Focus" />
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            
            SelectCommand="select lastname, grossSalary, applicant.screeningID, lastname+' '+CAST(applicant.screeningID as VarChar(255))+' '+CAST(screening.screeningdate as VarChar(10)) as CombinedName from applicant, screening, LeaseForm where grossSalary = (select max(grossSalary) from applicant as f where f.screeningID = applicant.screeningID) AND applicant.screeningid = screening.screeningid AND screening.screeningid = LeaseForm.screeningid AND screening.approved = 'true' AND LeaseForm.Leaseid is not null AND (screening.ScreeningStatus = '4' OR screening.ScreeningStatus IS NULL) AND screening.ApprovedByManagement = 'true'">
        </asp:SqlDataSource>
    </p>
    
    <table>
    <tr>
    <td align="right">Removing approval for Lease, Enter any comments before clicking button:</td>
    <td><asp:TextBox 
            ID="txtManComments0" runat="server" TextMode="MultiLine"></asp:TextBox></td>
    </tr>
    
    </table>
       
    <p>
       
      <asp:Button ID="Button7" runat="server" 
            Text="Remove Previous Approval to Create Lease" />
    </p>
	
    <p>
        <asp:Label ID="Label2" runat="server" 
            Text="Select Lease to move to Confirm and Create Tenant" Visible="False"></asp:Label>
        <asp:DropDownList ID="ddlLeaseTenant" runat="server" 
            DataSourceID="SqlDataSource4" DataTextField="leaseID" 
            DataValueField="leaseID" Visible="False">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            SelectCommand="SELECT [leaseID], [applicantID], [applicantID2], [applicantID3], [applicantID4] FROM [LeaseForm] WHERE ([approvedBy] IS Null)">
            <SelectParameters>
                <asp:Parameter Name="approvedBy" Type="String" DefaultValue="&quot;&quot;" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="GridViewLease" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            DeleteCommand="DELETE FROM [LeaseForm] WHERE [leaseID] = @original_leaseID AND (([propertyID] = @original_propertyID) OR ([propertyID] IS NULL AND @original_propertyID IS NULL)) AND (([applicantID] = @original_applicantID) OR ([applicantID] IS NULL AND @original_applicantID IS NULL)) AND (([applicantID2] = @original_applicantID2) OR ([applicantID2] IS NULL AND @original_applicantID2 IS NULL)) AND (([dateCompleted] = @original_dateCompleted) OR ([dateCompleted] IS NULL AND @original_dateCompleted IS NULL)) AND (([wordedDateCompleted] = @original_wordedDateCompleted) OR ([wordedDateCompleted] IS NULL AND @original_wordedDateCompleted IS NULL)) AND (([petID1] = @original_petID1) OR ([petID1] IS NULL AND @original_petID1 IS NULL)) AND (([wordedBeginDate] = @original_wordedBeginDate) OR ([wordedBeginDate] IS NULL AND @original_wordedBeginDate IS NULL)) AND (([leaseBeginDate] = @original_leaseBeginDate) OR ([leaseBeginDate] IS NULL AND @original_leaseBeginDate IS NULL)) AND (([propertyName] = @original_propertyName) OR ([propertyName] IS NULL AND @original_propertyName IS NULL)) AND (([unitNo] = @original_unitNo) OR ([unitNo] IS NULL AND @original_unitNo IS NULL)) AND (([applicantID4] = @original_applicantID4) OR ([applicantID4] IS NULL AND @original_applicantID4 IS NULL)) AND (([applicantID3] = @original_applicantID3) OR ([applicantID3] IS NULL AND @original_applicantID3 IS NULL)) AND (([RNALLC] = @original_RNALLC) OR ([RNALLC] IS NULL AND @original_RNALLC IS NULL)) AND (([petID2] = @original_petID2) OR ([petID2] IS NULL AND @original_petID2 IS NULL)) AND (([leaseEndDate] = @original_leaseEndDate) OR ([leaseEndDate] IS NULL AND @original_leaseEndDate IS NULL)) AND (([wordedEndDate] = @original_wordedEndDate) OR ([wordedEndDate] IS NULL AND @original_wordedEndDate IS NULL)) AND (([MarketBaseRentA] = @original_MarketBaseRentA) OR ([MarketBaseRentA] IS NULL AND @original_MarketBaseRentA IS NULL)) AND (([WasherDryerB] = @original_WasherDryerB) OR ([WasherDryerB] IS NULL AND @original_WasherDryerB IS NULL)) AND (([ExtraOccC] = @original_ExtraOccC) OR ([ExtraOccC] IS NULL AND @original_ExtraOccC IS NULL)) AND (([gasUtilities] = @original_gasUtilities) OR ([gasUtilities] IS NULL AND @original_gasUtilities IS NULL)) AND (([UtilitiesBaseD] = @original_UtilitiesBaseD) OR ([UtilitiesBaseD] IS NULL AND @original_UtilitiesBaseD IS NULL)) AND (([waterUtilities] = @original_waterUtilities) OR ([waterUtilities] IS NULL AND @original_waterUtilities IS NULL)) AND (([TotalMonthlyRentH] = @original_TotalMonthlyRentH) OR ([TotalMonthlyRentH] IS NULL AND @original_TotalMonthlyRentH IS NULL)) AND (([MonthLeasePremiumG] = @original_MonthLeasePremiumG) OR ([MonthLeasePremiumG] IS NULL AND @original_MonthLeasePremiumG IS NULL)) AND (([MonthLeasePremiumG2] = @original_MonthLeasePremiumG2) OR ([MonthLeasePremiumG2] IS NULL AND @original_MonthLeasePremiumG2 IS NULL)) AND (([NHOPremiumF2] = @original_NHOPremiumF2) OR ([NHOPremiumF2] IS NULL AND @original_NHOPremiumF2 IS NULL)) AND (([NHOPremiumF] = @original_NHOPremiumF) OR ([NHOPremiumF] IS NULL AND @original_NHOPremiumF IS NULL)) AND (([SubRentE] = @original_SubRentE) OR ([SubRentE] IS NULL AND @original_SubRentE IS NULL)) AND (([UtilitiesExtra] = @original_UtilitiesExtra) OR ([UtilitiesExtra] IS NULL AND @original_UtilitiesExtra IS NULL)) AND (([electricUtilities] = @original_electricUtilities) OR ([electricUtilities] IS NULL AND @original_electricUtilities IS NULL)) AND (([SeniorDiscI] = @original_SeniorDiscI) OR ([SeniorDiscI] IS NULL AND @original_SeniorDiscI IS NULL)) AND (([firstNHOFeeM] = @original_firstNHOFeeM) OR ([firstNHOFeeM] IS NULL AND @original_firstNHOFeeM IS NULL)) AND (([ShortLeaseSecDep] = @original_ShortLeaseSecDep) OR ([ShortLeaseSecDep] IS NULL AND @original_ShortLeaseSecDep IS NULL)) AND (([AltSecDepK] = @original_AltSecDepK) OR ([AltSecDepK] IS NULL AND @original_AltSecDepK IS NULL)) AND (([standardSecurityDepH] = @original_standardSecurityDepH) OR ([standardSecurityDepH] IS NULL AND @original_standardSecurityDepH IS NULL)) AND (([totalLeasePrepayI] = @original_totalLeasePrepayI) OR ([totalLeasePrepayI] IS NULL AND @original_totalLeasePrepayI IS NULL)) AND (([OtherDiscountI] = @original_OtherDiscountI) OR ([OtherDiscountI] IS NULL AND @original_OtherDiscountI IS NULL)) AND (([MultiYearI] = @original_MultiYearI) OR ([MultiYearI] IS NULL AND @original_MultiYearI IS NULL)) AND (([AddNHOFeeN] = @original_AddNHOFeeN) OR ([AddNHOFeeN] IS NULL AND @original_AddNHOFeeN IS NULL)) AND (([firstFullMonthRentO] = @original_firstFullMonthRentO) OR ([firstFullMonthRentO] IS NULL AND @original_firstFullMonthRentO IS NULL)) AND (([PartialMonthP] = @original_PartialMonthP) OR ([PartialMonthP] IS NULL AND @original_PartialMonthP IS NULL)) AND (([RenewalRebateQ] = @original_RenewalRebateQ) OR ([RenewalRebateQ] IS NULL AND @original_RenewalRebateQ IS NULL)) AND (([SpecialDepositR] = @original_SpecialDepositR) OR ([SpecialDepositR] IS NULL AND @original_SpecialDepositR IS NULL)) AND (([RefundableScreenDepS] = @original_RefundableScreenDepS) OR ([RefundableScreenDepS] IS NULL AND @original_RefundableScreenDepS IS NULL)) AND (([AdvertisedSpecialT] = @original_AdvertisedSpecialT) OR ([AdvertisedSpecialT] IS NULL AND @original_AdvertisedSpecialT IS NULL)) AND (([LessDepCoveredU] = @original_LessDepCoveredU) OR ([LessDepCoveredU] IS NULL AND @original_LessDepCoveredU IS NULL)) AND (([cosigner] = @original_cosigner) OR ([cosigner] IS NULL AND @original_cosigner IS NULL)) AND (([LeaseAgentID] = @original_LeaseAgentID) OR ([LeaseAgentID] IS NULL AND @original_LeaseAgentID IS NULL)) AND (([vehicleID4] = @original_vehicleID4) OR ([vehicleID4] IS NULL AND @original_vehicleID4 IS NULL)) AND (([vehicleID3] = @original_vehicleID3) OR ([vehicleID3] IS NULL AND @original_vehicleID3 IS NULL)) AND (([vehicleID2] = @original_vehicleID2) OR ([vehicleID2] IS NULL AND @original_vehicleID2 IS NULL)) AND (([vehicleID1] = @original_vehicleID1) OR ([vehicleID1] IS NULL AND @original_vehicleID1 IS NULL)) AND (([FutureSpecialW] = @original_FutureSpecialW) OR ([FutureSpecialW] IS NULL AND @original_FutureSpecialW IS NULL)) AND (([TotalCashDueV] = @original_TotalCashDueV) OR ([TotalCashDueV] IS NULL AND @original_TotalCashDueV IS NULL)) AND (([AgentTitle] = @original_AgentTitle) OR ([AgentTitle] IS NULL AND @original_AgentTitle IS NULL)) AND (([approvedBy] = @original_approvedBy) OR ([approvedBy] IS NULL AND @original_approvedBy IS NULL)) AND (([approved] = @original_approved) OR ([approved] IS NULL AND @original_approved IS NULL)) AND (([rejected] = @original_rejected) OR ([rejected] IS NULL AND @original_rejected IS NULL)) AND (([decisionDate] = @original_decisionDate) OR ([decisionDate] IS NULL AND @original_decisionDate IS NULL)) AND (([signedDate] = @original_signedDate) OR ([signedDate] IS NULL AND @original_signedDate IS NULL)) AND (([UserInput] = @original_UserInput) OR ([UserInput] IS NULL AND @original_UserInput IS NULL)) AND (([inputDate] = @original_inputDate) OR ([inputDate] IS NULL AND @original_inputDate IS NULL))" 
            InsertCommand="INSERT INTO [Tenant] ([propertyID], [leaseID], [applicantID], [vehicleID], [cotenant2], [cotenant3], [cotenant4], [approvedBy], [UserInput], [inputDate]) VALUES (@propertyID, @leaseID, @applicantID, @vehicleID, @cotenant2, @cotenant3, @cotenant4, @approvedBy, @UserInput, @inputDate)"
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [leaseID], [propertyID], [applicantID], [applicantID2], [dateCompleted], [wordedDateCompleted], [petID1], [wordedBeginDate], [leaseBeginDate], [propertyName], [unitNo], [applicantID4], [applicantID3], [RNALLC], [petID2], [leaseEndDate], [wordedEndDate], [MarketBaseRentA], [WasherDryerB], [ExtraOccC], [gasUtilities], [UtilitiesBaseD], [waterUtilities], [TotalMonthlyRentH], [MonthLeasePremiumG], [MonthLeasePremiumG2], [NHOPremiumF2], [NHOPremiumF], [SubRentE], [UtilitiesExtra], [electricUtilities], [SeniorDiscI], [firstNHOFeeM], [ShortLeaseSecDep], [AltSecDepK], [standardSecurityDepH], [totalLeasePrepayI], [OtherDiscountI], [MultiYearI], [AddNHOFeeN], [firstFullMonthRentO], [PartialMonthP], [RenewalRebateQ], [SpecialDepositR], [RefundableScreenDepS], [AdvertisedSpecialT], [LessDepCoveredU], [cosigner], [LeaseAgentID], [vehicleID4], [vehicleID3], [vehicleID2], [vehicleID1], [FutureSpecialW], [TotalCashDueV], [AgentTitle], [approvedBy], [approved], [rejected], [decisionDate], [signedDate], [UserInput], [inputDate] FROM [LeaseForm] WHERE ([leaseID] = @leaseID)" 
            UpdateCommand="UPDATE [LeaseForm] SET [approvedBy] = @approvedBy, [UserInput] = @UserInput, [inputDate] = @inputDate WHERE [leaseID] = @original_leaseID))">
            
            <DeleteParameters>
                <asp:Parameter Name="original_leaseID" Type="Int64" />
                <asp:Parameter Name="original_propertyID" Type="Int64" />
                <asp:Parameter Name="original_applicantID" Type="Int64" />
                <asp:Parameter Name="original_applicantID2" Type="Int64" />
                <asp:Parameter DbType="DateTime" Name="original_dateCompleted" />
                <asp:Parameter Name="original_wordedDateCompleted" Type="String" />
                <asp:Parameter Name="original_petID1" Type="Int64" />
                <asp:Parameter Name="original_wordedBeginDate" Type="String" />
                <asp:Parameter DbType="DateTime" Name="original_leaseBeginDate" />
                <asp:Parameter Name="original_propertyName" Type="String" />
                <asp:Parameter Name="original_unitNo" Type="String" />
                <asp:Parameter Name="original_applicantID4" Type="Int64" />
                <asp:Parameter Name="original_applicantID3" Type="Int64" />
                <asp:Parameter Name="original_RNALLC" Type="String" />
                <asp:Parameter Name="original_petID2" Type="Int64" />
                <asp:Parameter DbType="DateTime" Name="original_leaseEndDate" />
                <asp:Parameter Name="original_wordedEndDate" Type="String" />
                <asp:Parameter Name="original_MarketBaseRentA" Type="Decimal" />
                <asp:Parameter Name="original_WasherDryerB" Type="Decimal" />
                <asp:Parameter Name="original_ExtraOccC" Type="Decimal" />
                <asp:Parameter Name="original_gasUtilities" Type="Boolean" />
                <asp:Parameter Name="original_UtilitiesBaseD" Type="Decimal" />
                <asp:Parameter Name="original_waterUtilities" Type="Boolean" />
                <asp:Parameter Name="original_TotalMonthlyRentH" Type="Decimal" />
                <asp:Parameter Name="original_MonthLeasePremiumG" Type="Decimal" />
                <asp:Parameter Name="original_MonthLeasePremiumG2" Type="Decimal" />
                <asp:Parameter Name="original_NHOPremiumF2" Type="Decimal" />
                <asp:Parameter Name="original_NHOPremiumF" Type="Decimal" />
                <asp:Parameter Name="original_SubRentE" Type="Decimal" />
                <asp:Parameter Name="original_UtilitiesExtra" Type="Decimal" />
                <asp:Parameter Name="original_electricUtilities" Type="Boolean" />
                <asp:Parameter Name="original_SeniorDiscI" Type="Decimal" />
                <asp:Parameter Name="original_firstNHOFeeM" Type="Decimal" />
                <asp:Parameter Name="original_ShortLeaseSecDep" Type="Decimal" />
                <asp:Parameter Name="original_AltSecDepK" Type="Decimal" />
                <asp:Parameter Name="original_standardSecurityDepH" Type="Decimal" />
                <asp:Parameter Name="original_totalLeasePrepayI" Type="Decimal" />
                <asp:Parameter Name="original_OtherDiscountI" Type="Decimal" />
                <asp:Parameter Name="original_MultiYearI" Type="Decimal" />
                <asp:Parameter Name="original_AddNHOFeeN" Type="Decimal" />
                <asp:Parameter Name="original_firstFullMonthRentO" Type="Decimal" />
                <asp:Parameter Name="original_PartialMonthP" Type="Decimal" />
                <asp:Parameter Name="original_RenewalRebateQ" Type="Decimal" />
                <asp:Parameter Name="original_SpecialDepositR" Type="Decimal" />
                <asp:Parameter Name="original_RefundableScreenDepS" Type="Decimal" />
                <asp:Parameter Name="original_AdvertisedSpecialT" Type="Decimal" />
                <asp:Parameter Name="original_LessDepCoveredU" Type="Decimal" />
                <asp:Parameter Name="original_cosigner" Type="String" />
                <asp:Parameter Name="original_LeaseAgentID" Type="String" />
                <asp:Parameter Name="original_vehicleID4" Type="Int64" />
                <asp:Parameter Name="original_vehicleID3" Type="Int64" />
                <asp:Parameter Name="original_vehicleID2" Type="Int64" />
                <asp:Parameter Name="original_vehicleID1" Type="Int64" />
                <asp:Parameter Name="original_FutureSpecialW" Type="Decimal" />
                <asp:Parameter Name="original_TotalCashDueV" Type="Decimal" />
                <asp:Parameter Name="original_AgentTitle" Type="String" />
                <asp:Parameter Name="original_approvedBy" Type="String" />
                <asp:Parameter Name="original_approved" Type="Boolean" />
                <asp:Parameter Name="original_rejected" Type="Boolean" />
                <asp:Parameter DbType="DateTime" Name="original_decisionDate" />
                <asp:Parameter DbType="DateTime" Name="original_signedDate" />
                <asp:Parameter Name="original_UserInput" Type="String" />
                <asp:Parameter DbType="DateTime" Name="original_inputDate" />
            </DeleteParameters>
            <InsertParameters>
               </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlLeaseTenant" Name="leaseID" 
                    PropertyName="SelectedValue" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
              
           </UpdateParameters>
        </asp:SqlDataSource>
		
    </p>
    <p>
        <asp:Button ID="Button4" runat="server" Text="List Available Properties" />
    </p>
    <p>
        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="PropertyID" DataSourceID="SqlDataSource5" Visible="False" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="PropertyID" />
                <asp:BoundField DataField="CompleteAddress" HeaderText="CompleteAddress" 
                    SortExpression="CompleteAddress" />
                <asp:BoundField DataField="AptNum" HeaderText="AptNum" 
                    SortExpression="AptNum" />
                <asp:BoundField DataField="HousingType" HeaderText="HousingType" 
                    SortExpression="HousingType" />
                <asp:BoundField DataField="NumBedrooms" HeaderText="NumBedrooms" 
                    SortExpression="NumBedrooms" />
                <asp:BoundField DataField="NumBaths" HeaderText="NumBaths" 
                    SortExpression="NumBaths" />
                <asp:BoundField DataField="BaseRent" HeaderText="BaseRent" 
                    SortExpression="BaseRent" />
                <asp:CheckBoxField DataField="GasInclude" HeaderText="GasInclude" 
                    SortExpression="GasInclude" />
                <asp:BoundField DataField="WashDryCost" HeaderText="WashDryCost" 
                    SortExpression="WashDryCost" />
                <asp:CheckBoxField DataField="WaterInclude" HeaderText="WaterInclude" 
                    SortExpression="WaterInclude" />
                <asp:CheckBoxField DataField="ElectricInclude" HeaderText="ElectricInclude" 
                    SortExpression="ElectricInclude" />
                <asp:BoundField DataField="userInput" HeaderText="userInput" 
                    SortExpression="userInput" />
                <asp:BoundField DataField="inputDate" HeaderText="inputDate" 
                    SortExpression="inputDate" />
                <asp:CheckBoxField DataField="Occupied" HeaderText="Occupied" 
                    SortExpression="Occupied" />
                <asp:CheckBoxField DataField="WasherDryerHookups" 
                    HeaderText="WasherDryerHookups" SortExpression="WasherDryerHookups" />
                <asp:BoundField DataField="LastMoveIn" HeaderText="LastMoveIn" 
                    SortExpression="LastMoveIn" />
                <asp:BoundField DataField="LastMoveOut" HeaderText="LastMoveOut" 
                    SortExpression="LastMoveOut" />
                <asp:BoundField DataField="YardiPropertyCode" HeaderText="YardiPropertyCode" 
                    SortExpression="YardiPropertyCode" />
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
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            SelectCommand="SELECT [PropertyID], [CompleteAddress], [AptNum], [HousingType], [NumBedrooms], [NumBaths], [BaseRent], [GasInclude], [WashDryCost], [WaterInclude], [ElectricInclude], [userInput], [inputDate], [Occupied], [WasherDryerHookups], [LastMoveIn], [LastMoveOut], [YardiPropertyCode] FROM [Property] WHERE ([Occupied] = @Occupied) AND ([RentReady] = @RentReady)">
            <SelectParameters>
                <asp:Parameter DefaultValue="false" Name="Occupied" Type="Boolean" />
                <asp:Parameter DefaultValue="true" Name="RentReady" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>

    <p>
        <asp:Button ID="Button5" runat="server" Text="List Leases Ending This Month" 
            Visible="False" />
    </p>
    <p>
        <asp:Button ID="Button6" runat="server" Text="List Applications By Status" 
            Visible="False" />
    </p>
	
    <p>
        &nbsp;</p>
</asp:Content>