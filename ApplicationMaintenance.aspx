<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="ApplicationMaintenance.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Step 4 Verify Application</h2>
    <p>
      <asp:DropDownList ID="ddlSelectApplicant" runat="server" AutoPostBack="True" 
            DataSourceID="sqlDSddlApplicant" DataTextField="CombinedName"
            DataValueField="ScreeningID" Height="18px" Width="415px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="sqlDSddlApplicant" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                     
            
            SelectCommand="select lastname, grossSalary, applicant.screeningID, lastname+' '+CAST(applicant.screeningID as VarChar(255))+' '+CAST(screening.screeningdate as VarChar(10)) as CombinedName from applicant, screening where grossSalary = (select max(grossSalary) from applicant as f where f.screeningID = applicant.screeningID) AND applicant.screeningid = screening.screeningid AND (screening.ScreeningStatus = '4' OR screening.ScreeningStatus IS NULL)">
        </asp:SqlDataSource>
    </p>
        <asp:Label ID="lblInitialQ0" runat="server" 
            Text="Current Screening Form"></asp:Label>
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
<p>
 <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ScreeningID" 
            DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ScreeningDate:
                <asp:TextBox ID="ScreeningDateTextBox" runat="server" 
                    Text='<%# Bind("ScreeningDate") %>' Enabled="False" />
                <br />
                ManagementApprovedBy:
                <asp:TextBox ID="ManagementApprovedByTextBox" runat="server" 
                    Text='<%# Bind("ManagementApprovedBy") %>' Enabled="False" />
                <br />
                ManagementApprovalDate:
                <asp:TextBox ID="ManagementApprovalDateTextBox" runat="server" 
                    Text='<%# Bind("ManagementApprovalDate") %>' Enabled="False" />
                <br />
                ManagementComments:
                <asp:TextBox ID="ManagementCommentsTextBox" runat="server" 
                    Text='<%# Bind("ManagementComments") %>' Enabled="False" />
                <br />
                ScreeningStatus:
                <asp:TextBox ID="ScreeningStatusTextBox" runat="server" 
                    Text='<%# Bind("ScreeningStatus") %>' Visible="False" />
                <asp:DropDownList ID="ddlScreeningStatus" runat="server" 
                    DataSourceID="SqlDataSource2" DataValueField="typeStatus" 
                    DataTextField = "Description" 
                    SelectedValue='<%# Bind("ScreeningStatus") %>'>
                    <asp:ListItem>In Process</asp:ListItem>
                    <asp:ListItem Value="1">Signed Lease</asp:ListItem>
                    <asp:ListItem Value="2">Good Applicant Walked Away</asp:ListItem>
                    <asp:ListItem Value="3">Bad Applicant Walked Away</asp:ListItem>
                </asp:DropDownList>
                
                <br />
                ScreeningID:
                <asp:Label ID="ScreeningIDLabel1" runat="server" 
                    Text='<%# Eval("ScreeningID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ScreeningDate:
                <asp:TextBox ID="ScreeningDateTextBox" runat="server" 
                    Text='<%# Bind("ScreeningDate") %>' />
                <br />
                ManagementApprovedBy:
                <asp:TextBox ID="ManagementApprovedByTextBox" runat="server" 
                    Text='<%# Bind("ManagementApprovedBy") %>' />
                <br />
                ManagementApprovalDate:
                <asp:TextBox ID="ManagementApprovalDateTextBox" runat="server" 
                    Text='<%# Bind("ManagementApprovalDate") %>' />
                <br />
                CoSignerAlso:
                <asp:CheckBox ID="CoSignerAlsoCheckBox" runat="server" 
                    Checked='<%# Bind("CoSignerAlso") %>' />
                <br />
                ManagementComments:
                <asp:TextBox ID="ManagementCommentsTextBox" runat="server" 
                    Text='<%# Bind("ManagementComments") %>' />
                <br />
                ScreeningStatus:
                <asp:TextBox ID="ScreeningStatusTextBox" runat="server" 
                    Text='<%# Bind("ScreeningStatus") %>' />
                <br />

                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ScreeningDate:
                <asp:Label ID="ScreeningDateLabel" runat="server" 
                    Text='<%# Bind("ScreeningDate") %>' />
                <br />
                ManagementApprovedBy:
                <asp:Label ID="ManagementApprovedByLabel" runat="server" 
                    Text='<%# Bind("ManagementApprovedBy") %>' />
                    <br />
                ManagementComments:
                <asp:Label ID="ManagementCommentsLabel" runat="server" 
                    Text='<%# Bind("ManagementComments") %>' />
                <br />
                ScreeningStatus:
                <asp:Label ID="ScreeningStatusLabel" runat="server" 
                    Text='<%# Bind("ScreeningStatus") %>' Visible="False" />
                <asp:DropDownList ID="ddlScreeningStatus" runat="server" 
                    DataSourceID="SqlDataSource2" DataValueField="typeStatus" 
                    DataTextField = "Description" Enabled="false"
                    SelectedValue='<%# Bind("ScreeningStatus") %>'>
                    <asp:ListItem>In Process</asp:ListItem>
                    <asp:ListItem Value="1">Signed Lease</asp:ListItem>
                    <asp:ListItem Value="2">Good Applicant Walked Away</asp:ListItem>
                    <asp:ListItem Value="3">Bad Applicant Walked Away</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT [typeStatus], [Description] FROM [ApplicationStatus]">
                </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            DeleteCommand="DELETE FROM [Screening] WHERE [ScreeningID] = @original_ScreeningID AND (([ScreeningDate] = @original_ScreeningDate) OR ([ScreeningDate] IS NULL AND @original_ScreeningDate IS NULL)) AND (([ManagementApprovedBy] = @original_ManagementApprovedBy) OR ([ManagementApprovedBy] IS NULL AND @original_ManagementApprovedBy IS NULL)) AND (([ManagementApprovalDate] = @original_ManagementApprovalDate) OR ([ManagementApprovalDate] IS NULL AND @original_ManagementApprovalDate IS NULL)) AND (([CoSignerAlso] = @original_CoSignerAlso) OR ([CoSignerAlso] IS NULL AND @original_CoSignerAlso IS NULL)) AND (([ManagementComments] = @original_ManagementComments) OR ([ManagementComments] IS NULL AND @original_ManagementComments IS NULL)) AND (([ScreeningStatus] = @original_ScreeningStatus) OR ([ScreeningStatus] IS NULL AND @original_ScreeningStatus IS NULL))" 
            InsertCommand="INSERT INTO [Screening] ([ScreeningDate], [ManagementApprovedBy], [ManagementApprovalDate], [CoSignerAlso], [ManagementComments], [ScreeningStatus]) VALUES (@ScreeningDate, @ManagementApprovedBy, @ManagementApprovalDate, @CoSignerAlso, @ManagementComments, @ScreeningStatus)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [ScreeningDate], [ManagementApprovedBy], [ManagementApprovalDate], [CoSignerAlso], [ManagementComments], [ScreeningStatus], [ScreeningID] FROM [Screening] WHERE ([ScreeningID] = @ScreeningID)" 
            UpdateCommand="UPDATE [Screening] SET [ScreeningDate] = @ScreeningDate, [ManagementApprovedBy] = @ManagementApprovedBy, [ManagementApprovalDate] = @ManagementApprovalDate, [CoSignerAlso] = @CoSignerAlso, [ManagementComments] = @ManagementComments, [ScreeningStatus] = @ScreeningStatus WHERE [ScreeningID] = @original_ScreeningID AND (([ScreeningDate] = @original_ScreeningDate) OR ([ScreeningDate] IS NULL AND @original_ScreeningDate IS NULL)) AND (([ManagementApprovedBy] = @original_ManagementApprovedBy) OR ([ManagementApprovedBy] IS NULL AND @original_ManagementApprovedBy IS NULL)) AND (([ManagementApprovalDate] = @original_ManagementApprovalDate) OR ([ManagementApprovalDate] IS NULL AND @original_ManagementApprovalDate IS NULL)) AND (([CoSignerAlso] = @original_CoSignerAlso) OR ([CoSignerAlso] IS NULL AND @original_CoSignerAlso IS NULL)) AND (([ManagementComments] = @original_ManagementComments) OR ([ManagementComments] IS NULL AND @original_ManagementComments IS NULL)) AND (([ScreeningStatus] = @original_ScreeningStatus) OR ([ScreeningStatus] IS NULL AND @original_ScreeningStatus IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ScreeningID" Type="Int64" />
                <asp:Parameter DbType="Date" Name="original_ScreeningDate" />
                <asp:Parameter Name="original_ManagementApprovedBy" Type="String" />
                <asp:Parameter DbType="Date" Name="original_ManagementApprovalDate" />
                <asp:Parameter Name="original_CoSignerAlso" Type="Boolean" />
                <asp:Parameter Name="original_ManagementComments" Type="String" />
                <asp:Parameter Name="original_ScreeningStatus" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="ScreeningDate" />
                <asp:Parameter Name="ManagementApprovedBy" Type="String" />
                <asp:Parameter DbType="Date" Name="ManagementApprovalDate" />
                <asp:Parameter Name="CoSignerAlso" Type="Boolean" />
                <asp:Parameter Name="ManagementComments" Type="String" />
                <asp:Parameter Name="ScreeningStatus" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="ScreeningID" SessionField="newscreeningid" 
                    Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="ScreeningDate" />
                <asp:Parameter Name="ManagementApprovedBy" Type="String" />
                <asp:Parameter DbType="Date" Name="ManagementApprovalDate" />
                <asp:Parameter Name="CoSignerAlso" Type="Boolean" />
                <asp:Parameter Name="ManagementComments" Type="String" />
                <asp:Parameter Name="ScreeningStatus" Type="String" />
                <asp:Parameter Name="original_ScreeningID" Type="Int64" />
                <asp:Parameter DbType="Date" Name="original_ScreeningDate" />
                <asp:Parameter Name="original_ManagementApprovedBy" Type="String" />
                <asp:Parameter DbType="Date" Name="original_ManagementApprovalDate" />
                <asp:Parameter Name="original_CoSignerAlso" Type="Boolean" />
                <asp:Parameter Name="original_ManagementComments" Type="String" />
                <asp:Parameter Name="original_ScreeningStatus" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>