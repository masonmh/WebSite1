<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="PropertyManagement.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Property Management
    </h2>
    <p>
        <asp:DropDownList ID="ddlSelectProperty" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSourceProperty" DataTextField="CompleteAddress" 
            DataValueField="PropertyID" Width="259px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceProperty" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            InsertCommand="INSERT INTO [Property] ([CompleteAddress]) VALUES (@CompleteAddress)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [PropertyID], [CompleteAddress] FROM [Property] Order By [CompleteAddress]">
            <InsertParameters>
                <asp:Parameter Name="CompleteAddress" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="PropertyID" 
            DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                PropertyID:
                <asp:Label ID="PropertyIDLabel1" runat="server" 
                    Text='<%# Eval("PropertyID") %>' />
                <br />
                CompleteAddress:
                <asp:TextBox ID="CompleteAddressTextBox" runat="server" 
                    Text='<%# Bind("CompleteAddress") %>' />
                <br />
                StreetAddress:
                <asp:TextBox ID="StreetAddressTextBox" runat="server" 
                    Text='<%# Bind("StreetAddress") %>' />
                <br />
                AptNum:
                <asp:TextBox ID="AptNumTextBox" runat="server" Text='<%# Bind("AptNum") %>' />
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
                HousingType:
                <asp:TextBox ID="HousingTypeTextBox" runat="server" 
                    Text='<%# Bind("HousingType") %>' />
                <br />
                NumBedrooms:
                <asp:TextBox ID="NumBedroomsTextBox" runat="server" 
                    Text='<%# Bind("NumBedrooms") %>' />
                <br />
                NumBaths:
                <asp:TextBox ID="NumBathsTextBox" runat="server" 
                    Text='<%# Bind("NumBaths") %>' />
                <br />
                Size:
                <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
                <br />
                Garage:
                <asp:CheckBox ID="GarageCheckBox" runat="server" 
                    Checked='<%# Bind("Garage") %>' />
                <br />
                FloorLocation:
                <asp:TextBox ID="FloorLocationTextBox" runat="server" 
                    Text='<%# Bind("FloorLocation") %>' />
                <br />
                BaseRent:
                <asp:TextBox ID="BaseRentTextBox" runat="server" 
                    Text='<%# Bind("BaseRent") %>' />
                <br />
                AccessCredit:
                <asp:TextBox ID="AccessCreditTextBox" runat="server" 
                    Text='<%# Bind("AccessCredit") %>' />
                <br />
                BaseUtilities:
                <asp:TextBox ID="BaseUtilitiesTextBox" runat="server" 
                    Text='<%# Bind("BaseUtilities") %>' />
                <br />
                WashDryCost:
                <asp:TextBox ID="WashDryCostTextBox" runat="server" 
                    Text='<%# Bind("WashDryCost") %>' />
                <br />
                GasInclude:
                <asp:CheckBox ID="GasIncludeCheckBox" runat="server" 
                    Checked='<%# Bind("GasInclude") %>' />
                <br />
                WaterInclude:
                <asp:CheckBox ID="WaterIncludeCheckBox" runat="server" 
                    Checked='<%# Bind("WaterInclude") %>' />
                <br />
                ElectricInclude:
                <asp:CheckBox ID="ElectricIncludeCheckBox" runat="server" 
                    Checked='<%# Bind("ElectricInclude") %>' />
                <br />
                DatePurchase:
                <asp:TextBox ID="DatePurchaseTextBox" runat="server" 
                    Text='<%# Bind("DatePurchase") %>' />
                <br />
                WeeklyIncomeMultiplier:
                <asp:TextBox ID="WeeklyIncomeMultiplierTextBox" runat="server" 
                    Text='<%# Bind("WeeklyIncomeMultiplier") %>' />
                <br />
                SchoolDistrict:
                <asp:TextBox ID="SchoolDistrictTextBox" runat="server" 
                    Text='<%# Bind("SchoolDistrict") %>' />
                <br />
                OtherFeatures:
                <asp:TextBox ID="OtherFeaturesTextBox" runat="server" 
                    Text='<%# Bind("OtherFeatures") %>' />
                <br />
                EligibleForEmpDiscount:
                <asp:CheckBox ID="EligibleForEmpDiscountCheckBox" runat="server" 
                    Checked='<%# Bind("EligibleForEmpDiscount") %>' />
                <br />
                YardiPropertyCode:
                <asp:TextBox ID="YardiPropertyCodeTextBox" runat="server" 
                    Text='<%# Bind("YardiPropertyCode") %>' />
                <br />
                LLCName:
                <asp:TextBox ID="LLCNameTextBox" runat="server" Text='<%# Bind("LLCName") %>' />
                <br />
                WasherDryerHookups:
                <asp:CheckBox ID="WasherDryerHookupsCheckBox" runat="server" 
                    Checked='<%# Bind("WasherDryerHookups") %>' />
                <br />
                Occupied:
                <asp:CheckBox ID="OccupiedCheckBox" runat="server" 
                    Checked='<%# Bind("Occupied") %>' />
                <br />
                LastMoveIn:
                <asp:TextBox ID="LastMoveInTextBox" runat="server" 
                    Text='<%# Bind("LastMoveIn") %>' />
                <br />
                LastMoveOut:
                <asp:TextBox ID="LastMoveOutTextBox" runat="server" 
                    Text='<%# Bind("LastMoveOut") %>' />
                <br />
                LastRent:
                <asp:TextBox ID="LastRentTextBox" runat="server" 
                    Text='<%# Bind("LastRent") %>' />
                <br />
                userInput:
                <asp:TextBox ID="userInputTextBox" runat="server" 
                    Text='<%# Bind("userInput") %>' />
                <br />
                inputDate:
                <asp:TextBox ID="inputDateTextBox" runat="server" 
                    Text='<%# Bind("inputDate") %>' />
                <br />
                GasAdditional:
                <asp:TextBox ID="GasAdditionalTextBox" runat="server" 
                    Text='<%# Bind("GasAdditional") %>' />
                <br />
                WaterAdditional:
                <asp:TextBox ID="WaterAdditionalTextBox" runat="server" 
                    Text='<%# Bind("WaterAdditional") %>' />
                <br />
                ElectricAdditional:
                <asp:TextBox ID="ElectricAdditionalTextBox" runat="server" 
                    Text='<%# Bind("ElectricAdditional") %>' />
                <br />
                rentReady:
                <asp:CheckBox ID="rentReadyCheckBox" runat="server" 
                    Checked='<%# Bind("rentReady") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                CompleteAddress:
                <asp:TextBox ID="CompleteAddressTextBox" runat="server" 
                    Text='<%# Bind("CompleteAddress") %>' />
                <br />
                StreetAddress:
                <asp:TextBox ID="StreetAddressTextBox" runat="server" 
                    Text='<%# Bind("StreetAddress") %>' />
                <br />
                AptNum:
                <asp:TextBox ID="AptNumTextBox" runat="server" Text='<%# Bind("AptNum") %>' />
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
                HousingType:
                <asp:TextBox ID="HousingTypeTextBox" runat="server" 
                    Text='<%# Bind("HousingType") %>' />
                <br />
                NumBedrooms:
                <asp:TextBox ID="NumBedroomsTextBox" runat="server" 
                    Text='<%# Bind("NumBedrooms") %>' />
                <br />
                NumBaths:
                <asp:TextBox ID="NumBathsTextBox" runat="server" 
                    Text='<%# Bind("NumBaths") %>' />
                <br />
                Size:
                <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
                <br />
                Garage:
                <asp:CheckBox ID="GarageCheckBox" runat="server" 
                    Checked='<%# Bind("Garage") %>' />
                <br />
                FloorLocation:
                <asp:TextBox ID="FloorLocationTextBox" runat="server" 
                    Text='<%# Bind("FloorLocation") %>' />
                <br />
                BaseRent:
                <asp:TextBox ID="BaseRentTextBox" runat="server" 
                    Text='<%# Bind("BaseRent") %>' />
                <br />
                AccessCredit:
                <asp:TextBox ID="AccessCreditTextBox" runat="server" 
                    Text='<%# Bind("AccessCredit") %>' />
                <br />
                BaseUtilities:
                <asp:TextBox ID="BaseUtilitiesTextBox" runat="server" 
                    Text='<%# Bind("BaseUtilities") %>' />
                <br />
                WashDryCost:
                <asp:TextBox ID="WashDryCostTextBox" runat="server" 
                    Text='<%# Bind("WashDryCost") %>' />
                <br />
                GasInclude:
                <asp:CheckBox ID="GasIncludeCheckBox" runat="server" 
                    Checked='<%# Bind("GasInclude") %>' />
                <br />
                WaterInclude:
                <asp:CheckBox ID="WaterIncludeCheckBox" runat="server" 
                    Checked='<%# Bind("WaterInclude") %>' />
                <br />
                ElectricInclude:
                <asp:CheckBox ID="ElectricIncludeCheckBox" runat="server" 
                    Checked='<%# Bind("ElectricInclude") %>' />
                <br />
                DatePurchase:
                <asp:TextBox ID="DatePurchaseTextBox" runat="server" 
                    Text='<%# Bind("DatePurchase") %>' />
					
                <br />
                WeeklyIncomeMultiplier:
                <asp:TextBox ID="WeeklyIncomeMultiplierTextBox" runat="server" 
                    Text='<%# Bind("WeeklyIncomeMultiplier") %>' />
                <br />
                SchoolDistrict:
                <asp:TextBox ID="SchoolDistrictTextBox" runat="server" 
                    Text='<%# Bind("SchoolDistrict") %>' />
                <br />
                OtherFeatures:
                <asp:TextBox ID="OtherFeaturesTextBox" runat="server" 
                    Text='<%# Bind("OtherFeatures") %>' />
                <br />
                EligibleForEmpDiscount:
                <asp:CheckBox ID="EligibleForEmpDiscountCheckBox" runat="server" 
                    Checked='<%# Bind("EligibleForEmpDiscount") %>' />
                <br />
                YardiPropertyCode:
                <asp:TextBox ID="YardiPropertyCodeTextBox" runat="server" 
                    Text='<%# Bind("YardiPropertyCode") %>' />
                <br />
                LLCName:
                <asp:TextBox ID="LLCNameTextBox" runat="server" Text='<%# Bind("LLCName") %>' />
                <br />
                WasherDryerHookups:
                <asp:CheckBox ID="WasherDryerHookupsCheckBox" runat="server" 
                    Checked='<%# Bind("WasherDryerHookups") %>' />
                <br />
                Occupied:
                <asp:CheckBox ID="OccupiedCheckBox" runat="server" 
                    Checked='<%# Bind("Occupied") %>' />
                <br />
                LastMoveIn:
                <asp:TextBox ID="LastMoveInTextBox" runat="server" 
                    Text='<%# Bind("LastMoveIn") %>' />
                <br />
                LastMoveOut:
                <asp:TextBox ID="LastMoveOutTextBox" runat="server" 
                    Text='<%# Bind("LastMoveOut") %>' />
                <br />
                LastRent:
                <asp:TextBox ID="LastRentTextBox" runat="server" 
                    Text='<%# Bind("LastRent") %>' />
                <br />
                userInput:
                <asp:TextBox ID="userInputTextBox" runat="server" 
                    Text='<%# Bind("userInput") %>' />
					
                <br />
                inputDate:
					
					<asp:TextBox ID="inputDateTextBox" runat="server" 
                    Text='<%# Bind("inputDate") %>' />
                <br />
                GasAdditional:
                <asp:TextBox ID="GasAdditionalTextBox" runat="server" 
                    Text='<%# Bind("GasAdditional") %>' />
                <br />
                WaterAdditional:
                <asp:TextBox ID="WaterAdditionalTextBox" runat="server" 
                    Text='<%# Bind("WaterAdditional") %>' />
                <br />
                ElectricAdditional:
                <asp:TextBox ID="ElectricAdditionalTextBox" runat="server" 
                    Text='<%# Bind("ElectricAdditional") %>' />
                <br />
                rentReady:
                <asp:CheckBox ID="rentReadyCheckBox" runat="server" 
                    Checked='<%# Bind("rentReady") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
					
            </InsertItemTemplate>
            <ItemTemplate>
                PropertyID:
                <asp:Label ID="PropertyIDLabel" runat="server" 
                    Text='<%# Eval("PropertyID") %>' />
                <br />
				CompleteAddress:
                <asp:Label ID="CompleteAddressLabel" runat="server" 
                    Text='<%# Bind("CompleteAddress") %>' />
                <br />
                StreetAddress:
                <asp:Label ID="StreetAddressLabel" runat="server" 
                    Text='<%# Bind("StreetAddress") %>' />
                <br />
                AptNum:
                <asp:Label ID="AptNumLabel" runat="server" Text='<%# Bind("AptNum") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                <br />
                Zip:
                <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
                <br />
                HousingType:
                <asp:Label ID="HousingTypeLabel" runat="server" 
                    Text='<%# Bind("HousingType") %>' />
                <br />
                NumBedrooms:
                <asp:Label ID="NumBedroomsLabel" runat="server" 
                    Text='<%# Bind("NumBedrooms") %>' />
                <br />
                NumBaths:
                <asp:Label ID="NumBathsLabel" runat="server" Text='<%# Bind("NumBaths") %>' />
                <br />
                Size:
                <asp:Label ID="SizeLabel" runat="server" Text='<%# Bind("Size") %>' />
                <br />
                Garage:
                <asp:CheckBox ID="GarageCheckBox" runat="server" 
                    Checked='<%# Bind("Garage") %>' Enabled="false" />
                <br />
                FloorLocation:
                <asp:Label ID="FloorLocationLabel" runat="server" 
                    Text='<%# Bind("FloorLocation") %>' />
                <br />
                BaseRent:
                <asp:Label ID="BaseRentLabel" runat="server" Text='<%# Bind("BaseRent") %>' />
                <br />
                AccessCredit:
                <asp:Label ID="AccessCreditLabel" runat="server" 
                    Text='<%# Bind("AccessCredit") %>' />
                <br />
                BaseUtilities:
                <asp:Label ID="BaseUtilitiesLabel" runat="server" 
                    Text='<%# Bind("BaseUtilities") %>' />
                <br />
                 WashDryCost:
                <asp:Label ID="WashDryCostLabel" runat="server" 
                    Text='<%# Bind("WashDryCost") %>' />
                 <br />
                 GasInclude:
                <asp:CheckBox ID="GasIncludeCheckBox" runat="server" 
                    Checked='<%# Bind("GasInclude") %>' Enabled="false" />
                <br />
                WaterInclude:
                <asp:CheckBox ID="WaterIncludeCheckBox" runat="server" 
                    Checked='<%# Bind("WaterInclude") %>' Enabled="false" />
                <br />
                ElectricInclude:
                <asp:CheckBox ID="ElectricIncludeCheckBox" runat="server" 
                    Checked='<%# Bind("ElectricInclude") %>' Enabled="false" />
                <br />
                DatePurchase:
                <asp:Label ID="DatePurchaseLabel" runat="server" 
                    Text='<%# Bind("DatePurchase") %>' />
                 <br />
                WeeklyIncomeMultiplier:
                <asp:Label ID="WeeklyIncomeMultiplierLabel" runat="server" 
                    Text='<%# Bind("WeeklyIncomeMultiplier") %>' />
                <br />
                SchoolDistrict:
                <asp:Label ID="SchoolDistrictLabel" runat="server" 
                    Text='<%# Bind("SchoolDistrict") %>' />
                <br />
                OtherFeatures:
                <asp:Label ID="OtherFeaturesLabel" runat="server" 
                    Text='<%# Bind("OtherFeatures") %>' />
                <br />
                EligibleForEmpDiscount:
                <asp:CheckBox ID="EligibleForEmpDiscountCheckBox" runat="server" 
                    Checked='<%# Bind("EligibleForEmpDiscount") %>' Enabled="false" />
                <br />
                YardiPropertyCode:
                <asp:Label ID="YardiPropertyCodeLabel" runat="server" 
                    Text='<%# Bind("YardiPropertyCode") %>' />
                <br />
                LLCName:
                <asp:Label ID="LLCNameLabel" runat="server" Text='<%# Bind("LLCName") %>' />
                <br />
                WasherDryerHookups:
                <asp:CheckBox ID="WasherDryerHookupsCheckBox" runat="server" 
                    Checked='<%# Bind("WasherDryerHookups") %>' Enabled="false" />
                <br />
                Occupied:
                <asp:CheckBox ID="OccupiedCheckBox" runat="server" 
                    Checked='<%# Bind("Occupied") %>' Enabled="false" />
                <br />
                LastMoveIn:
                <asp:Label ID="LastMoveInLabel" runat="server" 
                    Text='<%# Bind("LastMoveIn") %>' />
                <br />
                LastMoveOut:
                <asp:Label ID="LastMoveOutLabel" runat="server" 
                    Text='<%# Bind("LastMoveOut") %>' />
                <br />
                LastRent:
                <asp:Label ID="LastRentLabel" runat="server" Text='<%# Bind("LastRent") %>' />
                <br />
                userInput:
                 <asp:Label ID="userInputLabel" runat="server" 
                    Text='<%# Bind("userInput") %>' />
                <br />
                inputDate:
                 <asp:Label ID="inputDateLabel" runat="server" 
                    Text='<%# Bind("inputDate") %>' />
                <br />
                GasAdditional:
                <asp:Label ID="GasAdditionalLabel" runat="server" 
                    Text='<%# Bind("GasAdditional") %>' />
                <br />
                WaterAdditional:
                <asp:Label ID="WaterAdditionalLabel" runat="server" 
                    Text='<%# Bind("WaterAdditional") %>' />
                <br />
                ElectricAdditional:
                <asp:Label ID="ElectricAdditionalLabel" runat="server" 
                    Text='<%# Bind("ElectricAdditional") %>' />
                <br />
                rentReady:
                <asp:CheckBox ID="rentReadyCheckBox" runat="server" 
                    Checked='<%# Bind("rentReady") %>' Enabled="false" />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            DeleteCommand="DELETE FROM [Property] WHERE [PropertyID] = @original_PropertyID AND (([CompleteAddress] = @original_CompleteAddress) OR ([CompleteAddress] IS NULL AND @original_CompleteAddress IS NULL)) AND (([StreetAddress] = @original_StreetAddress) OR ([StreetAddress] IS NULL AND @original_StreetAddress IS NULL)) AND (([AptNum] = @original_AptNum) OR ([AptNum] IS NULL AND @original_AptNum IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([HousingType] = @original_HousingType) OR ([HousingType] IS NULL AND @original_HousingType IS NULL)) AND (([NumBedrooms] = @original_NumBedrooms) OR ([NumBedrooms] IS NULL AND @original_NumBedrooms IS NULL)) AND (([NumBaths] = @original_NumBaths) OR ([NumBaths] IS NULL AND @original_NumBaths IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND (([Garage] = @original_Garage) OR ([Garage] IS NULL AND @original_Garage IS NULL)) AND (([FloorLocation] = @original_FloorLocation) OR ([FloorLocation] IS NULL AND @original_FloorLocation IS NULL)) AND (([BaseRent] = @original_BaseRent) OR ([BaseRent] IS NULL AND @original_BaseRent IS NULL)) AND (([AccessCredit] = @original_AccessCredit) OR ([AccessCredit] IS NULL AND @original_AccessCredit IS NULL)) AND (([BaseUtilities] = @original_BaseUtilities) OR ([BaseUtilities] IS NULL AND @original_BaseUtilities IS NULL)) AND (([WashDryCost] = @original_WashDryCost) OR ([WashDryCost] IS NULL AND @original_WashDryCost IS NULL)) AND (([GasInclude] = @original_GasInclude) OR ([GasInclude] IS NULL AND @original_GasInclude IS NULL)) AND (([WaterInclude] = @original_WaterInclude) OR ([WaterInclude] IS NULL AND @original_WaterInclude IS NULL)) AND (([ElectricInclude] = @original_ElectricInclude) OR ([ElectricInclude] IS NULL AND @original_ElectricInclude IS NULL)) AND (([DatePurchase] = @original_DatePurchase) OR ([DatePurchase] IS NULL AND @original_DatePurchase IS NULL)) AND (([WeeklyIncomeMultiplier] = @original_WeeklyIncomeMultiplier) OR ([WeeklyIncomeMultiplier] IS NULL AND @original_WeeklyIncomeMultiplier IS NULL)) AND (([SchoolDistrict] = @original_SchoolDistrict) OR ([SchoolDistrict] IS NULL AND @original_SchoolDistrict IS NULL)) AND (([OtherFeatures] = @original_OtherFeatures) OR ([OtherFeatures] IS NULL AND @original_OtherFeatures IS NULL)) AND (([EligibleForEmpDiscount] = @original_EligibleForEmpDiscount) OR ([EligibleForEmpDiscount] IS NULL AND @original_EligibleForEmpDiscount IS NULL)) AND (([YardiPropertyCode] = @original_YardiPropertyCode) OR ([YardiPropertyCode] IS NULL AND @original_YardiPropertyCode IS NULL)) AND (([LLCName] = @original_LLCName) OR ([LLCName] IS NULL AND @original_LLCName IS NULL)) AND (([WasherDryerHookups] = @original_WasherDryerHookups) OR ([WasherDryerHookups] IS NULL AND @original_WasherDryerHookups IS NULL)) AND (([Occupied] = @original_Occupied) OR ([Occupied] IS NULL AND @original_Occupied IS NULL)) AND (([LastMoveIn] = @original_LastMoveIn) OR ([LastMoveIn] IS NULL AND @original_LastMoveIn IS NULL)) AND (([LastMoveOut] = @original_LastMoveOut) OR ([LastMoveOut] IS NULL AND @original_LastMoveOut IS NULL)) AND (([LastRent] = @original_LastRent) OR ([LastRent] IS NULL AND @original_LastRent IS NULL)) AND (([userInput] = @original_userInput) OR ([userInput] IS NULL AND @original_userInput IS NULL)) AND (([inputDate] = @original_inputDate) OR ([inputDate] IS NULL AND @original_inputDate IS NULL)) AND (([GasAdditional] = @original_GasAdditional) OR ([GasAdditional] IS NULL AND @original_GasAdditional IS NULL)) AND (([WaterAdditional] = @original_WaterAdditional) OR ([WaterAdditional] IS NULL AND @original_WaterAdditional IS NULL)) AND (([ElectricAdditional] = @original_ElectricAdditional) OR ([ElectricAdditional] IS NULL AND @original_ElectricAdditional IS NULL)) AND (([rentReady] = @original_rentReady) OR ([rentReady] IS NULL AND @original_rentReady IS NULL))" 
            InsertCommand="INSERT INTO [Property] ([CompleteAddress], [StreetAddress], [AptNum], [City], [State], [Zip], [HousingType], [NumBedrooms], [NumBaths], [Size], [Garage], [FloorLocation], [BaseRent], [AccessCredit], [BaseUtilities], [WashDryCost], [GasInclude], [WaterInclude], [ElectricInclude], [DatePurchase], [WeeklyIncomeMultiplier], [SchoolDistrict], [OtherFeatures], [EligibleForEmpDiscount], [YardiPropertyCode], [LLCName], [WasherDryerHookups], [Occupied], [LastMoveIn], [LastMoveOut], [LastRent], [userInput], [inputDate], [GasAdditional], [WaterAdditional], [ElectricAdditional], [rentReady]) VALUES (@CompleteAddress, @StreetAddress, @AptNum, @City, @State, @Zip, @HousingType, @NumBedrooms, @NumBaths, @Size, @Garage, @FloorLocation, @BaseRent, @AccessCredit, @BaseUtilities, @WashDryCost, @GasInclude, @WaterInclude, @ElectricInclude, @DatePurchase, @WeeklyIncomeMultiplier, @SchoolDistrict, @OtherFeatures, @EligibleForEmpDiscount, @YardiPropertyCode, @LLCName, @WasherDryerHookups, @Occupied, @LastMoveIn, @LastMoveOut, @LastRent, @userInput, @inputDate, @GasAdditional, @WaterAdditional, @ElectricAdditional, @rentReady)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Property] WHERE ([PropertyID] = @PropertyID) ORDER BY [StreetAddress], [AptNum]" 
            
            UpdateCommand="UPDATE [Property] SET [CompleteAddress] = @CompleteAddress, [StreetAddress] = @StreetAddress, [AptNum] = @AptNum, [City] = @City, [State] = @State, [Zip] = @Zip, [HousingType] = @HousingType, [NumBedrooms] = @NumBedrooms, [NumBaths] = @NumBaths, [Size] = @Size, [Garage] = @Garage, [FloorLocation] = @FloorLocation, [BaseRent] = @BaseRent, [AccessCredit] = @AccessCredit, [BaseUtilities] = @BaseUtilities, [WashDryCost] = @WashDryCost, [GasInclude] = @GasInclude, [WaterInclude] = @WaterInclude, [ElectricInclude] = @ElectricInclude, [DatePurchase] = @DatePurchase, [WeeklyIncomeMultiplier] = @WeeklyIncomeMultiplier, [SchoolDistrict] = @SchoolDistrict, [OtherFeatures] = @OtherFeatures, [EligibleForEmpDiscount] = @EligibleForEmpDiscount, [YardiPropertyCode] = @YardiPropertyCode, [LLCName] = @LLCName, [WasherDryerHookups] = @WasherDryerHookups, [Occupied] = @Occupied, [LastMoveIn] = @LastMoveIn, [LastMoveOut] = @LastMoveOut, [LastRent] = @LastRent, [userInput] = @userInput, [inputDate] = @inputDate, [GasAdditional] = @GasAdditional, [WaterAdditional] = @WaterAdditional, [ElectricAdditional] = @ElectricAdditional, [rentReady] = @rentReady WHERE [PropertyID] = @original_PropertyID AND (([CompleteAddress] = @original_CompleteAddress) OR ([CompleteAddress] IS NULL AND @original_CompleteAddress IS NULL)) AND (([StreetAddress] = @original_StreetAddress) OR ([StreetAddress] IS NULL AND @original_StreetAddress IS NULL)) AND (([AptNum] = @original_AptNum) OR ([AptNum] IS NULL AND @original_AptNum IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([HousingType] = @original_HousingType) OR ([HousingType] IS NULL AND @original_HousingType IS NULL)) AND (([NumBedrooms] = @original_NumBedrooms) OR ([NumBedrooms] IS NULL AND @original_NumBedrooms IS NULL)) AND (([NumBaths] = @original_NumBaths) OR ([NumBaths] IS NULL AND @original_NumBaths IS NULL)) AND (([Size] = @original_Size) OR ([Size] IS NULL AND @original_Size IS NULL)) AND (([Garage] = @original_Garage) OR ([Garage] IS NULL AND @original_Garage IS NULL)) AND (([FloorLocation] = @original_FloorLocation) OR ([FloorLocation] IS NULL AND @original_FloorLocation IS NULL)) AND (([BaseRent] = @original_BaseRent) OR ([BaseRent] IS NULL AND @original_BaseRent IS NULL)) AND (([AccessCredit] = @original_AccessCredit) OR ([AccessCredit] IS NULL AND @original_AccessCredit IS NULL)) AND (([BaseUtilities] = @original_BaseUtilities) OR ([BaseUtilities] IS NULL AND @original_BaseUtilities IS NULL)) AND (([WashDryCost] = @original_WashDryCost) OR ([WashDryCost] IS NULL AND @original_WashDryCost IS NULL)) AND (([GasInclude] = @original_GasInclude) OR ([GasInclude] IS NULL AND @original_GasInclude IS NULL)) AND (([WaterInclude] = @original_WaterInclude) OR ([WaterInclude] IS NULL AND @original_WaterInclude IS NULL)) AND (([ElectricInclude] = @original_ElectricInclude) OR ([ElectricInclude] IS NULL AND @original_ElectricInclude IS NULL)) AND (([DatePurchase] = @original_DatePurchase) OR ([DatePurchase] IS NULL AND @original_DatePurchase IS NULL)) AND (([WeeklyIncomeMultiplier] = @original_WeeklyIncomeMultiplier) OR ([WeeklyIncomeMultiplier] IS NULL AND @original_WeeklyIncomeMultiplier IS NULL)) AND (([SchoolDistrict] = @original_SchoolDistrict) OR ([SchoolDistrict] IS NULL AND @original_SchoolDistrict IS NULL)) AND (([OtherFeatures] = @original_OtherFeatures) OR ([OtherFeatures] IS NULL AND @original_OtherFeatures IS NULL)) AND (([EligibleForEmpDiscount] = @original_EligibleForEmpDiscount) OR ([EligibleForEmpDiscount] IS NULL AND @original_EligibleForEmpDiscount IS NULL)) AND (([YardiPropertyCode] = @original_YardiPropertyCode) OR ([YardiPropertyCode] IS NULL AND @original_YardiPropertyCode IS NULL)) AND (([LLCName] = @original_LLCName) OR ([LLCName] IS NULL AND @original_LLCName IS NULL)) AND (([WasherDryerHookups] = @original_WasherDryerHookups) OR ([WasherDryerHookups] IS NULL AND @original_WasherDryerHookups IS NULL)) AND (([Occupied] = @original_Occupied) OR ([Occupied] IS NULL AND @original_Occupied IS NULL)) AND (([LastMoveIn] = @original_LastMoveIn) OR ([LastMoveIn] IS NULL AND @original_LastMoveIn IS NULL)) AND (([LastMoveOut] = @original_LastMoveOut) OR ([LastMoveOut] IS NULL AND @original_LastMoveOut IS NULL)) AND (([LastRent] = @original_LastRent) OR ([LastRent] IS NULL AND @original_LastRent IS NULL)) AND (([userInput] = @original_userInput) OR ([userInput] IS NULL AND @original_userInput IS NULL)) AND (([inputDate] = @original_inputDate) OR ([inputDate] IS NULL AND @original_inputDate IS NULL)) AND (([GasAdditional] = @original_GasAdditional) OR ([GasAdditional] IS NULL AND @original_GasAdditional IS NULL)) AND (([WaterAdditional] = @original_WaterAdditional) OR ([WaterAdditional] IS NULL AND @original_WaterAdditional IS NULL)) AND (([ElectricAdditional] = @original_ElectricAdditional) OR ([ElectricAdditional] IS NULL AND @original_ElectricAdditional IS NULL)) AND (([rentReady] = @original_rentReady) OR ([rentReady] IS NULL AND @original_rentReady IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_PropertyID" Type="Int64" />
                <asp:Parameter Name="original_CompleteAddress" Type="String" />
                <asp:Parameter Name="original_StreetAddress" Type="String" />
                <asp:Parameter Name="original_AptNum" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_Zip" Type="Double" />
                <asp:Parameter Name="original_HousingType" Type="Double" />
                <asp:Parameter Name="original_NumBedrooms" Type="Double" />
                <asp:Parameter Name="original_NumBaths" Type="Double" />
                <asp:Parameter Name="original_Size" Type="String" />
                <asp:Parameter Name="original_Garage" Type="Boolean" />
                <asp:Parameter Name="original_FloorLocation" Type="String" />
                <asp:Parameter Name="original_BaseRent" Type="Decimal" />
                <asp:Parameter Name="original_AccessCredit" Type="Double" />
                <asp:Parameter Name="original_BaseUtilities" Type="Decimal" />
                <asp:Parameter Name="original_WashDryCost" Type="Decimal" />
                <asp:Parameter Name="original_GasInclude" Type="Boolean" />
                <asp:Parameter Name="original_WaterInclude" Type="Boolean" />
                <asp:Parameter Name="original_ElectricInclude" Type="Boolean" />
                <asp:Parameter Name="original_DatePurchase" DbType="Date" />
                <asp:Parameter Name="original_WeeklyIncomeMultiplier" Type="String" />
                <asp:Parameter Name="original_SchoolDistrict" Type="String" />
                <asp:Parameter Name="original_OtherFeatures" Type="String" />
                <asp:Parameter Name="original_EligibleForEmpDiscount" Type="Boolean" />
                <asp:Parameter Name="original_YardiPropertyCode" Type="String" />
                <asp:Parameter Name="original_LLCName" Type="String" />
                <asp:Parameter Name="original_WasherDryerHookups" Type="Boolean" />
                <asp:Parameter Name="original_Occupied" Type="Boolean" />
                <asp:Parameter Name="original_LastMoveIn" DbType="Date" />
                <asp:Parameter Name="original_LastMoveOut" DbType="Date" />
                <asp:Parameter Name="original_LastRent" Type="Decimal" />
                <asp:Parameter Name="original_userInput" Type="String" />
                <asp:Parameter DbType="Date" Name="original_inputDate" />
                <asp:Parameter Name="original_GasAdditional" Type="Decimal" />
                <asp:Parameter Name="original_WaterAdditional" Type="Decimal" />
                <asp:Parameter Name="original_ElectricAdditional" Type="Decimal" />
                <asp:Parameter Name="original_rentReady" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CompleteAddress" Type="String" />
                <asp:Parameter Name="StreetAddress" Type="String" />
                <asp:Parameter Name="AptNum" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zip" Type="Double" />
                <asp:Parameter Name="HousingType" Type="Double" />
                <asp:Parameter Name="NumBedrooms" Type="Double" />
                <asp:Parameter Name="NumBaths" Type="Double" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="Garage" Type="Boolean" />
                <asp:Parameter Name="FloorLocation" Type="String" />
                <asp:Parameter Name="BaseRent" Type="Decimal" />
                <asp:Parameter Name="AccessCredit" Type="Double" />
                <asp:Parameter Name="BaseUtilities" Type="Decimal" />
                <asp:Parameter Name="WashDryCost" Type="Decimal" />
                <asp:Parameter Name="GasInclude" Type="Boolean" />
                <asp:Parameter Name="WaterInclude" Type="Boolean" />
                <asp:Parameter Name="ElectricInclude" Type="Boolean" />
                <asp:Parameter Name="DatePurchase" DbType="Date" />
                <asp:Parameter Name="WeeklyIncomeMultiplier" Type="String" />
                <asp:Parameter Name="SchoolDistrict" Type="String" />
                <asp:Parameter Name="OtherFeatures" Type="String" />
                <asp:Parameter Name="EligibleForEmpDiscount" Type="Boolean" />
                <asp:Parameter Name="YardiPropertyCode" Type="String" />
                <asp:Parameter Name="LLCName" Type="String" />
                <asp:Parameter Name="WasherDryerHookups" Type="Boolean" />
                <asp:Parameter Name="Occupied" Type="Boolean" />
                <asp:Parameter Name="LastMoveIn" DbType="Date" />
                <asp:Parameter Name="LastMoveOut" DbType="Date" />
                <asp:Parameter Name="LastRent" Type="Decimal" />
				<asp:Parameter Name="userInput" Type="String" />
                <asp:Parameter Name="inputDate" DbType="Date" />
                <asp:Parameter Name="GasAdditional" Type="Decimal" />
                <asp:Parameter Name="WaterAdditional" Type="Decimal" />
                <asp:Parameter Name="ElectricAdditional" Type="Decimal" />
                <asp:Parameter Name="rentReady" Type="Boolean" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSelectProperty" 
                    Name="PropertyID" PropertyName="SelectedValue" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CompleteAddress" Type="String" />
                <asp:Parameter Name="StreetAddress" Type="String" />
                <asp:Parameter Name="AptNum" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zip" Type="Double" />
                <asp:Parameter Name="HousingType" Type="Double" />
                <asp:Parameter Name="NumBedrooms" Type="Double" />
                <asp:Parameter Name="NumBaths" Type="Double" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="Garage" Type="Boolean" />
                <asp:Parameter Name="FloorLocation" Type="String" />
                <asp:Parameter Name="BaseRent" Type="Decimal" />
                <asp:Parameter Name="AccessCredit" Type="Double" />
                <asp:Parameter Name="BaseUtilities" Type="Decimal" />
                <asp:Parameter Name="WashDryCost" Type="Decimal" />
                <asp:Parameter Name="GasInclude" Type="Boolean" />
                <asp:Parameter Name="WaterInclude" Type="Boolean" />
                <asp:Parameter Name="ElectricInclude" Type="Boolean" />
                <asp:Parameter Name="DatePurchase" DbType="Date" />
                <asp:Parameter Name="WeeklyIncomeMultiplier" Type="String" />
                <asp:Parameter Name="SchoolDistrict" Type="String" />
                <asp:Parameter Name="OtherFeatures" Type="String" />
                <asp:Parameter Name="EligibleForEmpDiscount" Type="Boolean" />
                <asp:Parameter Name="YardiPropertyCode" Type="String" />
                <asp:Parameter Name="LLCName" Type="String" />
                <asp:Parameter Name="WasherDryerHookups" Type="Boolean" />
                <asp:Parameter Name="Occupied" Type="Boolean" />
                <asp:Parameter Name="LastMoveIn" DbType="Date" />
                <asp:Parameter Name="LastMoveOut" DbType="Date" />
                <asp:Parameter Name="LastRent" Type="Decimal" />
                <asp:Parameter Name="userInput" Type="String" />
                <asp:Parameter Name="inputDate" DbType="Date" />
                <asp:Parameter Name="GasAdditional" Type="Decimal" />
                <asp:Parameter Name="WaterAdditional" Type="Decimal" />
                <asp:Parameter Name="ElectricAdditional" Type="Decimal" />
                <asp:Parameter Name="rentReady" Type="Boolean" />
                <asp:Parameter Name="original_PropertyID" Type="Int64" />
                <asp:Parameter Name="original_CompleteAddress" Type="String" />
                <asp:Parameter Name="original_StreetAddress" Type="String" />
                <asp:Parameter Name="original_AptNum" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_Zip" Type="Double" />
                <asp:Parameter Name="original_HousingType" Type="Double" />
                <asp:Parameter Name="original_NumBedrooms" Type="Double" />
                <asp:Parameter Name="original_NumBaths" Type="Double" />
                <asp:Parameter Name="original_Size" Type="String" />
                <asp:Parameter Name="original_Garage" Type="Boolean" />
                <asp:Parameter Name="original_FloorLocation" Type="String" />
                <asp:Parameter Name="original_BaseRent" Type="Decimal" />
                <asp:Parameter Name="original_AccessCredit" Type="Double" />
                <asp:Parameter Name="original_BaseUtilities" Type="Decimal" />
                <asp:Parameter Name="original_WashDryCost" Type="Decimal" />
                <asp:Parameter Name="original_GasInclude" Type="Boolean" />
                <asp:Parameter Name="original_WaterInclude" Type="Boolean" />
                <asp:Parameter Name="original_ElectricInclude" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="original_DatePurchase" />
                <asp:Parameter Name="original_WeeklyIncomeMultiplier" Type="String" />
                <asp:Parameter Name="original_SchoolDistrict" Type="String" />
                <asp:Parameter Name="original_OtherFeatures" Type="String" />
                <asp:Parameter Name="original_EligibleForEmpDiscount" Type="Boolean" />
                <asp:Parameter Name="original_YardiPropertyCode" Type="String" />
                <asp:Parameter Name="original_LLCName" Type="String" />
                <asp:Parameter Name="original_WasherDryerHookups" Type="Boolean" />
                <asp:Parameter Name="original_Occupied" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="original_LastMoveIn" />
                <asp:Parameter DbType="Date" Name="original_LastMoveOut" />
                <asp:Parameter Name="original_LastRent" Type="Decimal" />
                <asp:Parameter Name="original_userInput" Type="String" />
                <asp:Parameter DbType="Date" Name="original_inputDate" />
                <asp:Parameter Name="original_GasAdditional" Type="Decimal" />
                <asp:Parameter Name="original_WaterAdditional" Type="Decimal" />
                <asp:Parameter Name="original_ElectricAdditional" Type="Decimal" />
                <asp:Parameter Name="original_rentReady" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
</asp:Content>