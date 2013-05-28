<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="NewApplicant.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
       
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        New Applicant Personal Information</h2>
       
    <p>
        <asp:Label ID="lblInitialQ" runat="server" 
            Text="Initial Screening Questions(1 -7)"></asp:Label>
        : General Information about the Applicant</p>

 <div style="float:left; width:700px; position:relative;">   
 <p>
         <asp:FormView ID="FormView2" runat="server" DataKeyNames="ScreeningID" 
            DataSourceID="SqlDataSource2" DefaultMode="Insert">
            <EditItemTemplate>
                ScreeningID:
                <asp:Label ID="ScreeningIDLabel1" runat="server" 
                    Text='<%# Eval("ScreeningID") %>' />
                <br />
                ScreeningDate:
                <asp:TextBox ID="ScreeningDateTextBox" runat="server" 
                    Text='<%# Bind("ScreeningDate") %>' />
                <br />
                ScreeningTime:
                <asp:TextBox ID="ScreeningTimeTextBox" runat="server" 
                    Text='<%# Bind("ScreeningTime") %>' />
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
                RequiredWD:
                <asp:CheckBox ID="RequiredWDCheckBox" runat="server" 
                    Checked='<%# Bind("RequiredWD") %>' />
                <br />
                TargetRent:
                <asp:TextBox ID="TargetRentTextBox" runat="server" 
                    Text='<%# Bind("TargetRent") %>' />
                <br />
                BrokenLease:
                <asp:CheckBox ID="BrokenLeaseCheckBox" runat="server" 
                    Checked='<%# Bind("BrokenLease") %>' />
                <br />
                BrokenLeaseWhy:
                <asp:TextBox ID="BrokenLeaseWhyTextBox" runat="server" 
                    Text='<%# Bind("BrokenLeaseWhy") %>' />
                <br />
                OtherDesiredFeatures:
                <asp:TextBox ID="OtherDesiredFeaturesTextBox" runat="server" 
                    Text='<%# Bind("OtherDesiredFeatures") %>' />
                <br />
                FindOutAboutUs:
                <asp:TextBox ID="FindOutAboutUsTextBox" runat="server" 
                    Text='<%# Bind("FindOutAboutUs") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                
                 &nbsp;<table style="width: 102%; height: 102px;">
                     <tr>
                         <td align="right" class="style1">
                             How did you find out about us:</td>
                         <td>
                             <asp:TextBox ID="FindOutAboutUsTextBox" runat="server" 
                                 Text='<%# Bind("FindOutAboutUs") %>' />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                 ControlToValidate="FindOutAboutUsTextBox" Display="Dynamic" 
                                 ErrorMessage="Find Out About Us is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                         </td>
                      
                     </tr>
                     <tr>
                         <td align="right" class="style1">
                             Screening Time:</td>
                         <td>
                             <asp:TextBox ID="ScreeningTimeTextBox" runat="server" 
                                 Text='<%# Bind("ScreeningTime") %>' />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ControlToValidate="ScreeningTimeTextBox" Display="Dynamic" 
                                 ErrorMessage="Time is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                 <tr>
                         <td align="right" class="style1">
                Date Of Desired Occupancy:
                </td><td>
                <asp:TextBox ID="DateOfDesiredMoveInTextBox" runat="server" 
                    Text='<%# Bind("DateOfDesiredMoveIn") %>' />
                 <asp:CalendarExtender ID="CalendarExtender4" TargetControlID="DateOfDesiredMoveInTextBox" runat="server" />  
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DateOfDesiredMoveInTextBox" Display="Dynamic" 
                    ErrorMessage="Date is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               </td>
               </tr>
               <tr> <td align="right" class="style1">
                <br />
                Number Of Occupants:</td>
                <td>
                <asp:TextBox ID="NumOfOccupantsTextBox" runat="server" 
                    Text='<%# Bind("NumOfOccupants") %>' />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="NumOfOccupantsTextBox" Display="Dynamic" 
                    ErrorMessage="Number is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="NumOfOccupantsTextBox" Display="Dynamic" 
                    ErrorMessage="Invalid Number" ValidationGroup="AllValidators" 
                    ValidationExpression="\d+"></asp:RegularExpressionValidator>
               </td></tr>
                    
                         <br />
                         <tr>
                             <td align="right" class="style1">
                                 Required Number Bedrooms:</td>
                             <td>
                                 <asp:TextBox ID="RequiredNumBedTextBox" runat="server" 
                                     Text='<%# Bind("RequiredNumBed") %>' />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                     ControlToValidate="RequiredNumBedTextBox" Display="Dynamic" 
                                     ErrorMessage="Number is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                     ControlToValidate="RequiredNumBedTextBox" Display="Dynamic" 
                                     ErrorMessage="Invalid Number" ValidationExpression="\d+" 
                                     ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                             </td>
                         </tr>
                         <tr>
                             <td align="right" class="style1">
                                 <br />
                                 Required Number Bathrooms:</td>
                             <td>
                                 <asp:TextBox ID="RequiredNumBathTextBox" runat="server" 
                                     Text='<%# Bind("RequiredNumBath") %>' />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                     ControlToValidate="RequiredNumBathTextBox" Display="Dynamic" 
                                     ErrorMessage="Number is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                     ControlToValidate="RequiredNumBathTextBox" Display="Dynamic" 
                                     ErrorMessage="Invalid Number" ValidationExpression="\d+" 
                                     ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                             </td>
                         </tr>
                         <tr>
                             <td align="right" class="style1">
                                 
                             </td>
                             <td>
                             <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("RequiredWD") %>' 
                                     Text="W/D Hookup" />
                             </td>
                         </tr>
                         <tr>
                             <td align="right" class="style1">
                                 Term of Lease:
                             </td>
                             <td>
                                 <asp:TextBox ID="RequestLeaseTextBox" runat="server" 
                                     Text='<%# Bind("RequestLease") %>' />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                     ControlToValidate="RequestLeaseTextBox" Display="Dynamic" 
                                     ErrorMessage="Lease Term is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                             </td>
                         </tr>
                         
                             <br />
                             <tr>
                                 <td align="right" class="style1">
                                     Target Rent:</td>
                                 <td>
                                     <asp:TextBox ID="TargetRentTextBox" runat="server" 
                                         Text='<%# Bind("TargetRent") %>' />
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                         ControlToValidate="TargetRentTextBox" Display="Dynamic" 
                                         ErrorMessage="Number is Required." ValidationGroup="AllValidators">*</asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                         ControlToValidate="TargetRentTextBox" Display="Dynamic" 
                                         ErrorMessage="Invalid Number" ValidationExpression="\d+" 
                                         ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Other Desired Features:</td>
                                 <td>
                                     <asp:TextBox ID="TextBox8" runat="server" 
                                         Text='<%# Bind("OtherDesiredFeatures") %>' />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     <asp:CheckBox ID="CheckBox2" runat="server" 
                                         Checked='<%# Bind("BrokenLease") %>' 
                                         Text="Have you ever broken a lease or been evicted?" />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     If so, why was lease broken?:</td>
                                 <td>
                                     <asp:TextBox ID="TextBox9" runat="server" 
                                         Text='<%# Bind("BrokenLeaseWhy") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Any Non-Human Occupants:</td>
                                 <td>
                                     <asp:CheckBox ID="nonHumanOccupantsCheckBox" runat="server" 
                                         Checked='<%# Bind("nonHumanOccupants") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Kind of Pet 1:</td>
                                 <td>
                                     <asp:TextBox ID="PetKind1TextBox" runat="server" 
                                         Text='<%# Bind("PetKind1") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Weight of Pet 1:</td>
                                 <td>
                                     <asp:TextBox ID="PetWeight1TextBox" runat="server" 
                                         Text='<%# Bind("PetWeight1") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Age of Pet 1:</td>
                                 <td>
                                     <asp:TextBox ID="PetAge1TextBox" runat="server" Text='<%# Bind("PetAge1") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Breed of Pet 1:</td>
                                 <td>
                                     <asp:TextBox ID="PetBreed1TextBox" runat="server" 
                                         Text='<%# Bind("PetBreed1") %>' />
                                     <br />
                                 </td>
                             </tr>
                             
                             <tr>
                                 <td align="right" class="style1">
                                     Other Occupant #1: (Not including Applicant or Tenant)</td>
                                 <td>
                                     <asp:TextBox ID="OtherOccName1" runat="server" 
                                         Text='<%# Bind("OthOccName1") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Other Occupant #1 Relationship:</td>
                                 <td>
                                     <asp:TextBox ID="OtherOccRelationship1" runat="server" 
                                         Text='<%# Bind("OthOccRelationship1") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Other Occupant #1 Age:</td>
                                 <td>
                                     <asp:TextBox ID="OtherOccAge1" runat="server" 
                                         Text='<%# Bind("OthOccAge1") %>' />
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                         ControlToValidate="OtherOccAge1" Display="Dynamic" 
                                         ErrorMessage="Invalid Number" ValidationExpression="\d+" 
                                         ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Other Occupant #2: (Not including Applicant or Tenant)</td>
                                 <td>
                                     <asp:TextBox ID="OtherOccName2" runat="server" 
                                         Text='<%# Bind("OtherOccName2") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Other Occupant #2 Relationship:</td>
                                 <td>
                                     <asp:TextBox ID="OtherOccRelationship2" runat="server" 
                                         Text='<%# Bind("OtherOccRelationship2") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Other Occupant #2 Age:</td>
                                 <td>
                                     <asp:TextBox ID="OtherOccAge2" runat="server" 
                                         Text='<%# Bind("OtherOccAge2") %>' />
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                         ControlToValidate="OtherOccAge2" Display="Dynamic" 
                                         ErrorMessage="Invalid Number" ValidationExpression="\d+" 
                                         ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Other Occupant #3: (Not including Applicant or Tenant)</td>
                                 <td>
                                     <asp:TextBox ID="OtherOccName3" runat="server" 
                                         Text='<%# Bind("OthOccName3") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Other Occupant #3 Relationship:</td>
                                 <td>
                                     <asp:TextBox ID="OtherOccRelationship3" runat="server" 
                                         Text='<%# Bind("OtherOccRelationship3") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Other Occupant #3 Age:</td>
                                 <td>
                                     <asp:TextBox ID="OtherOccAge3" runat="server" 
                                         Text='<%# Bind("OtherOccAge3") %>' />
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                         ControlToValidate="OtherOccAge3" Display="Dynamic" 
                                         ErrorMessage="Invalid Number" ValidationExpression="\d+" 
                                         ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Total Number of Additional Non Related Occupants</td>
                                 <td>
                                     <br />
                                     <asp:TextBox ID="NumNonRelated" runat="server" 
                                         Text='<%# Bind("NumNonRelated") %>' />
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                                         ControlToValidate="NumNonRelated" Display="Dynamic" 
                                         ErrorMessage="Invalid Number" ValidationExpression="\d+" 
                                         ValidationGroup="AllValidators"></asp:RegularExpressionValidator>
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Spouse Included (Dual Income): </td>
                                 <td>
                                     <asp:CheckBox ID="spouseIncludedCheckBox" runat="server"
                                         Checked='<%# Bind("spouseIncluded") %>' />
                                     <br />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="style1">
                                     Demeanor of Applicant:
                                    </td>
                                 <td>
                                      <asp:DropDownList ID="DropDownList1" runat="server" 
                                          SelectedValue= '<%# Bind("Demeanor") %>'>
                                          <asp:ListItem Value="Excellent"></asp:ListItem>
                                          <asp:ListItem Value="Good"></asp:ListItem>
                                          <asp:ListItem Value="Fair"></asp:ListItem>
                                          <asp:ListItem Value="Poor"></asp:ListItem>
                                      </asp:DropDownList>
                                 </td>
                             </tr>
                                   <tr>
                                 <td align="right" class="style1">
                                     Additional Pet:</td>
                                 <td>
                                     <asp:Checkbox ID="Checkbox3" runat="server" 
                                         Checked='<%# Bind("AdditionalPet") %>' />
                                     <br />
                                 </td>
                             </tr>
                              <tr>
                                 <td align="right" class="style1">
                                     Either Pet Over Weight/Breed Restriction:</td>
                                 <td>
                                     <asp:Checkbox ID="Checkbox4" runat="server" 
                                         Checked='<%# Bind("PetOver") %>' />
                                     <br />
                                 </td>
                             </tr>
                              <tr>
                                 <td align="right" class="style1">
                                     Include Washer and Dryer in Rent:</td>
                                 <td>
                                     <asp:Checkbox ID="Checkbox5" runat="server" 
                                         Checked='<%# Bind("IncludeWD") %>' />
                                     <br />
                                 </td>
                             </tr>
                              <tr>
                                 <td align="right" class="style1">
                                     Include Utilities, If Available:</td>
                                 <td>
                                     <asp:Checkbox ID="Checkbox6" runat="server" 
                                         Checked='<%# Bind("UtilitiesInc") %>' />
                                     <br />
                                 </td>
                             </tr>
                                                          <tr>
                                 <td>
                                     
                                 </td>
                                 <td><asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
                                         CommandName="Insert" Text="Save Screening Form" 
                                         ValidationGroup="AllValidators" /> &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="True" 
                                         CommandName="Cancel" Text="Cancel" />
                                 </td>
                             </tr>
                        
                    </table>
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
                ScreeningTime:
                <asp:Label ID="ScreeningTimeLabel" runat="server" 
                    Text='<%# Bind("ScreeningTime") %>' />
                <br />
                DateOfDesiredMoveIn:
                <asp:Label ID="DateOfDesiredMoveInLabel" runat="server" 
                    Text='<%# Bind("DateOfDesiredMoveIn") %>' />
                <br />
                NumOfOccupants:
                <asp:Label ID="NumOfOccupantsLabel" runat="server" 
                    Text='<%# Bind("NumOfOccupants") %>' />
                <br />
                RequiredNumBed:
                <asp:Label ID="RequiredNumBedLabel" runat="server" 
                    Text='<%# Bind("RequiredNumBed") %>' />
                <br />
                RequiredNumBath:
                <asp:Label ID="RequiredNumBathLabel" runat="server" 
                    Text='<%# Bind("RequiredNumBath") %>' />
                <br />
                RequiredWD:
                <asp:CheckBox ID="RequiredWDCheckBox" runat="server" 
                    Checked='<%# Bind("RequiredWD") %>' Enabled="false" />
                <br />
                TargetRent:
                <asp:Label ID="TargetRentLabel" runat="server" 
                    Text='<%# Bind("TargetRent") %>' />
                <br />
                BrokenLease:
                <asp:CheckBox ID="BrokenLeaseCheckBox" runat="server" 
                    Checked='<%# Bind("BrokenLease") %>' Enabled="false" />
                <br />
                BrokenLeaseWhy:
                <asp:Label ID="BrokenLeaseWhyLabel" runat="server" 
                    Text='<%# Bind("BrokenLeaseWhy") %>' />
                <br />
                OtherDesiredFeatures:
                <asp:Label ID="OtherDesiredFeaturesLabel" runat="server" 
                    Text='<%# Bind("OtherDesiredFeatures") %>' />
                <br />
                FindOutAboutUs:
                <asp:Label ID="FindOutAboutUsLabel" runat="server" 
                    Text='<%# Bind("FindOutAboutUs") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConflictDetection="OverwriteChanges" 
            ConnectionString="<%$ ConnectionStrings:RNARentalApplicationConnectionString %>" 
            DeleteCommand="DELETE FROM [Screening] WHERE [ScreeningID] = @original_ScreeningID AND (([ScreeningDate] = @original_ScreeningDate) OR ([ScreeningDate] IS NULL AND @original_ScreeningDate IS NULL)) AND (([ScreeningTime] = @original_ScreeningTime) OR ([ScreeningTime] IS NULL AND @original_ScreeningTime IS NULL)) AND (([DateOfDesiredMoveIn] = @original_DateOfDesiredMoveIn) OR ([DateOfDesiredMoveIn] IS NULL AND @original_DateOfDesiredMoveIn IS NULL)) AND (([NumOfOccupants] = @original_NumOfOccupants) OR ([NumOfOccupants] IS NULL AND @original_NumOfOccupants IS NULL)) AND (([RequiredNumBed] = @original_RequiredNumBed) OR ([RequiredNumBed] IS NULL AND @original_RequiredNumBed IS NULL)) AND (([RequiredNumBath] = @original_RequiredNumBath) OR ([RequiredNumBath] IS NULL AND @original_RequiredNumBath IS NULL)) AND (([RequiredWD] = @original_RequiredWD) OR ([RequiredWD] IS NULL AND @original_RequiredWD IS NULL)) AND (([TargetRent] = @original_TargetRent) OR ([TargetRent] IS NULL AND @original_TargetRent IS NULL)) AND (([BrokenLease] = @original_BrokenLease) OR ([BrokenLease] IS NULL AND @original_BrokenLease IS NULL)) AND (([BrokenLeaseWhy] = @original_BrokenLeaseWhy) OR ([BrokenLeaseWhy] IS NULL AND @original_BrokenLeaseWhy IS NULL)) AND (([OtherDesiredFeatures] = @original_OtherDesiredFeatures) OR ([OtherDesiredFeatures] IS NULL AND @original_OtherDesiredFeatures IS NULL)) AND (([FindOutAboutUs] = @original_FindOutAboutUs) OR ([FindOutAboutUs] IS NULL AND @original_FindOutAboutUs IS NULL))" 
            InsertCommand="INSERT INTO [Screening] ([ScreeningDate], [ScreeningTime], [DateOfDesiredMoveIn], [NumOfOccupants], [RequiredNumBed], [RequiredNumBath], [RequiredWD], [TargetRent], [BrokenLease], [BrokenLeaseWhy], [OtherDesiredFeatures], [FindOutAboutUs], [OthOccName1], [OthOccRelationship1], [OthOccAge1], [OthOccName2], [OthOccRelationship2], [OthOccAge2], [OthOccName3], [OthOccRelationship3], [OthOccAge3], [nonHumanOccupants], [PetKind1], [PetWeight1], [PetAge1], [PetBreed1], [numNonRelated], [spouseIncluded], [Demeanor], [AdditionalPet], [PetOver], [IncludeWD], [UtilitiesInc]) VALUES (@ScreeningDate, @ScreeningTime, @DateOfDesiredMoveIn, @NumOfOccupants, @RequiredNumBed, @RequiredNumBath, @RequiredWD, @TargetRent, @BrokenLease, @BrokenLeaseWhy, @OtherDesiredFeatures, @FindOutAboutUs, @OthOccName1, @OthOccRelationship1, @OthOccAge1, @OthOccName2, @OthOccRelationship2, @OthOccAge2, @OthOccName3, @OthOccRelationship3, @OthOccAge3, @nonHumanOccupants, @PetKind1, @PetWeight1, @PetAge1, @PetBreed1, @numNonRelated, @spouseIncluded, @Demeanor,  @AdditionalPet, @PetOver, @IncludeWD, @UtilitiesInc); SET @newID = SCOPE_IDENTITY()" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [ScreeningID], [ScreeningDate], [ScreeningTime], [DateOfDesiredMoveIn], [NumOfOccupants], [RequiredNumBed], [RequiredNumBath], [RequiredWD], [TargetRent], [BrokenLease], [BrokenLeaseWhy], [OtherDesiredFeatures], [FindOutAboutUs], [spouseIncluded], [AdditionalPet], [PetOver], [IncludeWD], [UtilitiesInc] FROM [Screening]" 
            UpdateCommand="UPDATE [Screening] SET [ScreeningDate] = @ScreeningDate, [ScreeningTime] = @ScreeningTime, [DateOfDesiredMoveIn] = @DateOfDesiredMoveIn, [NumOfOccupants] = @NumOfOccupants, [RequiredNumBed] = @RequiredNumBed, [RequiredNumBath] = @RequiredNumBath, [RequiredWD] = @RequiredWD, [TargetRent] = @TargetRent, [BrokenLease] = @BrokenLease, [BrokenLeaseWhy] = @BrokenLeaseWhy, [OtherDesiredFeatures] = @OtherDesiredFeatures, [FindOutAboutUs] = @FindOutAboutUs WHERE [ScreeningID] = @original_ScreeningID AND (([ScreeningDate] = @original_ScreeningDate) OR ([ScreeningDate] IS NULL AND @original_ScreeningDate IS NULL)) AND (([ScreeningTime] = @original_ScreeningTime) OR ([ScreeningTime] IS NULL AND @original_ScreeningTime IS NULL)) AND (([DateOfDesiredMoveIn] = @original_DateOfDesiredMoveIn) OR ([DateOfDesiredMoveIn] IS NULL AND @original_DateOfDesiredMoveIn IS NULL)) AND (([NumOfOccupants] = @original_NumOfOccupants) OR ([NumOfOccupants] IS NULL AND @original_NumOfOccupants IS NULL)) AND (([RequiredNumBed] = @original_RequiredNumBed) OR ([RequiredNumBed] IS NULL AND @original_RequiredNumBed IS NULL)) AND (([RequiredNumBath] = @original_RequiredNumBath) OR ([RequiredNumBath] IS NULL AND @original_RequiredNumBath IS NULL)) AND (([RequiredWD] = @original_RequiredWD) OR ([RequiredWD] IS NULL AND @original_RequiredWD IS NULL)) AND (([TargetRent] = @original_TargetRent) OR ([TargetRent] IS NULL AND @original_TargetRent IS NULL)) AND (([BrokenLease] = @original_BrokenLease) OR ([BrokenLease] IS NULL AND @original_BrokenLease IS NULL)) AND (([BrokenLeaseWhy] = @original_BrokenLeaseWhy) OR ([BrokenLeaseWhy] IS NULL AND @original_BrokenLeaseWhy IS NULL)) AND (([OtherDesiredFeatures] = @original_OtherDesiredFeatures) OR ([OtherDesiredFeatures] IS NULL AND @original_OtherDesiredFeatures IS NULL)) AND (([FindOutAboutUs] = @original_FindOutAboutUs) OR ([FindOutAboutUs] IS NULL AND @original_FindOutAboutUs IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ScreeningID" Type="Int64" />
                <asp:Parameter DbType="Date" Name="original_ScreeningDate" />
                <asp:Parameter Name="original_ScreeningTime" Type="String" />
                <asp:Parameter DbType="Date" Name="original_DateOfDesiredMoveIn" />
                <asp:Parameter Name="original_NumOfOccupants" Type="String" />
                <asp:Parameter Name="original_RequiredNumBed" Type="Int16" />
                <asp:Parameter Name="original_RequiredNumBath" Type="Int16" />
                <asp:Parameter Name="original_RequiredWD" Type="Boolean" />
                <asp:Parameter Name="original_TargetRent" Type="Decimal" />
                <asp:Parameter Name="original_BrokenLease" Type="Boolean" />
                <asp:Parameter Name="original_BrokenLeaseWhy" Type="String" />
                <asp:Parameter Name="original_OtherDesiredFeatures" Type="String" />
                <asp:Parameter Name="original_FindOutAboutUs" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="ScreeningDate" />
                <asp:Parameter Name="ScreeningTime" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfDesiredMoveIn" />
                <asp:Parameter Name="NumOfOccupants" Type="String" />
                <asp:Parameter Name="RequiredNumBed" Type="Int16" />
                <asp:Parameter Name="RequiredNumBath" Type="Int16" />
                <asp:Parameter Name="RequiredWD" Type="Boolean" />
                <asp:Parameter Name="TargetRent" Type="Decimal" />
                <asp:Parameter Name="BrokenLease" Type="Boolean" />
                <asp:Parameter Name="BrokenLeaseWhy" Type="String" />
                <asp:Parameter Name="OtherDesiredFeatures" Type="String" />
                <asp:Parameter Name="FindOutAboutUs" Type="String" />
                <asp:Parameter Name="newID" Type="Int32" Direction="Output" />
                <asp:Parameter Name="OthOccName1" Type="String" /> 
                <asp:Parameter Name="OthOccRelationship1" Type="String" /> 
                <asp:Parameter Name="OthOccAge1" Type="String" />
                <asp:Parameter Name="OthOccName2" Type="String" /> 
                <asp:Parameter Name="OthOccRelationship2" Type="String" /> 
                <asp:Parameter Name="OthOccAge2" Type="String" />
                <asp:Parameter Name="OthOccName3" Type="String" /> 
                <asp:Parameter Name="OthOccRelationship3" Type="String" /> 
                <asp:Parameter Name="OthOccAge3" Type="String" />
				<asp:Parameter Name="nonHumanOccupants" Type="Boolean" />
                <asp:Parameter Name="PetKind1" Type="String" />
                <asp:Parameter Name="PetWeight1" Type="String" />
				<asp:Parameter Name="PetAge1" Type="String" />
				<asp:Parameter Name="PetBreed1" Type="String" />
                <asp:Parameter Name="spouseIncluded" Type="Boolean" />
                <asp:Parameter Name="numNonRelated" Type="String" />
                <asp:Parameter Name="Demeanor" Type="String" />
                <asp:Parameter Name="AdditionalPet" Type="Boolean" />
                <asp:Parameter Name="PetOver" Type="Boolean" />
                <asp:Parameter Name="IncludeWD" Type="Boolean" />
                <asp:Parameter Name="UtilitiesInc" Type="Boolean" />

            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="ScreeningDate" />
                <asp:Parameter Name="ScreeningTime" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfDesiredMoveIn" />
                <asp:Parameter Name="NumOfOccupants" Type="String" />
                <asp:Parameter Name="RequiredNumBed" Type="Int16" />
                <asp:Parameter Name="RequiredNumBath" Type="Int16" />
                <asp:Parameter Name="RequiredWD" Type="Boolean" />
                <asp:Parameter Name="TargetRent" Type="Decimal" />
                <asp:Parameter Name="BrokenLease" Type="Boolean" />
                <asp:Parameter Name="BrokenLeaseWhy" Type="String" />
                <asp:Parameter Name="OtherDesiredFeatures" Type="String" />
                <asp:Parameter Name="FindOutAboutUs" Type="String" />
                <asp:Parameter Name="original_ScreeningID" Type="Int64" />
                <asp:Parameter DbType="Date" Name="original_ScreeningDate" />
                <asp:Parameter Name="original_ScreeningTime" Type="String" />
                <asp:Parameter DbType="Date" Name="original_DateOfDesiredMoveIn" />
                <asp:Parameter Name="original_NumOfOccupants" Type="String" />
                <asp:Parameter Name="original_RequiredNumBed" Type="Int16" />
                <asp:Parameter Name="original_RequiredNumBath" Type="Int16" />
                <asp:Parameter Name="original_RequiredWD" Type="Boolean" />
                <asp:Parameter Name="original_TargetRent" Type="Decimal" />
                <asp:Parameter Name="original_BrokenLease" Type="Boolean" />
                <asp:Parameter Name="original_BrokenLeaseWhy" Type="String" />
                <asp:Parameter Name="original_OtherDesiredFeatures" Type="String" />
                <asp:Parameter Name="original_FindOutAboutUs" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
    </p>
</div>
<div style="float:left;" align="center"> 
<h2>The information entered on this screen will complete the information currently residing on the Rental Verification form below:</h2>
<br />
<br />
    <img src="Documents/GeneralInformation.png" />
    </div>
</asp:Content>
