Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        ' Session("newScreeningID") = "43"
        Try

            'ddlSelectApplicant.DataBind()
            If Request.UrlReferrer.PathAndQuery.ToString = "/appleasing/ScreeningFormStatus.aspx" Or Request.UrlReferrer.PathAndQuery.ToString = "/appleasing/LeaseInput.aspx" Then
                Panel3.Visible = True
                Panel1.Visible = True
                GridView2.DataSourceID = "SqlDataSourceScreening"
                GridView1.DataSourceID = "SqlDataSource3"
                GridView4.DataSourceID = "SqlDataSourcePropApart"
                GridView6.DataSourceID = "SqlDataSource1"
                GridView5.DataSourceID = "SQLDSLease"

                GridView2.DataBind()
                GridView1.DataBind()
                GridView4.DataBind()
                GridView6.DataBind()
                GridView5.DataBind()

                Try
                    If Not IsPostBack Then
                        If Session("newScreeningID") = Nothing Then
                            Session("newScreeningID") = "43"
                        End If
                        ddlSelectApplicant.SelectedValue = Session("newscreeningid").ToString
                    Else
                        Session("newscreeningid") = ddlSelectApplicant.SelectedValue.ToString
                    End If
                Catch ex As Exception
                    Session("newScreeningID") = "43"
                    ddlSelectApplicant.SelectedValue = Session("newscreeningid").ToString
                End Try
                Try
                    Dim proID As Integer = GridView2.Rows(0).Cells(15).Text.ToString
                    Session("propertyID") = proID
                    GridView4.DataBind()
                Catch ex As Exception
                    Session("propertyID") = "99999"
                    GridView4.DataBind()
                End Try
                GridView5.DataBind()
                Try

                    If GridView5.Rows.Count > 0 And Not Convert.ToDateTime(GridView5.Rows(0).Cells(13).Text).ToShortDateString = "1/1/1900" Then
                        Panel1.Visible = False
                        FormView1.Visible = True

                        FormView1.DataBind()
                        Panel2.Visible = True
                    Else
                        Panel1.Visible = True
                        Panel2.Visible = False
                        FormView1.Visible = False
                        FormView1.DataBind()
                    End If
                    '  chkAPlus.Checked = CType(GridView5.Rows(0).Cells(72).Controls(0), CheckBox).Checked
                Catch
                End Try
            Else
                Panel3.Visible = False
                Panel1.Visible = False
                GridView2.DataSourceID = Nothing
                GridView1.DataSourceID = Nothing
                GridView4.DataSourceID = Nothing
                GridView5.DataSourceID = Nothing
                GridView6.DataSourceID = Nothing
            End If

        Catch ex As Exception
            Panel3.Visible = False
            Panel1.Visible = False
            GridView2.DataSourceID = Nothing
            GridView1.DataSourceID = Nothing
            GridView4.DataSourceID = Nothing
            GridView5.DataSourceID = Nothing
            GridView6.DataSourceID = Nothing
        End Try
    End Sub
    Protected Sub ddlSelectApplicant_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlSelectApplicant.DataBound
        Try

        Catch ex As Exception
            ddlSelectApplicant.SelectedValue = Session("newscreeningid").ToString
            GridView2.DataBind()
        End Try


        Try
            Dim proID As Integer = GridView2.Rows(0).Cells(15).Text.ToString
            Session("propertyID") = proID
            GridView4.DataBind()
        Catch ex As Exception
            Session("propertyID") = "99999"
            GridView4.DataBind()
        End Try
    End Sub

    Protected Sub ddlSelectApplicant_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlSelectApplicant.SelectedIndexChanged
        Try

       
        Try
            Session("newScreeningID") = ddlSelectApplicant.SelectedValue.ToString
            GridView1.DataBind()
            GridView2.DataBind()
        Catch ex As Exception

        End Try

        Try
            Dim proID As Integer = GridView2.Rows(0).Cells(15).Text.ToString
            Session("propertyID") = proID
            GridView4.DataBind()
        Catch ex As Exception
            Session("propertyID") = "99999"
            GridView4.DataBind()
        End Try
        GridView4.DataBind()
       
        txtCoTenant.Text = ""
        txtThird.Text = ""
        txtFourth.Text = ""
        txtPrimary.Text = ""
        GridView1.DataBind()
        GridView2.DataBind()
        Try

        txtPrimary.Text = Trim(GridView1.Rows(0).Cells(1).Text) & " " & Trim(GridView1.Rows(0).Cells(2).Text)
        If GridView1.Rows.Count > 1 Then
            txtCoTenant.Text = Trim(GridView1.Rows(1).Cells(1).Text) & " " & Trim(GridView1.Rows(1).Cells(2).Text)
        End If
        If GridView1.Rows.Count > 2 Then
            txtThird.Text = Trim(GridView1.Rows(2).Cells(1).Text) & " " & Trim(GridView1.Rows(2).Cells(2).Text)
        End If
        If GridView1.Rows.Count > 3 Then
            txtFourth.Text = Trim(GridView1.Rows(3).Cells(1).Text) & " " & Trim(GridView1.Rows(3).Cells(2).Text)
        End If

        If GridView6.Rows.Count > 0 Then
            txtCoSigner.Text = Trim(GridView6.Rows(0).Cells(0).Text) & " " & Trim(GridView6.Rows(0).Cells(3).Text)

        End If
        Catch ex As Exception

        End Try
        Dim electricCheckbox As CheckBox = CType(GridView4.Rows(0).Cells(19).Controls(0), CheckBox)
        Dim gasCheckbox As CheckBox = CType(GridView4.Rows(0).Cells(17).Controls(0), CheckBox)
        Dim waterCheckbox As CheckBox = CType(GridView4.Rows(0).Cells(18).Controls(0), CheckBox)

        If electricCheckbox.Checked Then
            ckElectric.Enabled = False
            ckElectric.Visible = False
            Label10.Visible = False

        End If

        If gasCheckbox.Checked Then
            ckGas.Enabled = False
            ckGas.Visible = False
            Label11.Visible = False

        End If

        If waterCheckbox.Checked Then
            ckWater.Enabled = False
            ckWater.Visible = False
            Label12.Visible = False
        End If
        Dim additionalGas As Decimal = Convert.ToDecimal(GridView4.Rows(0).Cells(34).Text)
        Dim additionalElectric As Decimal = Convert.ToDecimal(GridView4.Rows(0).Cells(36).Text)
        Dim additionalWater As Decimal = Convert.ToDecimal(GridView4.Rows(0).Cells(35).Text)

        If additionalElectric < 1 Then
            ckElectric.Visible = False
        End If
        If additionalGas < 1 Then
            ckGas.Visible = False
        End If
        If additionalWater < 1 Then
            ckWater.Visible = False
        End If

        GridView4.DataBind()
        GridView5.DataBind()
        FormView1.DataBind()

        If GridView5.Rows.Count > 0 And Not Convert.ToDateTime(GridView5.Rows(0).Cells(13).Text).ToShortDateString = "1/1/1900" Then
            Panel1.Visible = False

            FormView1.Visible = True

            FormView1.DataBind()
            Panel2.Visible = True
        Else
            Panel1.Visible = True
            Panel2.Visible = False
            FormView1.Visible = False
            FormView1.DataBind()
        End If
        chkAPlus.Checked = CType(GridView5.Rows(0).Cells(72).Controls(0), CheckBox).Checked
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub GridView5_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView5.Load
        Try
            txtPrimary.Text = Trim(GridView1.Rows(0).Cells(1).Text) & " " & Trim(GridView1.Rows(0).Cells(2).Text)
        If GridView1.Rows.Count > 1 Then
            txtCoTenant.Text = Trim(GridView1.Rows(1).Cells(1).Text) & " " & Trim(GridView1.Rows(1).Cells(2).Text)
        End If
        If GridView1.Rows.Count > 2 Then
            txtThird.Text = Trim(GridView1.Rows(2).Cells(1).Text) & " " & Trim(GridView1.Rows(2).Cells(2).Text)
        End If
        If GridView1.Rows.Count > 3 Then
            txtFourth.Text = Trim(GridView1.Rows(3).Cells(1).Text) & " " & Trim(GridView1.Rows(3).Cells(2).Text)
        End If

        Dim electricCheckbox As CheckBox = CType(GridView4.Rows(0).Cells(19).Controls(0), CheckBox)
        Dim gasCheckbox As CheckBox = CType(GridView4.Rows(0).Cells(17).Controls(0), CheckBox)
        Dim waterCheckbox As CheckBox = CType(GridView4.Rows(0).Cells(18).Controls(0), CheckBox)

        If electricCheckbox.Checked Then
            ckElectric.Enabled = False
            ckElectric.Visible = False
            Label10.Visible = False

        End If

        If gasCheckbox.Checked Then
            ckGas.Enabled = False
            ckGas.Visible = False
            Label11.Visible = False

        End If

        If waterCheckbox.Checked Then
            ckWater.Enabled = False
            ckWater.Visible = False
            Label12.Visible = False
        End If
        Dim additionalGas As Decimal = Convert.ToDecimal(GridView4.Rows(0).Cells(34).Text)
        Dim additionalElectric As Decimal = Convert.ToDecimal(GridView4.Rows(0).Cells(36).Text)
        Dim additionalWater As Decimal = Convert.ToDecimal(GridView4.Rows(0).Cells(35).Text)

        If additionalElectric < 1 Then
            ckElectric.Visible = False
        End If
        If additionalGas < 1 Then
            ckGas.Visible = False
        End If
        If additionalWater < 1 Then
            ckWater.Visible = False
        End If

        Catch ex As Exception

        End Try
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSaveData.Click
        Dim leaseID As Integer = Convert.ToInt16(GridView5.Rows(0).Cells(0).Text)

        Dim cellCount As Integer = GridView5.Rows(0).Cells.Count
        Dim dateCompleted As Date = Today.ToShortDateString.ToString
        Dim wordedDateCompleted As String = dateCompleted.Day.ToString & ", day of " & MonthName(dateCompleted.Month) & ", " & dateCompleted.Year.ToString
        Dim WasherDryerB As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(16).Text)
        Dim MarketBaseRentA As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(15).Text)
        Dim UtilitiesBaseD As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(18).Text)
        Dim ExtraOccC As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(17).Text)
        Dim electricCheckbox As CheckBox = CType(GridView5.Rows(0).Cells(21).Controls(0), CheckBox)
        Dim gasCheckbox As CheckBox = CType(GridView5.Rows(0).Cells(19).Controls(0), CheckBox)
        Dim waterCheckbox As CheckBox = CType(GridView5.Rows(0).Cells(20).Controls(0), CheckBox)
        Dim UtilitiesExtra As Decimal = 0.0
        Dim SeniorDisc As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(29).Text)
        Dim MultiYearI As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(30).Text)
        Dim TotalMonthlyRentH As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(28).Text)
        Dim MonthLeasePrem2 As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(27).Text)
        Dim MonthLeasePrem As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(26).Text)
        Dim NHOPrem As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(24).Text)
        Dim NHOPrem2 As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(25).Text)

        Dim SubRentE As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(23).Text)
        Dim totalLeasePrepayI As Decimal = Convert.ToDecimal(txtPrepay.Text)
        Dim DepTransU As Decimal = Convert.ToDecimal(txtDepTrans.Text)

        'txtPrepay.Text = 0.0
        'txtDiscounts.Text = 0.0

        Dim otherDiscount As Decimal = Convert.ToDecimal(txtDiscounts.Text)
        Dim standardSecurityDep As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(33).Text)
        Dim altSecDep As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(34).Text)
        Dim shortLeaseSecDep As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(35).Text)
        Dim firstNHOFee As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(36).Text)
        Dim addNHOFee As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(37).Text)
        Dim firstFuillMonthRent As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(38).Text)
        Dim futureSpecial As Decimal = 0.0
        Dim totalCashDue As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(45).Text)
        Dim aPlus As Boolean = chkAPlus.Checked
        Dim screeningID As Integer = Convert.ToInt16(GridView5.Rows(0).Cells(71).Text)
        Dim lessDepCoveredU As Decimal = Convert.ToDecimal(txtDepTrans.Text)
        Dim refundableScreenDep As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(42).Text)
        Dim specialDepositK As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(41).Text)
        Dim renewalREbate As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(40).Text)
        Dim partialMonth As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(39).Text)

        Dim additionalGas As Decimal = Convert.ToDecimal(GridView4.Rows(0).Cells(34).Text)
        Dim additionalElectric As Decimal = Convert.ToDecimal(GridView4.Rows(0).Cells(36).Text)
        Dim additionalWater As Decimal = Convert.ToDecimal(GridView4.Rows(0).Cells(35).Text)
        Dim numMonths As Integer
        Dim leaseBeginDate As Date = Convert.ToDateTime((leaseBeginTextbox.Text))
        Dim leaseEndDate As Date = Convert.ToDateTime((LeaseEndDateTextbox.Text))

        Dim m As Integer = Math.Abs((leaseEndDate.Year - leaseBeginDate.Year))
        numMonths = ((m * 12) + Math.Abs((leaseEndDate.Month - leaseBeginDate.Month))) + 1

        Dim wordedBeginDate As String = ""
        Dim wordedEndDate As String = ""

        wordedBeginDate = leaseBeginDate.Day.ToString & ", day of " & MonthName(leaseBeginDate.Month) & ", " & leaseBeginDate.Year.ToString
        wordedEndDate = MonthName(leaseEndDate.Month) & ", " & leaseEndDate.Year.ToString

        Dim NHODecimal As Decimal = 0.0

        If NHOPrem > 0 Then
            NHODecimal = NHOPrem / SubRentE
        End If

        If additionalElectric < 1 Then
            ckElectric.Visible = False
        End If
        If additionalGas < 1 Then
            ckGas.Visible = False
        End If
        If additionalWater < 1 Then
            ckWater.Visible = False
        End If

        If ckGas.Checked Then
            UtilitiesExtra = UtilitiesExtra + additionalGas
        End If
        If ckWater.Checked Then
            UtilitiesExtra = UtilitiesExtra + additionalWater
        End If
        If ckElectric.Checked Then
            UtilitiesExtra = UtilitiesExtra + additionalElectric
        End If

        Dim nhoFee2 As Decimal = 0.0
        Dim nhoFee1 As Decimal = 0.0


        If firstNHOFee > 0 Then
            nhoFee1 = firstNHOFee / SubRentE
        End If
        If addNHOFee > 0 Then
            nhoFee2 = addNHOFee / SubRentE
        End If

        SubRentE = MarketBaseRentA + WasherDryerB + ExtraOccC + UtilitiesBaseD + UtilitiesExtra

        If firstNHOFee > 0 Then
            firstNHOFee = nhoFee1 * SubRentE
        End If
        If addNHOFee > 0 Then
            addNHOFee = nhoFee2 * SubRentE
        End If

        NHOPrem = NHODecimal * SubRentE

        If NHOPrem > 0 And Not aPlus Then
            NHOPrem = SubRentE * NHODecimal
            NHOPrem2 = 0.0
        ElseIf aPlus And (nhoFee1 > 0 Or nhoFee2 > 0) Then
            NHOPrem = 0
            If NHOPrem = 0.05 Then
                NHOPrem2 = Convert.ToDecimal(nhoFee1) * 0.1
            ElseIf NHOPrem = 0.1 Then
                NHOPrem2 = Convert.ToDecimal(nhoFee2) * 0.1
            ElseIf NHOPrem > 0.1 Then
                NHOPrem2 = Convert.ToDecimal(nhoFee1) * 0.1 + Convert.ToDecimal(nhoFee2) * 0.1
            End If

        End If

        If MonthLeasePrem > 0 Or MonthLeasePrem2 > 0 Then
            If MonthLeasePrem > 0 Then
                MonthLeasePrem = 0.15 * (SubRentE + NHOPrem + NHOPrem2)
                MonthLeasePrem2 = 0
                shortLeaseSecDep = TotalMonthlyRentH * 2
                altSecDep = 0
                standardSecurityDep = 0
            End If
            If MonthLeasePrem2 > 0 Then
                MonthLeasePrem2 = 0.3 * (SubRentE + NHOPrem + NHOPrem2)
                MonthLeasePrem = 0
                shortLeaseSecDep = TotalMonthlyRentH * 2
                altSecDep = 0
                standardSecurityDep = 0
            End If
        End If

        TotalMonthlyRentH = SubRentE + NHOPrem + NHOPrem2 + MonthLeasePrem + MonthLeasePrem2


        standardSecurityDep = TotalMonthlyRentH
        If aPlus Then
            firstFuillMonthRent = TotalMonthlyRentH - SeniorDisc - MultiYearI - totalLeasePrepayI - otherDiscount
        Else
            firstFuillMonthRent = TotalMonthlyRentH
        End If


        If MonthLeasePrem < 1 And MonthLeasePrem2 < 1 Then
            If Day(leaseBeginDate) > 12 Then
                partialMonth = firstFuillMonthRent / 30 * (30 - Day(leaseBeginDate))

            Else
                ' partialMonth = -1 * firstFuillMonthRent / 30 * (30 - Day(leaseBeginDate))
                partialMonth = 0
            End If

        End If


        If altSecDep > 0 Then
            standardSecurityDep = 0
            shortLeaseSecDep = 0
        ElseIf shortLeaseSecDep > 0 Then
            standardSecurityDep = 0
            altSecDep = 0
        Else
            altSecDep = 0
            shortLeaseSecDep = 0
        End If
        Dim advertised As Decimal = 0.0
        Try
            advertised = Convert.ToDecimal(txtAdvertised.Text)
        Catch ex As Exception

        End Try
        totalCashDue = standardSecurityDep + altSecDep + shortLeaseSecDep + firstNHOFee + addNHOFee + firstFuillMonthRent + partialMonth - renewalREbate + specialDepositK - refundableScreenDep - advertised - lessDepCoveredU



        Dim connStr As String = ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ToString()
        Dim mySQLconnection As New SqlConnection(connStr)
        If mySQLconnection.State = ConnectionState.Closed Then
            mySQLconnection.Open()
        End If
        ' SQL Update Command   

        Try
            Dim mySqlInsert As New SqlCommand("UPDATE [LeaseForm] SET [applicantID] = @applicantID, [applicantID2] = @applicantID2, [dateCompleted] = @dateCompleted, [leaseBeginDate]=@leaseBeginDate, [wordedBeginDate] = @wordedLeaseBeginDate, [wordedEndDate] = @wordedLeaseEndDate, [leaseEndDate]=@leaseEndDate, [wordedDateCompleted] = @wordedDateCompleted, [RNALLC] = @RNALLC, [applicantID3] = @applicantID3, [applicantID4] = @applicantID4, [UtilitiesBaseD] = @UtilitiesBaseD," _
                                              & "[UtilitiesExtra] = @UtilitiesExtra, [gasUtilities] = @gasUtilities, [waterUtilities] = @waterUtilities, [electricUtilities] = @electricUtilities, [SubRentE] = @SubRentE, [NHOPremiumF] = @NHOPremiumF, [NHOPremiumF2] = @NHOPremiumF2, [MonthLeasePremiumG] = @MonthLeasePremiumG," _
                                              & "[MonthLeasePremiumG2] = @MonthLeasePremiumG2, [TotalMonthlyRentH] = @TotalMonthlyRentH, [SeniorDiscI] = @SeniorDiscI, [MultiYearI] = @MultiYearI, [totalLeasePrepayI] = @totalLeasePrepayI, [OtherDiscountI] = @OtherDiscountI, [standardSecurityDepH] = @standardSecurityDepH," _
                                              & "[AltSecDepK] = @AltSecDepK, [ShortLeaseSecDep] = @ShortLeaseSecDep, [firstNHOFeeM] = @firstNHOFeeM, [AddNHOFeeN] = @AddNHOFeeN, [firstFullMonthRentO] = @firstFullMonthRentO, [PartialMonthP] = @PartialMonthP, [RenewalRebateQ] = @RenewalRebateQ," _
                                              & "[SpecialDepositR] = @SpecialDepositR, [RefundableScreenDepS] = @RefundableScreenDepS, [AdvertisedSpecialT] = @AdvertisedSpecialT, [LessDepCoveredU] = @LessDepCoveredU, [TotalCashDueV] = @TotalCashDueV, [vehicleID1] = @vehicleID1," _
                                              & "[vehicleID2] = @vehicleID2, [vehicleID3] = @vehicleID3, [vehicleID4] = @vehicleID4, [cosigner] = @cosigner, [LeaseAgentID] = @LeaseAgentID, [decisionDate] = @decisionDate," _
                                              & "[signedDate] = @signedDate, [UserInput] = @UserInput, [inputDate] = @inputDate, [PetAge2] = @PetAge2, [PetWeight2] = @PetWeight2, [PetType2] = @PetType2, [PetColor2] = @PetColor2, [LastRabiesShot2] = @LastRabiesShot2, [PetAge] = @PetAge, [PetWeight] = @PetWeight," _
                                              & "[PetType] = @PetType, [PetColor] = @PetColor, [LastRabiesShot] = @LastRabiesShot, [AplusRating] = @APlusRating WHERE [leaseID] = @leaseID")
            mySqlInsert.Connection = mySQLconnection
            mySqlInsert.CommandType = CommandType.Text
            ' mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt32(GridView3.DataKeys(e.NewSelectedIndex).Values(0).ToString())
            mySqlInsert.Parameters.Add("@ScreeningID", SqlDbType.BigInt).Value = screeningID
            mySqlInsert.Parameters.Add("@leaseID", SqlDbType.BigInt).Value = leaseID

            mySqlInsert.Parameters.Add("@applicantID", SqlDbType.Text).Value = txtPrimary.Text
            mySqlInsert.Parameters.Add("@applicantID2", SqlDbType.Text).Value = txtCoTenant.Text
            mySqlInsert.Parameters.Add("@applicantID3", SqlDbType.Text).Value = txtThird.Text
            mySqlInsert.Parameters.Add("@applicantID4", SqlDbType.Text).Value = txtFourth.Text

            mySqlInsert.Parameters.Add("@dateCompleted", SqlDbType.Date).Value = dateCompleted
            mySqlInsert.Parameters.Add("@leaseBeginDate", SqlDbType.Date).Value = leaseBeginTextbox.Text
            mySqlInsert.Parameters.Add("@leaseEndDate", SqlDbType.Date).Value = LeaseEndDateTextbox.Text
            mySqlInsert.Parameters.Add("@wordedLeaseBeginDate", SqlDbType.Text).Value = wordedBeginDate
            mySqlInsert.Parameters.Add("@wordedLeaseEndDate", SqlDbType.Text).Value = wordedEndDate
            mySqlInsert.Parameters.Add("@wordedDateCompleted", SqlDbType.Text).Value = wordedDateCompleted
            mySqlInsert.Parameters.Add("@RNALLC", SqlDbType.Text).Value = txtRNA.Text

            mySqlInsert.Parameters.Add("@UtilitiesBaseD", SqlDbType.Decimal).Value = UtilitiesBaseD
            mySqlInsert.Parameters.Add("@UtilitiesExtra", SqlDbType.Decimal).Value = UtilitiesExtra
            mySqlInsert.Parameters.Add("@NHOPremiumF", SqlDbType.Decimal).Value = NHOPrem
            mySqlInsert.Parameters.Add("@NHOPremiumF2", SqlDbType.Decimal).Value = NHOPrem2
            mySqlInsert.Parameters.Add("@MonthLeasePremiumG2", SqlDbType.Decimal).Value = MonthLeasePrem2
            mySqlInsert.Parameters.Add("@MonthLeasePremiumG", SqlDbType.Decimal).Value = MonthLeasePrem
            mySqlInsert.Parameters.Add("@SubRentE", SqlDbType.Decimal).Value = SubRentE
            mySqlInsert.Parameters.Add("@TotalMonthlyRentH", SqlDbType.Decimal).Value = TotalMonthlyRentH
            mySqlInsert.Parameters.Add("@SeniorDiscI", SqlDbType.Decimal).Value = Math.Round(SeniorDisc, 0)
            mySqlInsert.Parameters.Add("@MultiYearI", SqlDbType.Decimal).Value = MultiYearI
            mySqlInsert.Parameters.Add("@totalLeasePrepayI", SqlDbType.Decimal).Value = totalLeasePrepayI
            mySqlInsert.Parameters.Add("@OtherDiscountI", SqlDbType.Decimal).Value = txtDiscounts.Text
            mySqlInsert.Parameters.Add("@standardSecurityDepH", SqlDbType.Decimal).Value = standardSecurityDep
            mySqlInsert.Parameters.Add("@AltSecDepK", SqlDbType.Decimal).Value = altSecDep
            mySqlInsert.Parameters.Add("@ShortLeaseSecDep", SqlDbType.Decimal).Value = shortLeaseSecDep
            mySqlInsert.Parameters.Add("@AddNHOFeeN", SqlDbType.Decimal).Value = addNHOFee
            mySqlInsert.Parameters.Add("@firstNHOFeeM", SqlDbType.Decimal).Value = firstNHOFee
            mySqlInsert.Parameters.Add("@firstFullMonthRentO", SqlDbType.Decimal).Value = firstFuillMonthRent

            mySqlInsert.Parameters.Add("@RefundableScreenDepS", SqlDbType.Decimal).Value = refundableScreenDep
            mySqlInsert.Parameters.Add("@SpecialDepositR", SqlDbType.Decimal).Value = specialDepositK
            mySqlInsert.Parameters.Add("@RenewalRebateQ", SqlDbType.Decimal).Value = renewalREbate
            mySqlInsert.Parameters.Add("@PartialMonthP", SqlDbType.Decimal).Value = partialMonth

            mySqlInsert.Parameters.Add("@AdvertisedSpecialT", SqlDbType.Decimal).Value = advertised

            mySqlInsert.Parameters.Add("@TotalCashDueV", SqlDbType.Decimal).Value = totalCashDue
            mySqlInsert.Parameters.Add("@LessDepCoveredU", SqlDbType.Decimal).Value = lessDepCoveredU

            mySqlInsert.Parameters.Add("@vehicleID1", SqlDbType.Text).Value = txtPrimaryVehicle.Text
            mySqlInsert.Parameters.Add("@vehicleID2", SqlDbType.Text).Value = txtCoTenantVehicle.Text
            mySqlInsert.Parameters.Add("@vehicleID3", SqlDbType.Text).Value = txtThirdVehicle.Text
            mySqlInsert.Parameters.Add("@vehicleID4", SqlDbType.Text).Value = txtFourthVehicle.Text

            mySqlInsert.Parameters.Add("@cosigner", SqlDbType.Text).Value = txtCoSigner.Text
            mySqlInsert.Parameters.Add("@LeaseAgentID", SqlDbType.Text).Value = System.Web.HttpContext.Current.User.Identity.Name().ToString

            mySqlInsert.Parameters.Add("@APlusRating", SqlDbType.Bit).Value = aPlus

            mySqlInsert.Parameters.Add("@UserInput", SqlDbType.Text).Value = System.Web.HttpContext.Current.User.Identity.Name().ToString
            mySqlInsert.Parameters.Add("@inputDate", SqlDbType.Date).Value = Today.ToShortDateString
            Dim decisionDate As Date = SqlTypes.SqlDateTime.Null
            Dim signedDAte As Date = SqlTypes.SqlDateTime.Null
            Dim last1 As Date = SqlTypes.SqlDateTime.Null
            Dim last2 As Date = SqlTypes.SqlDateTime.Null


            Try
                decisionDate = Convert.ToDateTime(txtDecisionDate.Text)
            Catch ex As Exception

            End Try
            mySqlInsert.Parameters.Add("@decisionDate", SqlDbType.Date).Value = decisionDate
            Try
                signedDAte = Convert.ToDateTime(txtSignedDate.Text)
            Catch ex As Exception

            End Try
            mySqlInsert.Parameters.Add("@signedDate", SqlDbType.Date).Value = signedDAte

            Try
                last2 = Convert.ToDateTime(txtPet2LastRabShot.Text)
            Catch ex As Exception

            End Try
            mySqlInsert.Parameters.Add("@LastRabiesShot2", SqlDbType.Date).Value = last2
            Try
                last1 = Convert.ToDateTime(txtPet1LastRabShot.Text)
            Catch ex As Exception

            End Try
            mySqlInsert.Parameters.Add("@LastRabiesShot", SqlDbType.Date).Value = last1

            mySqlInsert.Parameters.Add("@PetAge2", SqlDbType.Text).Value = txtPet2Age.Text
            mySqlInsert.Parameters.Add("@PetWeight2", SqlDbType.Text).Value = txtPet2Weight.Text
            mySqlInsert.Parameters.Add("@PetType2", SqlDbType.Text).Value = txtPet2Type.Text
            mySqlInsert.Parameters.Add("@PetColor2", SqlDbType.Text).Value = txtPet2Color.Text

            mySqlInsert.Parameters.Add("@PetAge", SqlDbType.Text).Value = txtPet1Age.Text
            mySqlInsert.Parameters.Add("@PetWeight", SqlDbType.Text).Value = txtPet1Weight.Text
            mySqlInsert.Parameters.Add("@PetType", SqlDbType.Text).Value = txtPet1Type.Text
            mySqlInsert.Parameters.Add("@PetColor", SqlDbType.Text).Value = txtPet1Color.Text


            'Dim chkGas As Boolean = CType(GridView4.Rows(0).Cells.Item(17).Controls(0), CheckBox).Checked

            'CType(GridView4.Rows(0).Cells(17).FindControl("GasInclude"), CheckBox)
            'Dim chkWater As Boolean = CType(GridView4.Rows(0).Cells.Item(18).Controls(0), CheckBox).Checked
            'Dim chkElectric As Boolean = CType(GridView4.Rows(0).Cells.Item(19).Controls(0), CheckBox).Checked

            mySqlInsert.Parameters.Add("@gasUtilities", SqlDbType.Bit).Value = ckGas.Checked
            mySqlInsert.Parameters.Add("@waterUtilities", SqlDbType.Bit).Value = ckWater.Checked
            mySqlInsert.Parameters.Add("@electricUtilities", SqlDbType.Bit).Value = ckElectric.Checked
            mySqlInsert.ExecuteNonQuery()

        Catch ex As Exception

            Labelex.Text = ex.ToString
        End Try
        Dim mySqlInsert1 As New SqlCommand("UPDATE [Property] SET [occupied] = @occupied WHERE [propertyID] = @propertyID")
        mySqlInsert1.Connection = mySQLconnection
        mySqlInsert1.CommandType = CommandType.Text
        ' mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt32(GridView3.DataKeys(e.NewSelectedIndex).Values(0).ToString())
        mySqlInsert1.Parameters.Add("@propertyID", SqlDbType.BigInt).Value = Convert.ToInt16(GridView4.Rows(0).Cells(0).Text)

        mySqlInsert1.Parameters.Add("@occupied", SqlDbType.Bit).Value = True

        mySqlInsert1.ExecuteNonQuery()
        ' if condition that can be used to check the sql connection  
        ' if it is open then close it.  
        If mySQLconnection.State = ConnectionState.Open Then
            mySQLconnection.Close()
        End If
        leaseBeginTextbox.Text = ""
        LeaseEndDateTextbox.Text = ""
        FormView1.DataBind()
        FormView1.Visible = True
        Panel2.Visible = True

    End Sub


    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Try
            'Dim numMonths As Integer
            Dim leaseBeginDate As Date = Convert.ToDateTime((leaseBeginTextbox.Text))
            Dim leaseEndDate As Date
            Dim monthBegin As Integer
            Dim yearBegin As Integer
            Dim yearEnd As Integer
            Dim monthEnd As Integer
            Dim dayBegin As Integer
            Dim lastDay As Integer

            monthBegin = leaseBeginDate.Month.ToString
            yearBegin = leaseBeginDate.Year.ToString
            dayBegin = leaseBeginDate.Day.ToString

            monthEnd = monthBegin + DropDownList1.SelectedIndex.ToString + 1

            If monthEnd <= 12 Then
                yearEnd = yearBegin

            ElseIf monthEnd > 12 And monthEnd < 24 Then
                monthEnd = monthEnd - 12
                yearEnd = yearBegin + 1

            ElseIf monthEnd > 24 Then
                monthEnd = monthEnd - 24
                yearEnd = yearBegin + 2
            End If
            ''added to make sure April 1 to March 31 for 12 month lease
            If dayBegin = 1 Then
                monthEnd = monthEnd - 1
            End If
            lastDay = System.DateTime.DaysInMonth(yearEnd, monthEnd)

            leaseEndDate = monthEnd & "/" & lastDay & "/" & yearEnd
            If DropDownList1.SelectedIndex.ToString + 1 < 12 Then
                LeaseEndDateTextbox.ForeColor = System.Drawing.ColorTranslator.FromHtml("red")
            ElseIf DropDownList1.SelectedIndex.ToString + 1 = 12 Then
                LeaseEndDateTextbox.ForeColor = System.Drawing.ColorTranslator.FromHtml("black")
            Else
                LeaseEndDateTextbox.ForeColor = System.Drawing.ColorTranslator.FromHtml("green")
            End If

            Dim TotalMonthlyRentH As Decimal = Convert.ToDecimal(GridView5.Rows(0).Cells(28).Text)
            txtPrepay.Text = DropDownList1.SelectedIndex.ToString * TotalMonthlyRentH
            LeaseEndDateTextbox.Text = leaseEndDate
        Catch ex As Exception

        End Try
        FormView1.Visible = False
        Panel1.Visible = True
        Panel2.Visible = False
    End Sub

    Protected Sub btnLeaseMod_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLeaseMod.Click
        leaseBeginTextbox.Text = Convert.ToDateTime(GridView5.Rows(0).Cells(11).Text).ToShortDateString
        LeaseEndDateTextbox.Text = Convert.ToDateTime(GridView5.Rows(0).Cells(13).Text).ToShortDateString
        chkAPlus.Checked = CType(GridView5.Rows(0).Cells(72).Controls(0), CheckBox).Checked
        Panel1.Visible = True
        FormView1.Visible = False
        Panel2.Visible = False

    End Sub


End Class


