<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="FindCompatibleProperties.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %><asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Step 3 Find Property For New Applicant</h2>
    <p>
        <strong>Select an Screening Applicant to Find a Property:</strong></p>
    <p>
      <asp:DropDownList ID="ddlSelectApplicant" runat="server" AutoPostBack="True" 
            DataSourceID="sqlDSddlApplicant" DataTextField="CombinedName"
            DataValueField="ScreeningID" Height="18px" Width="415px">
        </asp:DropDownList>
        <asp:Button ID="btnRefresh" runat="server" 
            PostBackUrl="~/FindCompatibleProperties.aspx" Text="Refresh Page" />
        </p>
    <p>
        <strong>
        <asp:Label ID="lblInitialQ0" runat="server" 
            Text="Current Screening Form"></asp:Label>
        </strong>:</p>
    <asp:Panel ID="Panel1" runat="server">
    
    <p>
        <asp:SqlDataSource ID="sqlDSddlApplicant" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                     
            
            SelectCommand="select lastname, grossSalary, applicant.screeningID, lastname+' '+CAST(applicant.screeningID as VarChar(255))+' '+CAST(screening.screeningdate as VarChar(10)) as CombinedName from applicant, screening where grossSalary = (select max(grossSalary) from applicant as f where f.screeningID = applicant.screeningID) AND applicant.screeningid = screening.screeningid AND (screening.ScreeningStatus = '4' OR screening.ScreeningStatus IS NULL)">
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
                    
                    <asp:CheckBoxField DataField="AdditionalPet" HeaderText="AdditionalPet" 
                    SortExpression="AdditionalPet" />
                    <asp:CheckBoxField DataField="PetOver" HeaderText="PetOver" 
                    SortExpression="PetOver" />
                    <asp:CheckBoxField DataField="IncludeWD" HeaderText="IncludeWD" 
                    SortExpression="IncludeWD" />
                    <asp:CheckBoxField DataField="UtilitiesInc" HeaderText="UtilitiesInc" 
                    SortExpression="UtilitiesInc" />
                    <asp:BoundField DataField="propertyid" HeaderText="propertyid" 
                    SortExpression="propertyid" Visible="True" />
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
        <asp:Button ID="btnRemoveHold" runat="server" Text="Remove Hold on Property" 
            Visible="False" />
        <asp:SqlDataSource ID="SqlDataSourceScreening" runat="server" 
    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
    SelectCommand="SELECT [ScreeningID], [CriminalConviction], [CriminalConvictionReason], [TenantIsEmployee], [DateOfDesiredMoveIn], [NumOfOccupants], [RequiredNumBed], [RequiredNumBath], [RequiredWD], [TargetRent], [OtherDesiredFeatures], [BrokenLease], [nonHumanOccupants], [numnonrelated], [spouseIncluded], [AdditionalPet], [PetOver], [IncludeWD], [UtilitiesInc], [propertyID], [DepAmountRecieved] FROM [Screening] WHERE ([ScreeningID] = @ScreeningID)">
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
            
            SelectCommand="SELECT [ApplicantID], [FirstName], [LastName], [MiddleName], [GrossSalary], [FullTime], [OtherIncome], [OtherIncomeType], [SSBIncome], [SSIIncome] FROM [Applicant] WHERE ([screeningid] = @screeningid) Order By GrossSalary Desc">
            <SelectParameters>
                <asp:SessionParameter Name="screeningid" SessionField="newscreeningid" 
                    Type="Int64" />
            </SelectParameters>
         
        </asp:SqlDataSource>
    </p>
    <hr />
<p>
        &nbsp;Based on the applicant information provided the applicants can afford properties 
        that fit the following per month base rentals:</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Monthly Rent Max:" 
            Font-Size="Larger"></asp:Label>
&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;
        <asp:Label ID="Label7" runat="server" Text="House or W.C.: $ " 
            Font-Size="Larger"></asp:Label>
&nbsp;<asp:Label ID="lblHouseRent" runat="server" Font-Size="Larger">0.00</asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Apts: $" Font-Size="Larger"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblRentAfford" runat="server" Font-Size="Larger">0.00</asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblNumBed" runat="server" Visible="False">0</asp:Label>
        <asp:Label ID="lblNumBath" runat="server" Visible="False">0</asp:Label>
        <asp:CheckBox ID="chkWaserDryer" runat="server" Visible="False" />
    </p>
        <p>
            <asp:Label ID="lblIncludedInCalc" runat="server" Visible="False">0</asp:Label>
        </p>
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server" 
                
                Text="If maximum affordable rent is too low, click here to remove items from your lease contract (Pets, Extra Occupants, or Utilities)" 
                AutoPostBack="True" Visible="False" />

        </p>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
       
        <p>
            <br />
        </p>
        <table>
         <tr>
                          
                            <td align="right">
                               <asp:Label ID="lblNumOcc" runat="server" 
                                    
                                    Text=" Number of Nonrelated Occupants Not including Primary and Co-Tenant: "></asp:Label></td>
                            <td>
                                <asp:DropDownList ID="ddlNumOcc0" runat="server">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem Value="1"></asp:ListItem>
                                    <asp:ListItem Value="2"></asp:ListItem>
                                    <asp:ListItem Value="3"></asp:ListItem>
                                    <asp:ListItem Value="4"></asp:ListItem>
                                    <asp:ListItem Value="5"></asp:ListItem>
                                    <asp:ListItem Value="6"></asp:ListItem>
                                </asp:DropDownList>
                               
                            </td>
                   
                             </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblAddPet" runat="server" Text="Additional Pet:"></asp:Label>
                </td>
                <td>
                  <asp:CheckBox ID="chkAddPet" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblOverWeight" runat="server" 
                        Text="Either Pet Over Weight/Breed Restriction:"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="chkOverWeightPet" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblIncUtil" runat="server" 
                        Text="Include Utilities:"></asp:Label>
                </td>
                <td>
                   <asp:CheckBox ID="chkIncUtil" runat="server" />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;<asp:Button ID="btnRefresh1" runat="server" 
                PostBackUrl="~/FindCompatibleProperties.aspx" 
                Text="Update These Options From Application" />
        </p>
         </asp:Panel>
    <p>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
    </p>
    <p>
        Select a property below that you would like to rent:</p>
    <p>
        Houses:
         <div style="overflow:auto;width:2000px;height:225px;">
         <asp:GridView 
            ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="PropertyID" DataSourceID="SqlDataSourceProperties" 
            AllowSorting="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" 
            BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" 
            Font-Bold="False">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSourceProperties" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            SelectCommand="SELECT * FROM [Property] WHERE (([BaseRent] &lt;= @BaseRent + [BaseUtilities]+[WashDryCost]) AND ([NumBaths] &gt;= @NumBaths) AND ([NumBedrooms] &gt;= @NumBedrooms) AND ([Occupied] = @Occupied) AND ([RentReady] = @RentReady) AND ([HousingType] = @HousingType))">
            <SelectParameters>
               
                <asp:ControlParameter ControlID="lblHouseRent" Name="BaseRent" 
                    PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="lblNumBath" Name="NumBaths" 
                    PropertyName="Text" Type="Double" />
                <asp:ControlParameter ControlID="lblNumBed" Name="NumBedrooms" 
                    PropertyName="Text" Type="Double" />
                <asp:Parameter DefaultValue="False" Name="Occupied" Type="Boolean" />
                <asp:Parameter DefaultValue="True" Name="RentReady" Type="Boolean" />
                <asp:Parameter DefaultValue="2" Name="HousingType" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>
        <p>
        </p>
        <p>
            Apartments:</p>
        <div style="overflow: auto; width: 2000px; height: 192px">
            <asp:GridView ID="GridView4" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
                BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
                DataKeyNames="PropertyID" DataSourceID="SqlDataSourcePropApart" 
                GridLines="None">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
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
                        HeaderText="WeeklyIncomeMultiplier" SortExpression="WeeklyIncomeMultiplier" />
                    <asp:BoundField DataField="SchoolDistrict" HeaderText="SchoolDistrict" 
                        SortExpression="SchoolDistrict" />
                    <asp:BoundField DataField="OtherFeatures" HeaderText="OtherFeatures" 
                        SortExpression="OtherFeatures" />
                    <asp:CheckBoxField DataField="EligibleForEmpDiscount" 
                        HeaderText="EligibleForEmpDiscount" SortExpression="EligibleForEmpDiscount" />
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
            SelectCommand="SELECT * FROM [Property] WHERE (([BaseRent] &lt;= @BaseRent + [BaseUtilities]+[WashDryCost]) AND ([NumBaths] &gt;= @NumBaths) AND ([NumBedrooms] &gt;= @NumBedrooms) AND ([Occupied] = @Occupied) AND ([RentReady] = @RentReady) AND ([HousingType] = @HousingType))">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblRentAfford" Name="BaseRent" 
                    PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="lblNumBath" Name="NumBaths" 
                    PropertyName="Text" Type="Double" />
                <asp:ControlParameter ControlID="lblNumBed" Name="NumBedrooms" 
                    PropertyName="Text" Type="Double" />
                <asp:Parameter DefaultValue="False" Name="Occupied" Type="Boolean" />
                <asp:Parameter DefaultValue="True" Name="RentReady" Type="Boolean" />
                <asp:Parameter DefaultValue="1" Name="HousingType" Type="Double" />
            </SelectParameters>
        </asp:SqlDataSource>
        <hr />
        <p>
            The properties below fit the criteria, but are only Vacant and not Rent Ready. 
            Once these properties are ready and the status has been changed to Rent Ready 
            they will be available for selection:</p>
        <p>
            Houses:
            <div style="overflow: auto; width: 2000px; height: 223px">
                <asp:GridView ID="GridView5" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
                    BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
                    DataKeyNames="PropertyID" DataSourceID="SqlDataSource1" Font-Bold="False" 
                    GridLines="None">
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
                            HeaderText="WeeklyIncomeMultiplier" SortExpression="WeeklyIncomeMultiplier" />
                        <asp:BoundField DataField="SchoolDistrict" HeaderText="SchoolDistrict" 
                            SortExpression="SchoolDistrict" />
                        <asp:BoundField DataField="OtherFeatures" HeaderText="OtherFeatures" 
                            SortExpression="OtherFeatures" />
                        <asp:CheckBoxField DataField="EligibleForEmpDiscount" 
                            HeaderText="EligibleForEmpDiscount" SortExpression="EligibleForEmpDiscount" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                SelectCommand="SELECT * FROM [Property] WHERE (([BaseRent] &lt;= @BaseRent + [BaseUtilities]+[WashDryCost]) AND ([NumBaths] &gt;= @NumBaths) AND ([NumBedrooms] &gt;= @NumBedrooms) AND ([Occupied] = @Occupied) AND ([RentReady] = @RentReady) AND ([HousingType] = @HousingType))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblHouseRent" Name="BaseRent" 
                        PropertyName="Text" Type="Decimal" />
                    <asp:ControlParameter ControlID="lblNumBath" Name="NumBaths" 
                        PropertyName="Text" Type="Double" />
                    <asp:ControlParameter ControlID="lblNumBed" Name="NumBedrooms" 
                        PropertyName="Text" Type="Double" />
                    <asp:Parameter DefaultValue="False" Name="Occupied" Type="Boolean" />
                    <asp:Parameter DefaultValue="False" Name="RentReady" Type="Boolean" />
                    <asp:Parameter DefaultValue="2" Name="HousingType" Type="Double" />
                </SelectParameters>
            </asp:SqlDataSource>
            <p>
            </p>
            <p>
                Apartments:</p>
            <div style="overflow: auto; width: 2000px; height: 207px">
                <asp:GridView ID="GridView6" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
                    BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
                    DataKeyNames="PropertyID" DataSourceID="SqlDataSource2" GridLines="None">
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
                            HeaderText="WeeklyIncomeMultiplier" SortExpression="WeeklyIncomeMultiplier" />
                        <asp:BoundField DataField="SchoolDistrict" HeaderText="SchoolDistrict" 
                            SortExpression="SchoolDistrict" />
                        <asp:BoundField DataField="OtherFeatures" HeaderText="OtherFeatures" 
                            SortExpression="OtherFeatures" />
                        <asp:CheckBoxField DataField="EligibleForEmpDiscount" 
                            HeaderText="EligibleForEmpDiscount" SortExpression="EligibleForEmpDiscount" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                SelectCommand="SELECT * FROM [Property] WHERE (([BaseRent] &lt;= @BaseRent + [BaseUtilities]+[WashDryCost]) AND ([NumBaths] &gt;= @NumBaths) AND ([NumBedrooms] &gt;= @NumBedrooms) AND ([Occupied] = @Occupied) AND ([RentReady] = @RentReady) AND ([HousingType] = @HousingType))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblRentAfford" Name="BaseRent" 
                        PropertyName="Text" Type="Decimal" />
                    <asp:ControlParameter ControlID="lblNumBath" Name="NumBaths" 
                        PropertyName="Text" Type="Double" />
                    <asp:ControlParameter ControlID="lblNumBed" Name="NumBedrooms" 
                        PropertyName="Text" Type="Double" />
                    <asp:Parameter DefaultValue="False" Name="Occupied" Type="Boolean" />
                    <asp:Parameter DefaultValue="False" Name="RentReady" Type="Boolean" />
                    <asp:Parameter DefaultValue="1" Name="HousingType" Type="Double" />
                </SelectParameters>
            </asp:SqlDataSource>
            <hr />
            <p>
                If applicant not happy with available properties, they can elect a co-signer.&nbsp; 
                An income verification and background check of the cosigner is required.</p>
            <p>
                <asp:CheckBox ID="ckCoSigner" runat="server" AutoPostBack="True" 
                    Text="Check here is applicant is electing a co-signer" />
            </p>
            <p>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="CoSignerID" 
                    DataSourceID="SqlDataSourceCoSigner" DefaultMode="Insert" Visible="False">
                    <EditItemTemplate>
                        CoSignerID:
                        <asp:Label ID="CoSignerIDLabel1" runat="server" 
                            Text='<%# Eval("CoSignerID") %>' />
                        <br />
                        MiddleInitial:
                        <asp:TextBox ID="MiddleInitialTextBox" runat="server" 
                            Text='<%# Bind("MiddleInitial") %>' />
                        <br />
                        FirstName:
                        <asp:TextBox ID="FirstNameTextBox" runat="server" 
                            Text='<%# Bind("FirstName") %>' />
                        <br />
                        LastInitial:
                        <asp:TextBox ID="LastInitialTextBox" runat="server" 
                            Text='<%# Bind("LastInitial") %>' />
                        <br />
                        DOB:
                        <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                        <br />
                        Salary:
                        <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                        <br />
                        SSN:
                        <asp:TextBox ID="SSNTextBox" runat="server" Text='<%# Bind("SSN") %>' />
                        <br />
                        StreetAddress:
                        <asp:TextBox ID="StreetAddressTextBox" runat="server" 
                            Text='<%# Bind("StreetAddress") %>' />
                        <br />
                        Zip:
                        <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                        <br />
                        screeningID:
                        <asp:TextBox ID="screeningIDTextBox" runat="server" 
                            Text='<%# Bind("screeningID") %>' />
                        <br />
                        State:
                        <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                        <br />
                        City:
                        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <table style="width: 100%;">
                            <tr>
                                <td align="right">
                                    First Name:
                                </td>
                                <td>
                                    <asp:TextBox ID="FirstNameTextBox" runat="server" 
                                        Text='<%# Bind("FirstName") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="FirstNameTextBox" Display="Dynamic" 
                                        ErrorMessage="First Name is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Middle Initial:
                                </td>
                                <td>
                                    <asp:TextBox ID="MiddleInitialTextBox" runat="server" 
                                        Text='<%# Bind("MiddleInitial") %>' />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Last Name:
                                </td>
                                <td>
                                    <asp:TextBox ID="LastInitialTextBox" runat="server" 
                                        Text='<%# Bind("LastInitial") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="LastInitialTextBox" Display="Dynamic" 
                                        ErrorMessage="Last Name is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    DOB:
                                </td>
                                <td>
                                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                        TargetControlID="DOBTextBox" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                        ControlToValidate="DOBTextBox" Display="Dynamic" 
                                        ErrorMessage="DOB is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    SSN:
                                </td>
                                <td>
                                    <asp:TextBox ID="SSNTextBox" runat="server" Text='<%# Bind("SSN") %>' />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                        ControlToValidate="SSNTextBox" Display="Dynamic" ErrorMessage="Invalid SSN" 
                                        ValidationExpression="\d{3}-\d{2}-\d{4}" ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                        ControlToValidate="SSNTextBox" Display="Dynamic" 
                                        ErrorMessage="SSN is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Salary:
                                </td>
                                <td>
                                    <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    StreetAddress:</td>
                                <td>
                                    <asp:TextBox ID="StreetAddressTextBox" runat="server" 
                                        Text='<%# Bind("StreetAddress") %>' />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    City:</td>
                                <td>
                                    <br />
                                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    State:</td>
                                <td>
                                    <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' 
                                        Visible="false" />
                                    <asp:DropDownList ID="dropdownlist3" runat="server" 
                                        DataSourceID="SqlDataSourceState" DataTextField="State" DataValueField="State" 
                                        SelectedValue='<%# Bind("State") %>'>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Zip:</td>
                                <td>
                                    <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Phone Number:</td>
                                <td>
                                    <asp:TextBox ID="PhoneNumberTextBox" runat="server" 
                                        Text='<%# Bind("PhoneNumber") %>' />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                        ControlToValidate="PhoneNumberTextBox" Display="Dynamic" 
                                        ErrorMessage="Invalid Phone Number" 
                                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                                        ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Add Co-Signer" ValidationGroup="AllValidators" />
                                    &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel" />
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        CoSignerID:
                        <asp:Label ID="CoSignerIDLabel" runat="server" 
                            Text='<%# Eval("CoSignerID") %>' />
                        <br />
                        MiddleInitial:
                        <asp:Label ID="MiddleInitialLabel" runat="server" 
                            Text='<%# Bind("MiddleInitial") %>' />
                        <br />
                        FirstName:
                        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                        <br />
                        LastInitial:
                        <asp:Label ID="LastInitialLabel" runat="server" 
                            Text='<%# Bind("LastInitial") %>' />
                        <br />
                        DOB:
                        <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                        <br />
                        Salary:
                        <asp:Label ID="SalaryLabel" runat="server" Text='<%# Bind("Salary") %>' />
                        <br />
                        SSN:
                        <asp:Label ID="SSNLabel" runat="server" Text='<%# Bind("SSN") %>' />
                        <br />
                        StreetAddress:
                        <asp:Label ID="StreetAddressLabel" runat="server" 
                            Text='<%# Bind("StreetAddress") %>' />
                        <br />
                        Zip:
                        <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
                        <br />
                        screeningID:
                        <asp:Label ID="screeningIDLabel" runat="server" 
                            Text='<%# Bind("screeningID") %>' />
                        <br />
                        State:
                        <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                        <br />
                        City:
                        <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSourceCoSigner" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    DeleteCommand="DELETE FROM [CoSigner] WHERE [CoSignerID] = @original_CoSignerID AND (([MiddleInitial] = @original_MiddleInitial) OR ([MiddleInitial] IS NULL AND @original_MiddleInitial IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastInitial] = @original_LastInitial) OR ([LastInitial] IS NULL AND @original_LastInitial IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([StreetAddress] = @original_StreetAddress) OR ([StreetAddress] IS NULL AND @original_StreetAddress IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([screeningID] = @original_screeningID) OR ([screeningID] IS NULL AND @original_screeningID IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL))" 
                    InsertCommand="INSERT INTO [CoSigner] ([MiddleInitial], [FirstName], [LastInitial], [DOB], [Salary], [SSN], [StreetAddress], [Zip], [screeningID], [State], [City], [PhoneNumber]) VALUES (@MiddleInitial, @FirstName, @LastInitial, @DOB, @Salary, @SSN, @StreetAddress, @Zip, @screeningID, @State, @City, @PhoneNumber)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [CoSignerID], [MiddleInitial], [FirstName], [LastInitial], [DOB], [Salary], [SSN], [StreetAddress], [Zip], [screeningID], [State], [City] FROM [CoSigner]" 
                    UpdateCommand="UPDATE [CoSigner] SET [MiddleInitial] = @MiddleInitial, [FirstName] = @FirstName, [LastInitial] = @LastInitial, [DOB] = @DOB, [Salary] = @Salary, [SSN] = @SSN, [StreetAddress] = @StreetAddress, [Zip] = @Zip, [screeningID] = @screeningID, [State] = @State, [City] = @City WHERE [CoSignerID] = @original_CoSignerID AND (([MiddleInitial] = @original_MiddleInitial) OR ([MiddleInitial] IS NULL AND @original_MiddleInitial IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastInitial] = @original_LastInitial) OR ([LastInitial] IS NULL AND @original_LastInitial IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL)) AND (([StreetAddress] = @original_StreetAddress) OR ([StreetAddress] IS NULL AND @original_StreetAddress IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([screeningID] = @original_screeningID) OR ([screeningID] IS NULL AND @original_screeningID IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CoSignerID" Type="Int64" />
                        <asp:Parameter Name="original_MiddleInitial" Type="String" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastInitial" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_DOB" />
                        <asp:Parameter Name="original_Salary" Type="Decimal" />
                        <asp:Parameter Name="original_SSN" Type="String" />
                        <asp:Parameter Name="original_StreetAddress" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="String" />
                        <asp:Parameter Name="original_screeningID" Type="Int64" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MiddleInitial" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastInitial" Type="String" />
                        <asp:Parameter DbType="Date" Name="DOB" />
                        <asp:Parameter Name="Salary" Type="Decimal" />
                        <asp:Parameter Name="SSN" Type="String" />
                        <asp:Parameter Name="StreetAddress" Type="String" />
                        <asp:Parameter Name="Zip" Type="String" />
                        <asp:Parameter Name="screeningID" Type="Int64" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MiddleInitial" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastInitial" Type="String" />
                        <asp:Parameter DbType="Date" Name="DOB" />
                        <asp:Parameter Name="Salary" Type="Decimal" />
                        <asp:Parameter Name="SSN" Type="String" />
                        <asp:Parameter Name="StreetAddress" Type="String" />
                        <asp:Parameter Name="Zip" Type="String" />
                        <asp:Parameter Name="screeningID" Type="Int64" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="original_CoSignerID" Type="Int64" />
                        <asp:Parameter Name="original_MiddleInitial" Type="String" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastInitial" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_DOB" />
                        <asp:Parameter Name="original_Salary" Type="Decimal" />
                        <asp:Parameter Name="original_SSN" Type="String" />
                        <asp:Parameter Name="original_StreetAddress" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="String" />
                        <asp:Parameter Name="original_screeningID" Type="Int64" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <asp:SqlDataSource ID="SqlDataSourceState" runat="server" 
                ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
            <hr />
            <p>
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    PostBackUrl="~/Complete811Screening.aspx">Click Here to Complete Application</asp:LinkButton>
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
        </p>
    </p>

    </asp:Panel>
</asp:Content>