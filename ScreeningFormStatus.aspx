<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="ScreeningFormStatus.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style2
        {
            width: 539px;
        }
        .style3
        {
            width: 425px;
        }
        .style4
        {
            font-weight: normal;
        }
    </style>
    <script type="text/javascript" language="javascript">
        function ConfirmOnDelete(item) {
            if (confirm("Are you sure to delete: " + item + "?") == true)
                return true;
            else
                return false;
        }
</script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Step 5 Verify Application</h2>
    <p>
      <asp:DropDownList ID="ddlSelectApplicant" runat="server" AutoPostBack="True" 
            DataSourceID="sqlDSddlApplicant" DataTextField="CombinedName"
            DataValueField="ScreeningID" Height="18px" Width="415px">
        </asp:DropDownList>
        <asp:Button ID="btnRefresh" runat="server" 
            PostBackUrl="~/ScreeningFormStatus.aspx" Text="Refresh Page" />
        <asp:SqlDataSource ID="sqlDSddlApplicant" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            SelectCommand="select lastname, grossSalary, applicant.screeningID, lastname+' '+CAST(applicant.screeningID as VarChar(255))+' '+CAST(screening.screeningdate as VarChar(10)) as CombinedName from applicant, screening where grossSalary = (select max(grossSalary) from applicant as f where f.screeningID = applicant.screeningID) AND applicant.screeningid = screening.screeningid AND (screening.ScreeningStatus = '4' OR screening.ScreeningStatus IS NULL) AND screening.propertyID is not Null">
        </asp:SqlDataSource>
    </p>
     <asp:Panel ID="Panel1" runat="server" Visible="False">
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/NewApplicant.aspx">Click Here to Leave this Page and Enter a New Application</asp:LinkButton>
    </p>

  
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
                <asp:CheckBoxField DataField="approved" HeaderText="Approved" 
                    SortExpression="Approved" />
                <asp:BoundField DataField="DepAmountRecieved" HeaderText="DepAmountRecieved" 
                    SortExpression="DepAmountRecieved"/>   

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
    SelectCommand="SELECT [ScreeningID], [CriminalConviction], [CriminalConvictionReason], [TenantIsEmployee], [DateOfDesiredMoveIn], [NumOfOccupants], [RequiredNumBed], [RequiredNumBath], [RequiredWD], [TargetRent], [OtherDesiredFeatures], [BrokenLease], [nonHumanOccupants], [numnonrelated], [spouseIncluded], [propertyID], [Approved], [DepAmountRecieved] FROM [Screening] WHERE ([ScreeningID] = @ScreeningID)">
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
         <hr />
        <div style="float:left; width:700px; position:relative; border-right:thick solid #231F20;">
            <asp:Panel ID="pSubset1" runat="server">
         
        <p>
            SUBSTEP 1:&nbsp;
            <asp:LinkButton ID="LinkButton5" runat="server">Complete Key Processing Information Below</asp:LinkButton>
        </p>
        <table>
            <tr>
                <td align="right" 
            class="style3">
                    Pay for Entire Lease:</td>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="entireLeaseCheckbox" 
                runat="server" Font-Bold="False" />
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Select Length of Lease:"></asp:Label>
                </td>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlLeaseTerms" 
                runat="server">
                        <asp:ListItem Value="">Lease Terms</asp:ListItem>
                        <asp:ListItem Value="1">3 - 6 Months</asp:ListItem>
                        <asp:ListItem Value="2">7 - 12 Months</asp:ListItem>
                        <asp:ListItem Value="3">12 Months</asp:ListItem>
                        <asp:ListItem Value="4">Greater than 12 Months</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">
                    Rent Washer Dryer:</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                </td>
            </tr>
        </table>
        <p>
            <asp:FormView ID="FormView3" runat="server" DataKeyNames="ScreeningID" 
            DataSourceID="SQLDataScreening1" DefaultMode="Edit" Font-Bold="False">
                <EditItemTemplate>
                    <table>
                        
                        <tr>
                            <td align="right">
                                Tenant Is Employee:</td>
                            <td>
                                <asp:CheckBox ID="TenantIsEmployeeCheckBox" runat="server" 
                    Checked='<% # Bind("TenantIsEmployee") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Proof Of Income:</td>
                            <td>
                                <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Bind("ProofOfIncome") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Income Different on Primary:
                            </td>
                            <td>
                                <asp:CheckBox ID="IncomeDifferentCheckBox" runat="server" /> IF YES, enter new amount
                                <asp:TextBox ID="incomeDifferentTextBox" runat="server" 
                    Text='<%# Bind("incomeDifferent") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                               <b>Non-Human</b> Occupants:
                            </td>
                            <td>
                                <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                        Checked='<%# Bind("nonHumanOccupants") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Number of <b>Non-Human:</b></td>
                            <td>
                                <asp:DropDownList ID="ddlNumOcc" runat="server">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem Value="1"></asp:ListItem>
                                    <asp:ListItem Value="2"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Pet is above weight limit (If unsure, please check the latest policy guidelines):
                            </td>
                            <td>
                                <asp:CheckBox ID="PetWeightLimitCheckBox" runat="server" />
                            </td>
                        </tr>
                        <tr>
                           <!-- <td align="right">
                                Past Tenant:</td>-->
                            <td>
                                <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Bind("PastTenant") %>' Visible="False" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Renewal of Previous Lease:
                            </td>
                            <td>
                                <asp:CheckBox ID="RenewalCheckBox" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Number of Nonrelated Occupants Not including Primary and Co-Tenant:</td>
                            <td>
                                <asp:DropDownList ID="ddlNumOcc0" runat="server" 
                    onselectedindexchanged="ddlNumOcc0_SelectedIndexChanged">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem Value="1"></asp:ListItem>
                                    <asp:ListItem Value="2"></asp:ListItem>
                                    <asp:ListItem Value="3"></asp:ListItem>
                                    <asp:ListItem Value="4"></asp:ListItem>
                                    <asp:ListItem Value="5"></asp:ListItem>
                                    <asp:ListItem Value="6"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="numnonrelatedTextBox" runat="server" Enabled="False" 
                    Text='<%# Bind("numnonrelated") %>' Visible="False" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update Current Screening Form" />
                                &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <InsertItemTemplate>
                    CreditScore:
                    <asp:TextBox ID="CreditScoreTextBox" runat="server" 
                    Text='<%# Bind("CreditScore") %>' />
                    <br />
                    TenantIsEmployee:
                    <asp:CheckBox ID="TenantIsEmployeeCheckBox" runat="server" 
                    Checked='<%# Bind("TenantIsEmployee") %>' />
                    <br />
                    PropertyID:
                    <asp:TextBox ID="PropertyIDTextBox" runat="server" 
                    Text='<%# Bind("PropertyID") %>' />
                    <br />
                    ProofOfIncome:
                    <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Bind("ProofOfIncome") %>' />
                    <br />
                    incomeDifferent:
                    <asp:TextBox ID="incomeDifferentTextBox" runat="server" 
                    Text='<%# Bind("incomeDifferent") %>' />
                    <br />
                    nonHumanOccupants:
                    <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                    Checked='<%# Bind("nonHumanOccupants") %>' />
                    <br />
                    PastTenant:
                    <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Bind("PastTenant") %>' />
                    <br />
                    numnonrelated:
                    <asp:TextBox ID="numnonrelatedTextBox" runat="server" 
                    Text='<%# Bind("numnonrelated") %>' />
                    <br />
                    spouseIncluded:
                    <asp:CheckBox ID="spouseIncludedCheckBox" runat="server" 
                    Checked='<%# Bind("spouseIncluded") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ScreeningID:
                    <asp:Label ID="ScreeningIDLabel" runat="server" 
                    Text='<%# Eval("ScreeningID") %>' />
                    <br />
                    CreditScore:
                    <asp:Label ID="CreditScoreLabel" runat="server" 
                    Text='<%# Bind("CreditScore") %>' />
                    <br />
                    TenantIsEmployee:
                    <asp:CheckBox ID="TenantIsEmployeeCheckBox" runat="server" 
                    Checked='<%# Bind("TenantIsEmployee") %>' Enabled="false" />
                    <br />
                    PropertyID:
                    <asp:Label ID="PropertyIDLabel" runat="server" 
                    Text='<%# Bind("PropertyID") %>' />
                    <br />
                    ProofOfIncome:
                    <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Bind("ProofOfIncome") %>' Enabled="false" />
                    <br />
                    incomeDifferent:
                    <asp:Label ID="incomeDifferentLabel" runat="server" 
                    Text='<%# Bind("incomeDifferent") %>' />
                    <br />
                    nonHumanOccupants:
                    <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                    Checked='<%# Bind("nonHumanOccupants") %>' Enabled="false" />
                    <br />
                    PastTenant:
                    <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Bind("PastTenant") %>' Enabled="false" />
                    <br />
                    numnonrelated:
                    <asp:Label ID="numnonrelatedLabel" runat="server" 
                    Text='<%# Bind("numnonrelated") %>' />
                    <br />
                    spouseIncluded:
                    <asp:CheckBox ID="spouseIncludedCheckBox" runat="server" 
                    Checked='<%# Bind("spouseIncluded") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
          
            <asp:SqlDataSource ID="SQLDataScreening1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            DeleteCommand="DELETE FROM [Screening] WHERE [ScreeningID] = @ScreeningID" 
            InsertCommand="INSERT INTO [Screening] ([CreditScore], [TenantIsEmployee], [PropertyID], [ProofOfIncome], [incomeDifferent], [nonHumanOccupants], [PastTenant], [numnonrelated], [spouseIncluded]) VALUES (@CreditScore, @TenantIsEmployee, @PropertyID, @ProofOfIncome, @incomeDifferent, @nonHumanOccupants, @PastTenant, @numnonrelated, @spouseIncluded)" 
            SelectCommand="SELECT [ScreeningID], [CreditScore], [TenantIsEmployee], [PropertyID], [ProofOfIncome], [incomeDifferent], [nonHumanOccupants], [PastTenant], [numnonrelated], [spouseIncluded] FROM [Screening] WHERE ([ScreeningID] = @ScreeningID)" 
            
            
                UpdateCommand="UPDATE [Screening] SET [TenantIsEmployee] = @TenantIsEmployee, [ProofOfIncome] = @ProofOfIncome, [incomeDifferent] = @incomeDifferent, [nonHumanOccupants] = @nonHumanOccupants, [PastTenant] = @PastTenant, [numnonrelated] = @numnonrelated WHERE [ScreeningID] = @ScreeningID">
                <DeleteParameters>
                    <asp:Parameter Name="ScreeningID" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CreditScore" Type="Int16" />
                    <asp:Parameter Name="TenantIsEmployee" Type="Boolean" />
                    <asp:Parameter Name="PropertyID" Type="Int64" />
                    <asp:Parameter Name="ProofOfIncome" Type="Boolean" />
                    <asp:Parameter Name="incomeDifferent" Type="Decimal" />
                    <asp:Parameter Name="nonHumanOccupants" Type="Boolean" />
                    <asp:Parameter Name="PastTenant" Type="Boolean" />
                    <asp:Parameter Name="numnonrelated" Type="String" />
                    <asp:Parameter Name="spouseIncluded" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="ScreeningID" SessionField="newscreeningid" 
                    Type="Int64" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenantIsEmployee" Type="Boolean" />
                    <asp:Parameter Name="ProofOfIncome" Type="Boolean" />
                    <asp:Parameter Name="incomeDifferent" Type="Decimal" />
                    <asp:Parameter Name="nonHumanOccupants" Type="Boolean" />
                    <asp:Parameter Name="PastTenant" Type="Boolean" />
                    <asp:Parameter Name="numnonrelated" Type="String" />
                    <asp:Parameter Name="ScreeningID" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    
      </asp:Panel>
      <asp:Panel ID="pSubset2" runat="server" Visible="False">
        <b>SUBSTEP 2:</b>
        
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True">Enter Key Leasing Information for Applicant to Continue</asp:LinkButton>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1" DataKeyNames="leaseID" 
            DataSourceID="SqlDataSource2" GridLines="None" Visible="False">
            <Columns>
                <asp:BoundField DataField="leaseID" HeaderText="leaseID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="leaseID" />
                <asp:BoundField DataField="screeningID" HeaderText="screeningID" 
                    SortExpression="screeningID" />
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
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="leaseID" 
            DataSourceID="LeaseInputSQL" DefaultMode="Edit">
            <EditItemTemplate>
                <table>
                    <tr>
                        <td align="right">
                            leaseID:
                            <br />
                        </td>
                        <td>
                            <asp:Label ID="leaseIDLabel1" runat="server" Text='<%# Eval("leaseID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Property ID:
                        </td>
                        <td>
                            <asp:TextBox ID="propertyIDTextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("propertyID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Property Name:</td>
                        <td>
                            <asp:TextBox ID="propertyNameTextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("propertyName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Gas Included:
                            <br />
                            Water Included:
                            <br />
                            Electric Included:
                        </td>
                        <td>
                            <asp:CheckBox ID="gasUtilitiesCheckBox" runat="server" 
                                Checked='<%# Bind("gasUtilities") %>' Enabled="False" />
                            <br />
                            <asp:CheckBox ID="waterUtilitiesCheckBox" runat="server" 
                                Checked='<%# Bind("waterUtilities") %>' Enabled="False" />
                            <br />
                            <asp:CheckBox ID="electricUtilitiesCheckBox" runat="server" 
                                Checked='<%# Bind("electricUtilities") %>' Enabled="False" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Check to Include All Possible Utilities for the Property:</td>
                        <td>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Unit No:</td>
                        <td>
                            <asp:TextBox ID="unitNoTextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("unitNo") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Market Base Rent A:</td>
                        <td>
                            <asp:TextBox ID="MarketBaseRentATextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("MarketBaseRentA") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Cost of Washer Dryer:
                        </td>
                        <td>
                            <asp:TextBox ID="WasherDryerBTextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("WasherDryerB") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Extra Occ Cost:</td>
                        <td>
                            <asp:TextBox ID="ExtraOccCTextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("ExtraOccC") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Utilities Base:
                        </td>
                        <td>
                            <asp:TextBox ID="UtilitiesBaseDTextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("UtilitiesBaseD") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Utilities Extra:
                        </td>
                        <td>
                            <asp:TextBox ID="UtilitiesExtraTextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("UtilitiesExtra") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            MonthLeasePremiumG:</td>
                        <td>
                            <asp:TextBox ID="MonthLeasePremiumGTextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("MonthLeasePremiumG") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            MonthLeasePremiumG2:</td>
                        <td>
                            <asp:TextBox ID="MonthLeasePremiumG2TextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("MonthLeasePremiumG2") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Senior Disc I:</td>
                        <td>
                            <asp:TextBox ID="SeniorDiscITextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("SeniorDiscI") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Multi Year I:</td>
                        <td>
                            <asp:TextBox ID="MultiYearITextBox" runat="server" Enabled="False" 
                                Text='<%# Bind("MultiYearI") %>' />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Button ID="UpdateButton" runat="server" CausesValidation="False" 
                                CommandName="Update" Text="Save Leasing Information" />
                        </td>
                        <td>
                            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                propertyID:
                <asp:TextBox ID="propertyIDTextBox" runat="server" 
                    Text='<%# Bind("propertyID") %>' />
                <br />
                propertyName:
                <asp:TextBox ID="propertyNameTextBox" runat="server" 
                    Text='<%# Bind("propertyName") %>' />
                <br />
                leaseBeginDate:
                <asp:TextBox ID="leaseBeginDateTextBox" runat="server" 
                    Text='<%# Bind("leaseBeginDate") %>' />
                <br />
                leaseEndDate:
                <asp:TextBox ID="leaseEndDateTextBox" runat="server" 
                    Text='<%# Bind("leaseEndDate") %>' />
                <br />
                gasUtilities:
                <asp:CheckBox ID="gasUtilitiesCheckBox" runat="server" 
                    Checked='<%# Bind("gasUtilities") %>' />
                <br />
                unitNo:
                <asp:TextBox ID="unitNoTextBox" runat="server" Text='<%# Bind("unitNo") %>' />
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
                waterUtilities:
                <asp:CheckBox ID="waterUtilitiesCheckBox" runat="server" 
                    Checked='<%# Bind("waterUtilities") %>' />
                <br />
                UtilitiesExtra:
                <asp:TextBox ID="UtilitiesExtraTextBox" runat="server" 
                    Text='<%# Bind("UtilitiesExtra") %>' />
                <br />
                electricUtilities:
                <asp:CheckBox ID="electricUtilitiesCheckBox" runat="server" 
                    Checked='<%# Bind("electricUtilities") %>' />
                <br />
                MonthLeasePremiumG:
                <asp:TextBox ID="MonthLeasePremiumGTextBox" runat="server" 
                    Text='<%# Bind("MonthLeasePremiumG") %>' />
                <br />
                MonthLeasePremiumG2:
                <asp:TextBox ID="MonthLeasePremiumG2TextBox" runat="server" 
                    Text='<%# Bind("MonthLeasePremiumG2") %>' />
                <br />
                SeniorDiscI:
                <asp:TextBox ID="SeniorDiscITextBox" runat="server" 
                    Text='<%# Bind("SeniorDiscI") %>' />
                <br />
                MultiYearI:
                <asp:TextBox ID="MultiYearITextBox" runat="server" 
                    Text='<%# Bind("MultiYearI") %>' />
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
                propertyName:
                <asp:Label ID="propertyNameLabel" runat="server" 
                    Text='<%# Bind("propertyName") %>' />
                <br />
                leaseBeginDate:
                <asp:Label ID="leaseBeginDateLabel" runat="server" 
                    Text='<%# Bind("leaseBeginDate") %>' />
                <br />
                leaseEndDate:
                <asp:Label ID="leaseEndDateLabel" runat="server" 
                    Text='<%# Bind("leaseEndDate") %>' />
                <br />
                gasUtilities:
                <asp:CheckBox ID="gasUtilitiesCheckBox" runat="server" 
                    Checked='<%# Bind("gasUtilities") %>' Enabled="false" />
                <br />
                unitNo:
                <asp:Label ID="unitNoLabel" runat="server" Text='<%# Bind("unitNo") %>' />
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
                waterUtilities:
                <asp:CheckBox ID="waterUtilitiesCheckBox" runat="server" 
                    Checked='<%# Bind("waterUtilities") %>' Enabled="false" />
                <br />
                UtilitiesExtra:
                <asp:Label ID="UtilitiesExtraLabel" runat="server" 
                    Text='<%# Bind("UtilitiesExtra") %>' />
                <br />
                electricUtilities:
                <asp:CheckBox ID="electricUtilitiesCheckBox" runat="server" 
                    Checked='<%# Bind("electricUtilities") %>' Enabled="false" />
                <br />
                MonthLeasePremiumG:
                <asp:Label ID="MonthLeasePremiumGLabel" runat="server" 
                    Text='<%# Bind("MonthLeasePremiumG") %>' />
                <br />
                MonthLeasePremiumG2:
                <asp:Label ID="MonthLeasePremiumG2Label" runat="server" 
                    Text='<%# Bind("MonthLeasePremiumG2") %>' />
                <br />
                SeniorDiscI:
                <asp:Label ID="SeniorDiscILabel" runat="server" 
                    Text='<%# Bind("SeniorDiscI") %>' />
                <br />
                MultiYearI:
                <asp:Label ID="MultiYearILabel" runat="server" 
                    Text='<%# Bind("MultiYearI") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
   
   
    <asp:SqlDataSource ID="LeaseInputSQL" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
        DeleteCommand="DELETE FROM [LeaseForm] WHERE [leaseID] = @original_leaseID AND (([propertyID] = @original_propertyID) OR ([propertyID] IS NULL AND @original_propertyID IS NULL)) AND (([propertyName] = @original_propertyName) OR ([propertyName] IS NULL AND @original_propertyName IS NULL)) AND (([leaseBeginDate] = @original_leaseBeginDate) OR ([leaseBeginDate] IS NULL AND @original_leaseBeginDate IS NULL)) AND (([leaseEndDate] = @original_leaseEndDate) OR ([leaseEndDate] IS NULL AND @original_leaseEndDate IS NULL)) AND (([gasUtilities] = @original_gasUtilities) OR ([gasUtilities] IS NULL AND @original_gasUtilities IS NULL)) AND (([unitNo] = @original_unitNo) OR ([unitNo] IS NULL AND @original_unitNo IS NULL)) AND (([MarketBaseRentA] = @original_MarketBaseRentA) OR ([MarketBaseRentA] IS NULL AND @original_MarketBaseRentA IS NULL)) AND (([WasherDryerB] = @original_WasherDryerB) OR ([WasherDryerB] IS NULL AND @original_WasherDryerB IS NULL)) AND (([ExtraOccC] = @original_ExtraOccC) OR ([ExtraOccC] IS NULL AND @original_ExtraOccC IS NULL)) AND (([UtilitiesBaseD] = @original_UtilitiesBaseD) OR ([UtilitiesBaseD] IS NULL AND @original_UtilitiesBaseD IS NULL)) AND (([waterUtilities] = @original_waterUtilities) OR ([waterUtilities] IS NULL AND @original_waterUtilities IS NULL)) AND (([UtilitiesExtra] = @original_UtilitiesExtra) OR ([UtilitiesExtra] IS NULL AND @original_UtilitiesExtra IS NULL)) AND (([electricUtilities] = @original_electricUtilities) OR ([electricUtilities] IS NULL AND @original_electricUtilities IS NULL)) AND (([MonthLeasePremiumG] = @original_MonthLeasePremiumG) OR ([MonthLeasePremiumG] IS NULL AND @original_MonthLeasePremiumG IS NULL)) AND (([MonthLeasePremiumG2] = @original_MonthLeasePremiumG2) OR ([MonthLeasePremiumG2] IS NULL AND @original_MonthLeasePremiumG2 IS NULL)) AND (([SeniorDiscI] = @original_SeniorDiscI) OR ([SeniorDiscI] IS NULL AND @original_SeniorDiscI IS NULL)) AND (([MultiYearI] = @original_MultiYearI) OR ([MultiYearI] IS NULL AND @original_MultiYearI IS NULL))" 
        InsertCommand="INSERT INTO [LeaseForm] ([propertyID], [propertyName], [leaseBeginDate], [leaseEndDate], [gasUtilities], [unitNo], [MarketBaseRentA], [WasherDryerB], [ExtraOccC], [UtilitiesBaseD], [waterUtilities], [UtilitiesExtra], [electricUtilities], [MonthLeasePremiumG], [MonthLeasePremiumG2], [SeniorDiscI], [MultiYearI]) VALUES (@propertyID, @propertyName, @leaseBeginDate, @leaseEndDate, @gasUtilities, @unitNo, @MarketBaseRentA, @WasherDryerB, @ExtraOccC, @UtilitiesBaseD, @waterUtilities, @UtilitiesExtra, @electricUtilities, @MonthLeasePremiumG, @MonthLeasePremiumG2, @SeniorDiscI, @MultiYearI)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [leaseID], [propertyID], [propertyName], [leaseBeginDate], [leaseEndDate], [gasUtilities], [unitNo], [MarketBaseRentA], [WasherDryerB], [ExtraOccC], [UtilitiesBaseD], [waterUtilities], [UtilitiesExtra], [electricUtilities], [MonthLeasePremiumG], [MonthLeasePremiumG2], [SeniorDiscI], [MultiYearI] FROM [LeaseForm] WHERE ([screeningID] = @screeningID)" 
        
                UpdateCommand="UPDATE [LeaseForm] SET [propertyID] = @propertyID, [propertyName] = @propertyName, [gasUtilities] = @gasUtilities, [unitNo] = @unitNo, [MarketBaseRentA] = @MarketBaseRentA, [WasherDryerB] = @WasherDryerB, [ExtraOccC] = @ExtraOccC, [UtilitiesBaseD] = @UtilitiesBaseD, [waterUtilities] = @waterUtilities, [UtilitiesExtra] = @UtilitiesExtra, [electricUtilities] = @electricUtilities, [MonthLeasePremiumG] = @MonthLeasePremiumG, [MonthLeasePremiumG2] = @MonthLeasePremiumG2, [SeniorDiscI] = @SeniorDiscI, [MultiYearI] = @MultiYearI WHERE [leaseID] = @original_leaseID">
        <DeleteParameters>
            <asp:Parameter Name="original_leaseID" Type="Int64" />
            <asp:Parameter Name="original_propertyID" Type="Int64" />
            <asp:Parameter Name="original_propertyName" Type="String" />
            <asp:Parameter DbType="Date" Name="original_leaseBeginDate" />
            <asp:Parameter DbType="Date" Name="original_leaseEndDate" />
            <asp:Parameter Name="original_gasUtilities" Type="Boolean" />
            <asp:Parameter Name="original_unitNo" Type="String" />
            <asp:Parameter Name="original_MarketBaseRentA" Type="Decimal" />
            <asp:Parameter Name="original_WasherDryerB" Type="Decimal" />
            <asp:Parameter Name="original_ExtraOccC" Type="Decimal" />
            <asp:Parameter Name="original_UtilitiesBaseD" Type="Decimal" />
            <asp:Parameter Name="original_waterUtilities" Type="Boolean" />
            <asp:Parameter Name="original_UtilitiesExtra" Type="Decimal" />
            <asp:Parameter Name="original_electricUtilities" Type="Boolean" />
            <asp:Parameter Name="original_MonthLeasePremiumG" Type="Decimal" />
            <asp:Parameter Name="original_MonthLeasePremiumG2" Type="Decimal" />
            <asp:Parameter Name="original_SeniorDiscI" Type="Decimal" />
            <asp:Parameter Name="original_MultiYearI" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="propertyID" Type="Int64" />
            <asp:Parameter Name="propertyName" Type="String" />
            <asp:Parameter DbType="Date" Name="leaseBeginDate" />
            <asp:Parameter DbType="Date" Name="leaseEndDate" />
            <asp:Parameter Name="gasUtilities" Type="Boolean" />
            <asp:Parameter Name="unitNo" Type="String" />
            <asp:Parameter Name="MarketBaseRentA" Type="Decimal" />
            <asp:Parameter Name="WasherDryerB" Type="Decimal" />
            <asp:Parameter Name="ExtraOccC" Type="Decimal" />
            <asp:Parameter Name="UtilitiesBaseD" Type="Decimal" />
            <asp:Parameter Name="waterUtilities" Type="Boolean" />
            <asp:Parameter Name="UtilitiesExtra" Type="Decimal" />
            <asp:Parameter Name="electricUtilities" Type="Boolean" />
            <asp:Parameter Name="MonthLeasePremiumG" Type="Decimal" />
            <asp:Parameter Name="MonthLeasePremiumG2" Type="Decimal" />
            <asp:Parameter Name="SeniorDiscI" Type="Decimal" />
            <asp:Parameter Name="MultiYearI" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="screeningID" SessionField="newscreeningid" 
                Type="Int64" DefaultValue="" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="propertyID" Type="Int64" />
            <asp:Parameter Name="propertyName" Type="String" />
            <asp:Parameter Name="gasUtilities" Type="Boolean" />
            <asp:Parameter Name="unitNo" Type="String" />
            <asp:Parameter Name="MarketBaseRentA" Type="Decimal" />
            <asp:Parameter Name="WasherDryerB" Type="Decimal" />
            <asp:Parameter Name="ExtraOccC" Type="Decimal" />
            <asp:Parameter Name="UtilitiesBaseD" Type="Decimal" />
            <asp:Parameter Name="waterUtilities" Type="Boolean" />
            <asp:Parameter Name="UtilitiesExtra" Type="Decimal" />
            <asp:Parameter Name="electricUtilities" Type="Boolean" />
            <asp:Parameter Name="MonthLeasePremiumG" Type="Decimal" />
            <asp:Parameter Name="MonthLeasePremiumG2" Type="Decimal" />
            <asp:Parameter Name="SeniorDiscI" Type="Decimal" />
            <asp:Parameter Name="MultiYearI" Type="Decimal" />
            <asp:Parameter Name="original_leaseID" Type="Int64" />
            </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Panel>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
        SelectCommand="SELECT [leaseID], [screeningID] FROM [LeaseForm] WHERE ([screeningID] = @screeningID)">
            <SelectParameters>
            <asp:SessionParameter Name="ScreeningID" SessionField="newscreeningid" 
                Type="Int64" />
            </SelectParameters>
    </asp:SqlDataSource>
            <asp:Panel ID="pSubset3" runat="server" Visible="False">
           
       <b> SUBSTEP 3:&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server">Please complete the following information so the application can be reviewed</asp:LinkButton></b>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ScreeningID" 
            DataSourceID="SqlDataSource1" DefaultMode="Edit" Font-Bold="False">
            <EditItemTemplate>
                <table>
                    <tr>
                        <td align="right">
                            ScreeningID:
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" 
                        Text='<%# Eval("ScreeningID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Application Fee Amount:
                        </td>
                        <td>
                            <asp:TextBox ID="ApplicationFeeAmountTextBox" runat="server" 
                        Text='<%# Bind("ApplicationFeeAmount") %>' />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                 ControlToValidate="ApplicationFeeAmountTextBox" Display="Dynamic" 
                                 ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Application Fee Date:
                        </td>
                        <td>
                            <asp:TextBox ID="ApplicationFeeDateTextBox" runat="server" 
                        Text='<%# Bind("ApplicationFeeDate") %>' />
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                 TargetControlID="ApplicationFeeDateTextBox" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                 ControlToValidate="ApplicationFeeDateTextBox" Display="Dynamic" 
                                 ErrorMessage="Application Fee Date is Required." 
                            ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Deposit Amount Recieved:
                        </td>
                        <td>
                            <asp:TextBox ID="DepAmountRecievedTextBox" runat="server" 
                        Text='<%# Bind("DepAmountRecieved") %>' />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                 ControlToValidate="DepAmountRecievedTextBox" Display="Dynamic" 
                                 ErrorMessage="Dollar Amount Only" ValidationExpression="[0-9]+(\.[0-9][0-9]?)?" 
                                 ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Deposit Date Recieved:
                        </td>
                        <td>
                            <asp:TextBox ID="DepDateRecievedTextBox" runat="server" 
                        Text='<%# Bind("DepDateRecieved") %>' />
                            <asp:CalendarExtender ID="CalendarExtender2" runat="server" 
                                 TargetControlID="DepDateRecievedTextBox" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ControlToValidate="DepDateRecievedTextBox" Display="Dynamic" 
                                 ErrorMessage="Deposit Date is Required." 
                            ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Background Complete:&nbsp;
                        </td>
                        <td>
                            <asp:CheckBox ID="BackgroundCompleteCheckBox" runat="server" 
                        Checked='<%# Bind("BackgroundComplete") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Credit Report:</td>
                        <td>
                            <asp:CheckBox ID="CreditReportCheckBox" runat="server" 
                        Checked='<%# Bind("CreditReport") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Employer Verification:</td>
                        <td>
                            <asp:CheckBox ID="EmployerVerificationCheckBox" runat="server" 
                        Checked='<%# Bind("EmployerVerification") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Landlord Reference:</td>
                        <td>
                            <asp:CheckBox ID="LandlordReferenceCheckBox" runat="server" 
                    Checked='<%# Bind("LandlordReference") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Past Tenant:</td>
                        <td>
                            <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Bind("PastTenant") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <span class="style4"><b>Complete/Ready for Management:</b></span>
                        </td>
                        <td>
                            <asp:CheckBox ID="ApprovedCheckBox" runat="server" 
                    Checked='<%# Bind("Approved") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            screeningNotes:</td>
                        <td>
                            <asp:TextBox ID="screeningNotesTextBox" runat="server" 
                    Text='<%# Bind("screeningNotes") %>' TextMode="MultiLine"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Save Changes to Screening Form" />
                        </td>
                        <td>
                            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>
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
                UserInput:
                <asp:TextBox ID="UserInputTextBox" runat="server" 
                    Text='<%# Bind("UserInput") %>' />
                <br />
                InputDate:
                <asp:TextBox ID="InputDateTextBox" runat="server" 
                    Text='<%# Bind("InputDate") %>' />
                <br />
                incomeDifferent:
                <asp:TextBox ID="incomeDifferentTextBox" runat="server" 
                    Text='<%# Bind("incomeDifferent") %>' />
                <br />
                creditScore:
                <asp:TextBox ID="creditScoreTextBox" runat="server" 
                    Text='<%# Bind("creditScore") %>' />
                <br />
                Screening Notes:
                <asp:TextBox ID="screeningNotesTextBox" runat="server" 
                    Text='<%# Bind("screeningNotes") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ScreeningID:
                <asp:Label ID="ScreeningIDLabel" runat="server" 
                    Text='<%# Eval("ScreeningID") %>' />
                <br />
                ScreeningDate:
                <asp:Label ID="ScreeningDateLabel" runat="server" 
                    Text='<%# Bind("ScreeningDate") %>' />
                <br />
                ApplicationFeeAmount:
                <asp:Label ID="ApplicationFeeAmountLabel" runat="server" 
                    Text='<%# Bind("ApplicationFeeAmount") %>' />
                <br />
                ApplicationFeeDate:
                <asp:Label ID="ApplicationFeeDateLabel" runat="server" 
                    Text='<%# Bind("ApplicationFeeDate") %>' />
                <br />
                DepAmountRecieved:
                <asp:Label ID="DepAmountRecievedLabel" runat="server" 
                    Text='<%# Bind("DepAmountRecieved") %>' />
                <br />
                DepDateRecieved:
                <asp:Label ID="DepDateRecievedLabel" runat="server" 
                    Text='<%# Bind("DepDateRecieved") %>' />
                <br />
                BackgroundComplete:
                <asp:CheckBox ID="BackgroundCompleteCheckBox" runat="server" 
                    Checked='<%# Bind("BackgroundComplete") %>' Enabled="false" />
                <br />
                CreditReport:
                <asp:CheckBox ID="CreditReportCheckBox" runat="server" 
                    Checked='<%# Bind("CreditReport") %>' Enabled="false" />
                <br />
                ProofOfIncome:
                <asp:CheckBox ID="ProofOfIncomeCheckBox" runat="server" 
                    Checked='<%# Bind("ProofOfIncome") %>' Enabled="false" />
                <br />
                EmployerVerification:
                <asp:CheckBox ID="EmployerVerificationCheckBox" runat="server" 
                    Checked='<%# Bind("EmployerVerification") %>' Enabled="false" />
                <br />
                LandlordReference:
                <asp:CheckBox ID="LandlordReferenceCheckBox" runat="server" 
                    Checked='<%# Bind("LandlordReference") %>' Enabled="false" />
                <br />
                PastTenant:
                <asp:CheckBox ID="PastTenantCheckBox" runat="server" 
                    Checked='<%# Bind("PastTenant") %>' Enabled="false" />
                <br />
                Approved:
                <asp:CheckBox ID="ApprovedCheckBox" runat="server" 
                    Checked='<%# Bind("Approved") %>' Enabled="false" />
                <br />
                ReviewedBy:
                <asp:Label ID="ReviewedByLabel" runat="server" 
                    Text='<%# Bind("ReviewedBy") %>' />
                <br />
                Classification:
                <asp:Label ID="ClassificationLabel" runat="server" 
                    Text='<%# Bind("Classification") %>' />
                <br />
                ProcessedBy:
                <asp:Label ID="ProcessedByLabel" runat="server" 
                    Text='<%# Bind("ProcessedBy") %>' />
                <br />
                ProcessedOnDate:
                <asp:Label ID="ProcessedOnDateLabel" runat="server" 
                    Text='<%# Bind("ProcessedOnDate") %>' />
                <br />
                UserInput:
                <asp:Label ID="UserInputLabel" runat="server" Text='<%# Bind("UserInput") %>' />
                <br />
                InputDate:
                <asp:Label ID="InputDateLabel" runat="server" Text='<%# Bind("InputDate") %>' />
                <br />
                incomeDifferent:
                <asp:Label ID="incomeDifferentLabel" runat="server" 
                     Text='<%# Bind("incomeDifferent") %>' />
                <br />
                creditScore:
                <asp:Label ID="creditScoreLabel" runat="server" 
                     Text='<%# Bind("creditScore") %>' />
                <br />
                screeningNotes:
                <asp:Label ID="screeningNotesLabel" runat="server" 
                     Text='<%# Bind("screeningNotes") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
  </asp:Panel>

  <hr />
            <asp:Panel ID="pInfo" runat="server" Visible="False">
           
        <asp:Label ID="Label1" runat="server" Text="Calculated Deposit:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" 
            
    Text="Click Here if Deposit Recieved and Property Should no Longer be Available" />

                <br />
                <br />

        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/PrintOutApplicationVerification.aspx" Target="_blank">Click here to print the Applicant Screening Verification</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/PrintOutApplicantScreeningProcedure.aspx" Target="_blank">Click here to print the Applicant Screening Procedures Report</asp:HyperLink>
        <br />
 
    <p>
        <asp:Label ID="Label4" runat="server" 
            Text="Click Refresh above to edit current applicant or Select a new applicant from the dropdown list!"></asp:Label>
                </p>
    <p>
    </asp:Panel>
      </div>
      </asp:Panel>
      <div style="float:left;" align="center"> 
<h2>The information entered on this screen will complete the information currently residing on the Rental Verification form below:</h2>
<br />
<br />
    <img src="Documents/screenprocedures.png" />
    </div>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            DeleteCommand="DELETE FROM [Screening] WHERE [ScreeningID] = @original_ScreeningID AND (([ScreeningDate] = @original_ScreeningDate) OR ([ScreeningDate] IS NULL AND @original_ScreeningDate IS NULL)) AND (([ApplicationFeeAmount] = @original_ApplicationFeeAmount) OR ([ApplicationFeeAmount] IS NULL AND @original_ApplicationFeeAmount IS NULL)) AND (([ApplicationFeeDate] = @original_ApplicationFeeDate) OR ([ApplicationFeeDate] IS NULL AND @original_ApplicationFeeDate IS NULL)) AND (([DepAmountRecieved] = @original_DepAmountRecieved) OR ([DepAmountRecieved] IS NULL AND @original_DepAmountRecieved IS NULL)) AND (([DepDateRecieved] = @original_DepDateRecieved) OR ([DepDateRecieved] IS NULL AND @original_DepDateRecieved IS NULL)) AND (([BackgroundComplete] = @original_BackgroundComplete) OR ([BackgroundComplete] IS NULL AND @original_BackgroundComplete IS NULL)) AND (([CreditReport] = @original_CreditReport) OR ([CreditReport] IS NULL AND @original_CreditReport IS NULL)) AND (([ProofOfIncome] = @original_ProofOfIncome) OR ([ProofOfIncome] IS NULL AND @original_ProofOfIncome IS NULL)) AND (([EmployerVerification] = @original_EmployerVerification) OR ([EmployerVerification] IS NULL AND @original_EmployerVerification IS NULL)) AND (([LandlordReference] = @original_LandlordReference) OR ([LandlordReference] IS NULL AND @original_LandlordReference IS NULL)) AND (([PastTenant] = @original_PastTenant) OR ([PastTenant] IS NULL AND @original_PastTenant IS NULL)) AND (([Approved] = @original_Approved) OR ([Approved] IS NULL AND @original_Approved IS NULL)) AND (([ReviewedBy] = @original_ReviewedBy) OR ([ReviewedBy] IS NULL AND @original_ReviewedBy IS NULL)) AND (([Classification] = @original_Classification) OR ([Classification] IS NULL AND @original_Classification IS NULL)) AND (([ProcessedBy] = @original_ProcessedBy) OR ([ProcessedBy] IS NULL AND @original_ProcessedBy IS NULL)) AND (([ProcessedOnDate] = @original_ProcessedOnDate) OR ([ProcessedOnDate] IS NULL AND @original_ProcessedOnDate IS NULL))" 
            InsertCommand="INSERT INTO [Screening] ([ScreeningDate], [ApplicationFeeAmount], [ApplicationFeeDate], [DepAmountRecieved], [DepDateRecieved], [BackgroundComplete], [CreditReport], [ProofOfIncome], [EmployerVerification], [LandlordReference], [PastTenant], [Approved], [ReviewedBy], [Classification], [ProcessedBy], [ProcessedOnDate], [UserInput], [inputDate]) VALUES (@ScreeningDate, @ApplicationFeeAmount, @ApplicationFeeDate, @DepAmountRecieved, @DepDateRecieved, @BackgroundComplete, @CreditReport, @ProofOfIncome, @EmployerVerification, @LandlordReference, @PastTenant, @Approved, @ReviewedBy, @Classification, @ProcessedBy, @ProcessedOnDate, @UserInput, @inputDate)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [ScreeningID], [ScreeningDate], [ApplicationFeeAmount], [ApplicationFeeDate], [DepAmountRecieved], [DepDateRecieved], [BackgroundComplete], [CreditReport], [ProofOfIncome], [EmployerVerification], [LandlordReference], [PastTenant], [Approved], [ReviewedBy], [Classification], [ProcessedBy], [ProcessedOnDate], [UserInput], [InputDate], [incomeDifferent], [creditScore], [screeningNotes] FROM [Screening] WHERE ([ScreeningID] = @ScreeningID) ORDER BY [ScreeningID] DESC" 
            
            UpdateCommand="UPDATE [Screening] SET [ApplicationFeeAmount] = @ApplicationFeeAmount, [ApplicationFeeDate] = @ApplicationFeeDate, [DepAmountRecieved] = @DepAmountRecieved, [DepDateRecieved] = @DepDateRecieved, [BackgroundComplete] = @BackgroundComplete, [CreditReport] = @CreditReport, [EmployerVerification] = @EmployerVerification, [LandlordReference] = @LandlordReference, [PastTenant] = @PastTenant, [Approved] = @Approved, [ReviewedBy] = @ReviewedBy, [Classification] = @Classification, [ProcessedBy] = @ProcessedBy, [EnteredBy] = @EnteredBy, [ProcessedOnDate] = @ProcessedOnDate, [UserInput] = @UserInput, [InputDate] = @InputDate, [screeningNotes]=@screeningNotes, [RequestLease]=@RequestLease WHERE [ScreeningID] = @original_ScreeningID">
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
                <asp:Parameter Name="EmployerVerification" Type="Boolean" />
                <asp:Parameter Name="LandlordReference" Type="Boolean" />
                <asp:Parameter Name="PastTenant" Type="Boolean" />
                <asp:Parameter Name="Approved" Type="Boolean" />
                <asp:Parameter Name="ReviewedBy" Type="String" />
                <asp:Parameter Name="Classification" Type="String" />
                <asp:Parameter Name="screeningNotes" Type="string" />
                <asp:Parameter Name="original_ScreeningID" Type="Int64" />
                <asp:Parameter DbType="DateTime" Name="original_ScreeningDate" />
               
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        
</asp:Content>