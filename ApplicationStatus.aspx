<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="ApplicationStatus.aspx.vb" Inherits="_Default" %>
    
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Application Status Page</h2>
    <p>
        <asp:DropDownList ID="ddlSelectApplicant" runat="server" AutoPostBack="True" 
            DataSourceID="sqlDSddlApplicant" DataTextField="CombinedName"
            DataValueField="ScreeningID" Height="18px" Width="415px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="sqlDSddlApplicant" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            SelectCommand="SELECT [FirstName], [MiddleName], [LastName], [FirstName] + [MiddleName] + [LastName] + [SSN] As CombinedName, [SSN], [ScreeningID] FROM [Screening], [Applicant] Where [Screening].[ApplicantID]=[Applicant].[ApplicantID]">
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ScreeningID" 
            DataSourceID="SqlDataSource1" AllowPaging="True">
            <EditItemTemplate>
                Screening ID:
                <asp:Label ID="ScreeningIDLabel1" runat="server" 
                    Text='<%# Eval("ScreeningID") %>' />
                <br />
                Screening Date:
                <asp:TextBox ID="ScreeningDateTextBox" runat="server" 
                    Text='<%# Bind("ScreeningDate") %>' />
               <asp:CalendarExtender ID="CalendarExtender200" TargetControlID="ScreeningDateTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ScreeningDateTextBox" Display="Dynamic" 
                    ErrorMessage="Processed Date is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                Processed By:
                <asp:TextBox ID="ProcessedByTextBox" runat="server" 
                    Text='<%# Bind("ProcessedBy") %>' />
                <br />
                Processed on Date:
                <asp:TextBox ID="ProcessedOnDateTextBox" runat="server" 
                    Text='<%# Bind("ProcessedOnDate") %>' />
               <asp:CalendarExtender ID="CalendarExtender100" TargetControlID="ProcessedOnDateTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="ProcessedOnDateTextBox" Display="Dynamic" 
                    ErrorMessage="Processed Date is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                Application Fee Amount:
                <asp:TextBox ID="ApplicationFeeAmountTextBox" runat="server" 
                    Text='<%# Bind("ApplicationFeeAmount") %>' />
                <br />
                Application Fee Date:
                <asp:TextBox ID="ApplicationFeeDateTextBox" runat="server" 
                    Text='<%# Bind("ApplicationFeeDate") %>' />
                   <asp:CalendarExtender ID="CalendarExtender6" TargetControlID="ApplicationFeeDateTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ApplicationFeeDateTextBox" Display="Dynamic" 
                    ErrorMessage="Application Fee Date is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                Deposit Amount Recieved:
                <asp:TextBox ID="DepAmountRecievedTextBox" runat="server" 
                    Text='<%# Bind("DepAmountRecieved") %>' />
                <br />
                Deposit Date Recieved:
                <asp:TextBox ID="DepDateRecievedTextBox" runat="server" 
                    Text='<%# Bind("DepDateRecieved") %>' />
                   <asp:CalendarExtender ID="CalendarExtende3" TargetControlID="DepDateRecievedTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DepDateRecievedTextBox" Display="Dynamic" 
                    ErrorMessage="Deposit Date is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                Background Complete:
                <asp:CheckBox ID="BackgroundCompleteCheckBox" runat="server" 
                    Checked='<%# Bind("BackgroundComplete") %>' />
                <br />
                Credit Report:
                <asp:CheckBox ID="CreditReportCheckBox" runat="server" 
                    Checked='<%# Bind("CreditReport") %>' />
                <br />
                Proof of Income:
                <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Bind("ProofOfIncome") %>' />
                <br />
                Employer Verification:
                <asp:CheckBox ID="EmployerVerificationCheckBox" runat="server" 
                    Checked='<%# Bind("EmployerVerification") %>' />
                <br />
                Landlord Reference:
                <asp:CheckBox ID="LandlordReferenceCheckBox" runat="server" 
                    Checked='<%# Bind("LandlordReference") %>' />
                <br />
                Past Tenant:
                <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Bind("PastTenant") %>' />
                <br />
                Approved:
                <asp:CheckBox ID="ApprovedCheckBox" runat="server" 
                    Checked='<%# Bind("Approved") %>' />
                <br />
                Reviewed By:
                <asp:TextBox ID="ReviewedByTextBox" runat="server" 
                    Text='<%# Bind("ReviewedBy") %>' />
                <br />
                Classification:
                <asp:TextBox ID="ClassificationTextBox" runat="server" 
                    Text='<%# Bind("Classification") %>' />
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
                ApplicationFeeAmount:
                <asp:TextBox ID="ApplicationFeeAmountTextBox" runat="server" 
                    Text='<%# Bind("ApplicationFeeAmount") %>' />
                <br />
                ApplicationFeeDate:
                <asp:TextBox ID="ApplicationFeeDateTextBox" runat="server" 
                    Text='<%# Bind("ApplicationFeeDate") %>' />
                <br />
                DepAmountRecieved:
                <asp:TextBox ID="DepAmountRecievedTextBox" runat="server" 
                    Text='<%# Bind("DepAmountRecieved") %>' />
                <br />
                DepDateRecieved:
                <asp:TextBox ID="DepDateRecievedTextBox" runat="server" 
                    Text='<%# Bind("DepDateRecieved") %>' />
                <br />
                BackgroundComplete:
                <asp:CheckBox ID="BackgroundCompleteCheckBox" runat="server" 
                    Checked='<%# Bind("BackgroundComplete") %>' />
                <br />
                CreditReport:
                <asp:CheckBox ID="CreditReportCheckBox" runat="server" 
                    Checked='<%# Bind("CreditReport") %>' />
                <br />
                ProofOfIncome:
                <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Bind("ProofOfIncome") %>' />
                <br />
                EmployerVerification:
                <asp:CheckBox ID="EmployerVerificationCheckBox" runat="server" 
                    Checked='<%# Bind("EmployerVerification") %>' />
                <br />
                LandlordReference:
                <asp:CheckBox ID="LandlordReferenceCheckBox" runat="server" 
                    Checked='<%# Bind("LandlordReference") %>' />
                <br />
                PastTenant:
                <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Bind("PastTenant") %>' />
                <br />
                Approved:
                <asp:CheckBox ID="ApprovedCheckBox" runat="server" 
                    Checked='<%# Bind("Approved") %>' />
                <br />
                ReviewedBy:
                <asp:TextBox ID="ReviewedByTextBox" runat="server" 
                    Text='<%# Bind("ReviewedBy") %>' />
                <br />
                Classification:
                <asp:TextBox ID="ClassificationTextBox" runat="server" 
                    Text='<%# Bind("Classification") %>' />
                <br />
                ProcessedBy:
                <asp:TextBox ID="ProcessedByTextBox" runat="server" 
                    Text='<%# Bind("ProcessedBy") %>' />
                <br />
                ProcessedOnDate:
                <asp:TextBox ID="ProcessedOnDateTextBox" runat="server" 
                    Text='<%# Bind("ProcessedOnDate") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
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
				
				Screening ID:
                <asp:Label ID="ScreeningIDLabel" runat="server" 
                    Text='<%# Eval("ScreeningID") %>' />
                <br />
                Screening Completion Date:
                <asp:Label ID="ScreeningDateLabel" runat="server" 
                    Text='<%# Bind("ScreeningDate") %>' />
                <br />
                Processed By:
                <asp:Label ID="ProcessedByLabel" runat="server" 
                    Text='<%# Bind("ProcessedBy") %>' />
                <br />
                Processed on Date:
                <asp:Label ID="ProcessedOnDateLabel" runat="server" 
                    Text='<%# Bind("ProcessedOnDate") %>' />
                <br />
                Application Fee Amount:
                <asp:Label ID="ApplicationFeeAmountLabel" runat="server" 
                    Text='<%# Bind("ApplicationFeeAmount") %>' />
                <br />
                Application Fee Recieved Date:
                <asp:Label ID="ApplicationFeeDateLabel" runat="server" 
                    Text='<%# Bind("ApplicationFeeDate") %>' />
                <br />
                Deposit Amount Recieved:
                <asp:Label ID="DepAmountRecievedLabel" runat="server" 
                    Text='<%# Bind("DepAmountRecieved") %>' />
                <br />
                Deposit Date Recieved:
                <asp:Label ID="DepDateRecievedLabel" runat="server" 
                    Text='<%# Bind("DepDateRecieved") %>' />
                <br />
                Background Check Complete:
                <asp:CheckBox ID="BackgroundCompleteCheckBox" runat="server" 
                    Checked='<%# Bind("BackgroundComplete") %>' Enabled="false" />
                <br />
                Credit Report:
                <asp:CheckBox ID="CreditReportCheckBox" runat="server" 
                    Checked='<%# Bind("CreditReport") %>' Enabled="false" />
                <br />
                Proof of Income:
                <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Bind("ProofOfIncome") %>' Enabled="false" />
                <br />
                Employer Verification:
                <asp:CheckBox ID="EmployerVerificationCheckBox" runat="server" 
                    Checked='<%# Bind("EmployerVerification") %>' Enabled="false" />
                <br />
                Landlord Reference:
                <asp:CheckBox ID="LandlordReferenceCheckBox" runat="server" 
                    Checked='<%# Bind("LandlordReference") %>' Enabled="false" />
                <br />
                Past Tenant:
                <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Bind("PastTenant") %>' Enabled="false" />
                <br />
                Approved:
                <asp:CheckBox ID="ApprovedCheckBox" runat="server" 
                    Checked='<%# Bind("Approved") %>' Enabled="false" />
                <br />
                Reviewed By:
                <asp:Label ID="ReviewedByLabel" runat="server" 
                    Text='<%# Bind("ReviewedBy") %>' />
                <br />
                Classification:
                <asp:Label ID="ClassificationLabel" runat="server" 
                    Text='<%# Bind("Classification") %>' />
                <br />
                
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;
            </ItemTemplate>
        </asp:FormView>
    </p>
    <p>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            DeleteCommand="DELETE FROM [Screening] WHERE [ScreeningID] = @original_ScreeningID AND (([ScreeningDate] = @original_ScreeningDate) OR ([ScreeningDate] IS NULL AND @original_ScreeningDate IS NULL)) AND (([ApplicationFeeAmount] = @original_ApplicationFeeAmount) OR ([ApplicationFeeAmount] IS NULL AND @original_ApplicationFeeAmount IS NULL)) AND (([ApplicationFeeDate] = @original_ApplicationFeeDate) OR ([ApplicationFeeDate] IS NULL AND @original_ApplicationFeeDate IS NULL)) AND (([DepAmountRecieved] = @original_DepAmountRecieved) OR ([DepAmountRecieved] IS NULL AND @original_DepAmountRecieved IS NULL)) AND (([DepDateRecieved] = @original_DepDateRecieved) OR ([DepDateRecieved] IS NULL AND @original_DepDateRecieved IS NULL)) AND (([BackgroundComplete] = @original_BackgroundComplete) OR ([BackgroundComplete] IS NULL AND @original_BackgroundComplete IS NULL)) AND (([CreditReport] = @original_CreditReport) OR ([CreditReport] IS NULL AND @original_CreditReport IS NULL)) AND (([ProofOfIncome] = @original_ProofOfIncome) OR ([ProofOfIncome] IS NULL AND @original_ProofOfIncome IS NULL)) AND (([EmployerVerification] = @original_EmployerVerification) OR ([EmployerVerification] IS NULL AND @original_EmployerVerification IS NULL)) AND (([LandlordReference] = @original_LandlordReference) OR ([LandlordReference] IS NULL AND @original_LandlordReference IS NULL)) AND (([PastTenant] = @original_PastTenant) OR ([PastTenant] IS NULL AND @original_PastTenant IS NULL)) AND (([Approved] = @original_Approved) OR ([Approved] IS NULL AND @original_Approved IS NULL)) AND (([ReviewedBy] = @original_ReviewedBy) OR ([ReviewedBy] IS NULL AND @original_ReviewedBy IS NULL)) AND (([Classification] = @original_Classification) OR ([Classification] IS NULL AND @original_Classification IS NULL)) AND (([ProcessedBy] = @original_ProcessedBy) OR ([ProcessedBy] IS NULL AND @original_ProcessedBy IS NULL)) AND (([ProcessedOnDate] = @original_ProcessedOnDate) OR ([ProcessedOnDate] IS NULL AND @original_ProcessedOnDate IS NULL))" 
            InsertCommand="INSERT INTO [Screening] ([ScreeningDate], [ApplicationFeeAmount], [ApplicationFeeDate], [DepAmountRecieved], [DepDateRecieved], [BackgroundComplete], [CreditReport], [ProofOfIncome], [EmployerVerification], [LandlordReference], [PastTenant], [Approved], [ReviewedBy], [Classification], [ProcessedBy], [ProcessedOnDate], [UserInput], [inputDate]) VALUES (@ScreeningDate, @ApplicationFeeAmount, @ApplicationFeeDate, @DepAmountRecieved, @DepDateRecieved, @BackgroundComplete, @CreditReport, @ProofOfIncome, @EmployerVerification, @LandlordReference, @PastTenant, @Approved, @ReviewedBy, @Classification, @ProcessedBy, @ProcessedOnDate, @UserInput, @inputDate)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [ScreeningID], [ScreeningDate], [ApplicationFeeAmount], [ApplicationFeeDate], [DepAmountRecieved], [DepDateRecieved], [BackgroundComplete], [CreditReport], [ProofOfIncome], [EmployerVerification], [LandlordReference], [PastTenant], [Approved], [ReviewedBy], [Classification], [ProcessedBy], [ProcessedOnDate], [UserInput], [InputDate] FROM [Screening] WHERE ([ScreeningID] = @ScreeningID) ORDER BY [ScreeningID] DESC" 
            
            UpdateCommand="UPDATE [Screening] SET [ScreeningDate] = @ScreeningDate, [ApplicationFeeAmount] = @ApplicationFeeAmount, [ApplicationFeeDate] = @ApplicationFeeDate, [DepAmountRecieved] = @DepAmountRecieved, [DepDateRecieved] = @DepDateRecieved, [BackgroundComplete] = @BackgroundComplete, [CreditReport] = @CreditReport, [ProofOfIncome] = @ProofOfIncome, [EmployerVerification] = @EmployerVerification, [LandlordReference] = @LandlordReference, [PastTenant] = @PastTenant, [Approved] = @Approved, [ReviewedBy] = @ReviewedBy, [Classification] = @Classification, [ProcessedBy] = @ProcessedBy, [ProcessedOnDate] = @ProcessedOnDate, [UserInput] = @UserInput, [InputDate] = @InputDate WHERE [ScreeningID] = @original_ScreeningID AND (([ScreeningDate] = @original_ScreeningDate) OR ([ScreeningDate] IS NULL AND @original_ScreeningDate IS NULL)) AND (([ApplicationFeeAmount] = @original_ApplicationFeeAmount) OR ([ApplicationFeeAmount] IS NULL AND @original_ApplicationFeeAmount IS NULL)) AND (([ApplicationFeeDate] = @original_ApplicationFeeDate) OR ([ApplicationFeeDate] IS NULL AND @original_ApplicationFeeDate IS NULL)) AND (([DepAmountRecieved] = @original_DepAmountRecieved) OR ([DepAmountRecieved] IS NULL AND @original_DepAmountRecieved IS NULL)) AND (([DepDateRecieved] = @original_DepDateRecieved) OR ([DepDateRecieved] IS NULL AND @original_DepDateRecieved IS NULL)) AND (([BackgroundComplete] = @original_BackgroundComplete) OR ([BackgroundComplete] IS NULL AND @original_BackgroundComplete IS NULL)) AND (([CreditReport] = @original_CreditReport) OR ([CreditReport] IS NULL AND @original_CreditReport IS NULL)) AND (([ProofOfIncome] = @original_ProofOfIncome) OR ([ProofOfIncome] IS NULL AND @original_ProofOfIncome IS NULL)) AND (([EmployerVerification] = @original_EmployerVerification) OR ([EmployerVerification] IS NULL AND @original_EmployerVerification IS NULL)) AND (([LandlordReference] = @original_LandlordReference) OR ([LandlordReference] IS NULL AND @original_LandlordReference IS NULL)) AND (([PastTenant] = @original_PastTenant) OR ([PastTenant] IS NULL AND @original_PastTenant IS NULL)) AND (([Approved] = @original_Approved) OR ([Approved] IS NULL AND @original_Approved IS NULL)) AND (([ReviewedBy] = @original_ReviewedBy) OR ([ReviewedBy] IS NULL AND @original_ReviewedBy IS NULL)) AND (([Classification] = @original_Classification) OR ([Classification] IS NULL AND @original_Classification IS NULL)) AND (([ProcessedBy] = @original_ProcessedBy) OR ([ProcessedBy] IS NULL AND @original_ProcessedBy IS NULL)) AND (([ProcessedOnDate] = @original_ProcessedOnDate) OR ([ProcessedOnDate] IS NULL AND @original_ProcessedOnDate IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ScreeningID" Type="Int64" />
                <asp:Parameter DbType="DateTime" Name="original_ScreeningDate" />
                <asp:Parameter Name="original_ApplicationFeeAmount" Type="String" />
                <asp:Parameter Name="original_ApplicationFeeDate" DbType="DateTime" />
                <asp:Parameter Name="original_DepAmountRecieved" Type="String" />
                <asp:Parameter DbType="DateTime" Name="original_DepDateRecieved" />
                <asp:Parameter Name="original_BackgroundComplete" Type="Boolean" />
                <asp:Parameter Name="original_CreditReport" Type="Boolean" />
                <asp:Parameter Name="original_ProofOfIncome" Type="Boolean" />
                <asp:Parameter Name="original_EmployerVerification" Type="Boolean" />
                <asp:Parameter Name="original_LandlordReference" Type="Boolean" />
                <asp:Parameter Name="original_PastTenant" Type="Boolean" />
                <asp:Parameter Name="original_Approved" Type="Boolean" />
                <asp:Parameter Name="original_ReviewedBy" Type="String" />
                <asp:Parameter Name="original_Classification" Type="String" />
                <asp:Parameter Name="original_ProcessedBy" Type="String" />
                <asp:Parameter DbType="DateTime" Name="original_ProcessedOnDate" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="DateTime" Name="ScreeningDate" />
                <asp:Parameter Name="ApplicationFeeAmount" Type="String" />
                <asp:Parameter Name="ApplicationFeeDate" DbType="DateTime" />
                <asp:Parameter Name="DepAmountRecieved" Type="String" />
                <asp:Parameter DbType="DateTime" Name="DepDateRecieved" />
                <asp:Parameter Name="BackgroundComplete" Type="Boolean" />
                <asp:Parameter Name="CreditReport" Type="Boolean" />
                <asp:Parameter Name="ProofOfIncome" Type="Boolean" />
                <asp:Parameter Name="EmployerVerification" Type="Boolean" />
                <asp:Parameter Name="LandlordReference" Type="Boolean" />
                <asp:Parameter Name="PastTenant" Type="Boolean" />
                <asp:Parameter Name="Approved" Type="Boolean" />
                <asp:Parameter Name="ReviewedBy" Type="String" />
                <asp:Parameter Name="Classification" Type="String" />
                <asp:Parameter Name="ProcessedBy" Type="String" />
                <asp:Parameter DbType="DateTime" Name="ProcessedOnDate" />
				<asp:Parameter Name="userInput" Type="String" />
                <asp:Parameter Name="inputDate" DbType="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSelectApplicant" DefaultValue="1" Name="ScreeningID" 
                    PropertyName="SelectedValue" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter DbType="DateTime" Name="ScreeningDate" />
                <asp:Parameter Name="ApplicationFeeAmount" Type="String" />
                <asp:Parameter DbType="DateTime" Name="ApplicationFeeDate" />
                <asp:Parameter Name="DepAmountRecieved" Type="String" />
                <asp:Parameter Name="DepDateRecieved" DbType="DateTime" />
                <asp:Parameter Name="BackgroundComplete" Type="Boolean" />
                <asp:Parameter Name="CreditReport" Type="Boolean" />
                <asp:Parameter Name="ProofOfIncome" Type="Boolean" />
                <asp:Parameter Name="EmployerVerification" Type="Boolean" />
                <asp:Parameter Name="LandlordReference" Type="Boolean" />
                <asp:Parameter Name="PastTenant" Type="Boolean" />
                <asp:Parameter Name="Approved" Type="Boolean" />
                <asp:Parameter Name="ReviewedBy" Type="String" />
                <asp:Parameter Name="Classification" Type="String" />
                <asp:Parameter Name="ProcessedBy" Type="String" />
                <asp:Parameter DbType="DateTime" Name="ProcessedOnDate" />
                <asp:Parameter Name="original_ScreeningID" Type="Int64" />
                <asp:Parameter DbType="DateTime" Name="original_ScreeningDate" />
                <asp:Parameter Name="original_ApplicationFeeAmount" Type="String" />
                <asp:Parameter Name="original_ApplicationFeeDate" DbType="DateTime" />
                <asp:Parameter Name="original_DepAmountRecieved" Type="String" />
                <asp:Parameter Name="original_DepDateRecieved" DbType="DateTime" />
                <asp:Parameter Name="original_BackgroundComplete" Type="Boolean" />
                <asp:Parameter Name="original_CreditReport" Type="Boolean" />
                <asp:Parameter Name="original_ProofOfIncome" Type="Boolean" />
                <asp:Parameter Name="original_EmployerVerification" Type="Boolean" />
                <asp:Parameter Name="original_LandlordReference" Type="Boolean" />
                <asp:Parameter Name="original_PastTenant" Type="Boolean" />
                <asp:Parameter Name="original_Approved" Type="Boolean" />
                <asp:Parameter Name="original_ReviewedBy" Type="String" />
                <asp:Parameter Name="original_Classification" Type="String" />
                <asp:Parameter Name="original_ProcessedBy" Type="String" />
                <asp:Parameter DbType="DateTime" Name="original_ProcessedOnDate" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>