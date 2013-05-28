<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="TenantManagement.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Tenant Management
    </h2>
    <h2>
        &nbsp;</h2>
    <p>
        <asp:DropDownList ID="ddlSelectTenant" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSourceDropDownTenant" DataTextField="CombinedName"
            DataValueField="TenantID" Height="18px" Width="415px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceDropDownTenant" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            DeleteCommand="DELETE FROM [Tenant] WHERE [TenantID] = @original_TenantID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [MiddleName] = @original_MiddleName" 
            InsertCommand="INSERT INTO [Tenant] ([FirstName], [LastName], [MiddleName]) VALUES (@FirstName, @LastName, @MiddleName)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [TenantID], [FirstName] + [MiddleName] + [LastName] As CombinedName FROM [Tenant]" 
            UpdateCommand="UPDATE [Tenant] SET [FirstName] = @FirstName, [LastName] = @LastName, [MiddleName] = @MiddleName WHERE [TenantID] = @original_TenantID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [MiddleName] = @original_MiddleName; SELECT @TenantIDNew = @@IDENTITY"
           >
            <DeleteParameters>
                <asp:Parameter Name="original_TenantID" Type="Int64" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_MiddleName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="MiddleName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="MiddleName" Type="String" />
                <asp:Parameter Name="original_TenantID" Type="Int64" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_MiddleName" Type="String" />
                <asp:parameter direction="Output" name="TenantIDNew" type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataSourceID="SqlRNADatabase" DataKeyNames="TenantID">
            <EditItemTemplate>
                First Name:
                <asp:TextBox ID="FirstNameTextBox" runat="server" 
                    Text='<%# Bind("FirstName") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FirstNameTextBox" Display="Dynamic" 
                    ErrorMessage="First Name is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                <br />
                Middle Name:
                <asp:TextBox ID="MiddleNameTextBox" runat="server" 
                    Text='<%# Bind("MiddleName") %>' />
              
                <br />
                Last Name:
                <asp:TextBox ID="LastNameTextBox" runat="server" 
                    Text='<%# Bind("LastName") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="LastNameTextBox" Display="Dynamic" 
                    ErrorMessage="Last Name is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                <br />
                Address1:
                <asp:TextBox ID="Address1TextBox" runat="server" 
                    Text='<%# Bind("Address1") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Address1TextBox" Display="Dynamic" 
                    ErrorMessage="An Address is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                Address2:
                <asp:TextBox ID="Address2TextBox" runat="server" 
                    Text='<%# Bind("Address2") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="CityTextBox" Display="Dynamic" 
                    ErrorMessage="City is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                State:
                <asp:SqlDataSource ID="SqlDataSourceState" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Bind("State") %>'>
                </asp:DropDownList>
                
                <br />
                Zip:
                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ZipTextBox" Display="Dynamic" 
                    ErrorMessage="Zip is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="ZipTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Zip code" ValidationGroup="AllValidators" 
                    ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
               
                <br />
                SSN:
                <asp:TextBox ID="SSNTextBox" runat="server" Text='<%# Bind("SSN") %>' />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="SSNTextBox" Display="Dynamic" 
                    ErrorMessage="SSN is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="SSNTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid SSN" ValidationGroup="AllValidators" 
                    ValidationExpression="\d{3}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
               
                <br />
                Driver License State:
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Bind("DriverLicenseState") %>'>
                </asp:DropDownList>  <br />
                Driver License Number:
                <asp:TextBox ID="DriverLicenseNumberTextBox" runat="server" 
                    Text='<%# Bind("DriverLicenseNumber") %>' />
                <br />
                Home Phone Number:
                <asp:TextBox ID="HomePhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("HomePhoneNumber") %>' />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="HomePhoneNumberTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               
                <br />
                Cell Phone Number:
                <asp:TextBox ID="CellPhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("CellPhoneNumber") %>' />
               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="CellPhoneNumberTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               
                <br />
                Work Phone Number:
                <asp:TextBox ID="WorkPhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("WorkPhoneNumber") %>' />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="WorkPhoneNumberTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               
                <br />
                Date Of Birth:
                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="DOBTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DOBTextBox" Display="Dynamic" 
                    ErrorMessage="DOB is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                TenantID:
                <asp:Label ID="TenantIDLabel1" runat="server" Text='<%# Eval("TenantID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" ValidationGroup="AllValidators" 
                   />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                First Name:
                <asp:TextBox ID="FirstNameTextBox" runat="server" 
                    Text='<%# Bind("FirstName") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FirstNameTextBox" Display="Dynamic" 
                    ErrorMessage="First Name is Required" ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                <br />
                Middle Name:
                <asp:TextBox ID="MiddleNameTextBox" runat="server" 
                    Text='<%# Bind("MiddleName") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="MiddleNameTextBox" Display="Dynamic" 
                    ErrorMessage="Middle Name is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                Last Name:
                <asp:TextBox ID="LastNameTextBox" runat="server" 
                    Text='<%# Bind("LastName") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="LastNameTextBox" Display="Dynamic" 
                    ErrorMessage="Last Name is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                <br />
                Address1:
                <asp:TextBox ID="Address1TextBox" runat="server" 
                    Text='<%# Bind("Address1") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Address1TextBox" Display="Dynamic" 
                    ErrorMessage="An Address is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                Address2:
                <asp:TextBox ID="Address2TextBox" runat="server" 
                    Text='<%# Bind("Address2") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="CityTextBox" Display="Dynamic" 
                    ErrorMessage="City is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                State:
               <asp:SqlDataSource ID="SqlDataSourceState" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Bind("State") %>'>
                </asp:DropDownList>
                <br />
                Zip:
                <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ZipTextBox" Display="Dynamic" 
                    ErrorMessage="Zip is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="ZipTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Zip code" ValidationGroup="AllValidators" 
                    ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
               
                <br />
                SSN:
                <asp:TextBox ID="SSNTextBox" runat="server" Text='<%# Bind("SSN") %>' />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="SSNTextBox" Display="Dynamic" 
                    ErrorMessage="SSN is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="SSNTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid SSN" ValidationGroup="AllValidators" 
                    ValidationExpression="\d{3}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
               
                <br />
                Driver License State:
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Bind("DriverLicenseState") %>'>
                </asp:DropDownList>
                <br />
                Driver License Number:
                <asp:TextBox ID="DriverLicenseNumberTextBox" runat="server" 
                    Text='<%# Bind("DriverLicenseNumber") %>' />
                <br />
                Home Phone Number:
                <asp:TextBox ID="HomePhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("HomePhoneNumber") %>' />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="HomePhoneNumberTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               
                <br />
                Cell Phone Number:
                <asp:TextBox ID="CellPhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("CellPhoneNumber") %>' />
               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="CellPhoneNumberTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               
                <br />
                Work Phone Number:
                <asp:TextBox ID="WorkPhoneNumberTextBox" runat="server" 
                    Text='<%# Bind("WorkPhoneNumber") %>' />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="WorkPhoneNumberTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Phone Number" ValidationGroup="AllValidators" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
               
                <br />
                Date Of Birth:
                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="DOBTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DOBTextBox" Display="Dynamic" 
                    ErrorMessage="DOB is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <br />
                
                <asp:TextBox ID="UserInputTextBox" runat="server" 
                    Text='<%# Bind("UserInput") %>' Visible="False" />
                <asp:TextBox ID="InputDateTextBox" runat="server" 
                    Text='<%# Bind("InputDate") %>' Visible="False" />
                
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" ValidationGroup="AllValidators" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
            <asp:TextBox ID="UserInputTextBox" runat="server" 
                    Text='<%# Bind("UserInput") %>' Visible="false" />
                <asp:TextBox ID="InputDateTextBox" runat="server" 
                    Text='<%# Bind("InputDate") %>' Visible="FALSE" />
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                MiddleName:
                <asp:Label ID="MiddleNameLabel" runat="server" 
                    Text='<%# Bind("MiddleName") %>' />
                <br />
                Address1:
                <asp:Label ID="Address1Label" runat="server" Text='<%# Bind("Address1") %>' />
                <br />
                Address2:
                <asp:Label ID="Address2Label" runat="server" Text='<%# Bind("Address2") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' 
                    Visible="False" />
                 <asp:SqlDataSource ID="SqlDataSourceState" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Eval("State") %>' Enabled = "False">
                </asp:DropDownList>
                <br />
                Zip:
                <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
                <br />
                SSN:
                <asp:Label ID="SSNLabel" runat="server" Text='<%# Bind("SSN") %>' />
                <br />
                DriverLicenseState:
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("DriverLicenseState") %>' 
                    Visible="False" />
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList4" runat="server" 
                    DataSourceID="SqlDataSourceState" DataTextField="State" 
                    DataValueField="State" 
                    SelectedValue='<%# Eval("DriverLicenseState") %>' Enabled = false>
                </asp:DropDownList><br />
                DriverLicenseNumber:
                <asp:Label ID="DriverLicenseNumberLabel" runat="server" 
                    Text='<%# Bind("DriverLicenseNumber") %>' />
                <br />
                HomePhoneNumber:
                <asp:Label ID="HomePhoneNumberLabel" runat="server" 
                    Text='<%# Bind("HomePhoneNumber") %>' />
                <br />
                CellPhoneNumber:
                <asp:Label ID="CellPhoneNumberLabel" runat="server" 
                    Text='<%# Bind("CellPhoneNumber") %>' />
                <br />
                WorkPhoneNumber:
                <asp:Label ID="WorkPhoneNumberLabel" runat="server" 
                    Text='<%# Bind("WorkPhoneNumber") %>' />
                <br />
                DOB:
                <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                <br />

                TenantID:
                <asp:Label ID="TenantIDLabel" runat="server" Text='<%# Eval("TenantID") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlRNADatabase" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            
            SelectCommand="SELECT [TenantID], [FirstName], [LastName], [MiddleName], [Address1], [Address2], [City], [State], [Zip], [DOB], [WorkPhoneNumber], [CellPhoneNumber], [DriverLicenseState], [HomePhoneNumber], [DriverLicenseNumber], [SSN], [UserInput], [InputDate] FROM [Tenant] WHERE ([TenantID] = @TenantID)" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [Tenant] WHERE [TenantID] = @original_TenantID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [MiddleName] = @original_MiddleName AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([WorkPhoneNumber] = @original_WorkPhoneNumber) OR ([WorkPhoneNumber] IS NULL AND @original_WorkPhoneNumber IS NULL)) AND (([CellPhoneNumber] = @original_CellPhoneNumber) OR ([CellPhoneNumber] IS NULL AND @original_CellPhoneNumber IS NULL)) AND (([DriverLicenseState] = @original_DriverLicenseState) OR ([DriverLicenseState] IS NULL AND @original_DriverLicenseState IS NULL)) AND (([HomePhoneNumber] = @original_HomePhoneNumber) OR ([HomePhoneNumber] IS NULL AND @original_HomePhoneNumber IS NULL)) AND (([DriverLicenseNumber] = @original_DriverLicenseNumber) OR ([DriverLicenseNumber] IS NULL AND @original_DriverLicenseNumber IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL))" 
            InsertCommand="INSERT INTO [Tenant] ([FirstName], [LastName], [MiddleName], [Address1], [Address2], [City], [State], [Zip], [DOB], [WorkPhoneNumber], [CellPhoneNumber], [DriverLicenseState], [HomePhoneNumber], [DriverLicenseNumber], [SSN], [UserInput], [inputDate]) VALUES (@FirstName, @LastName, @MiddleName, @Address1, @Address2, @City, @State, @Zip, @DOB, @WorkPhoneNumber, @CellPhoneNumber, @DriverLicenseState, @HomePhoneNumber, @DriverLicenseNumber, @SSN, @UserInput, @inputDate)"
            OldValuesParameterFormatString="original_{0}" 
            
            UpdateCommand="UPDATE [Tenant] SET [FirstName] = @FirstName, [LastName] = @LastName, [MiddleName] = @MiddleName, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [Zip] = @Zip, [DOB] = @DOB, [WorkPhoneNumber] = @WorkPhoneNumber, [CellPhoneNumber] = @CellPhoneNumber, [DriverLicenseState] = @DriverLicenseState, [HomePhoneNumber] = @HomePhoneNumber, [DriverLicenseNumber] = @DriverLicenseNumber, [SSN] = @SSN, [UserInput] = @UserInput, [InputDate] = @InputDate WHERE [TenantID] = @original_TenantID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [MiddleName] = @original_MiddleName AND (([Address1] = @original_Address1) OR ([Address1] IS NULL AND @original_Address1 IS NULL)) AND (([Address2] = @original_Address2) OR ([Address2] IS NULL AND @original_Address2 IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([WorkPhoneNumber] = @original_WorkPhoneNumber) OR ([WorkPhoneNumber] IS NULL AND @original_WorkPhoneNumber IS NULL)) AND (([CellPhoneNumber] = @original_CellPhoneNumber) OR ([CellPhoneNumber] IS NULL AND @original_CellPhoneNumber IS NULL)) AND (([DriverLicenseState] = @original_DriverLicenseState) OR ([DriverLicenseState] IS NULL AND @original_DriverLicenseState IS NULL)) AND (([HomePhoneNumber] = @original_HomePhoneNumber) OR ([HomePhoneNumber] IS NULL AND @original_HomePhoneNumber IS NULL)) AND (([DriverLicenseNumber] = @original_DriverLicenseNumber) OR ([DriverLicenseNumber] IS NULL AND @original_DriverLicenseNumber IS NULL)) AND (([SSN] = @original_SSN) OR ([SSN] IS NULL AND @original_SSN IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TenantID" Type="Int64" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_MiddleName" Type="String" />
                <asp:Parameter Name="original_Address1" Type="String" />
                <asp:Parameter Name="original_Address2" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_Zip" Type="String" />
                <asp:Parameter Name="original_DOB" DbType="DateTime" />
                <asp:Parameter Name="original_WorkPhoneNumber" Type="String" />
                <asp:Parameter Name="original_CellPhoneNumber" Type="String" />
                <asp:Parameter Name="original_DriverLicenseState" Type="String" />
                <asp:Parameter Name="original_HomePhoneNumber" Type="String" />
                <asp:Parameter Name="original_DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="original_SSN" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="MiddleName" Type="String" />
                <asp:Parameter Name="Address1" Type="String" />
                <asp:Parameter Name="Address2" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter Name="DOB" DbType="DateTime" />
                <asp:Parameter Name="WorkPhoneNumber" Type="String" />
                <asp:Parameter Name="CellPhoneNumber" Type="String" />
                <asp:Parameter Name="DriverLicenseState" Type="String" />
                <asp:Parameter Name="HomePhoneNumber" Type="String" />
                <asp:Parameter Name="DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="SSN" Type="String" />
                <asp:Parameter Name="userInput" Type="String" />
                <asp:Parameter Name="inputDate" DbType="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSelectTenant" Name="TenantID" 
                    PropertyName="SelectedValue" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="MiddleName" Type="String" />
                <asp:Parameter Name="Address1" Type="String" />
                <asp:Parameter Name="Address2" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zip" Type="String" />
                <asp:Parameter DbType="DateTime" Name="DOB" />
                <asp:Parameter Name="WorkPhoneNumber" Type="String" />
                <asp:Parameter Name="CellPhoneNumber" Type="String" />
                <asp:Parameter Name="DriverLicenseState" Type="String" />
                <asp:Parameter Name="HomePhoneNumber" Type="String" />
                <asp:Parameter Name="DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="SSN" Type="String" />
                <asp:Parameter Name="original_TenantID" Type="Int64" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_MiddleName" Type="String" />
                <asp:Parameter Name="original_Address1" Type="String" />
                <asp:Parameter Name="original_Address2" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_Zip" Type="String" />
                <asp:Parameter DbType="DateTime" Name="original_DOB" />
                <asp:Parameter Name="original_WorkPhoneNumber" Type="String" />
                <asp:Parameter Name="original_CellPhoneNumber" Type="String" />
                <asp:Parameter Name="original_DriverLicenseState" Type="String" />
                <asp:Parameter Name="original_HomePhoneNumber" Type="String" />
                <asp:Parameter Name="original_DriverLicenseNumber" Type="String" />
                <asp:Parameter Name="original_SSN" Type="String" />
                
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
</p>
    <p>
        &nbsp;</p>
</asp:Content>