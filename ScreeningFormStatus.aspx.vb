Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Error(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Error
       
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Session("newScreeningID") = "43"

        'ddlSelectApplicant.DataBind()


        If Request.UrlReferrer.PathAndQuery.ToString = "/appleasing/Complete811Screening.aspx" Or Request.UrlReferrer.PathAndQuery.ToString = "/appleasing/ScreeningFormStatus.aspx" Then
            ' Panel6.Visible = True
            ' Panel5.Visible = True
                Panel1.Visible = True
            pSubset1.Visible = True
            pInfo.Visible = False

                GridView2.DataSourceID = "SqlDataSourceScreening"
                GridView1.DataSourceID = "SqlDataSource3"
                GridView4.DataSourceID = "SqlDataSourcePropApart"

                GridView5.DataSourceID = "SQLDataSource2"

              
                'ddlSelectApplicant_SelectedIndexChanged(sender, e)
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
            GridView2.DataBind()
            GridView1.DataBind()
            GridView4.DataBind()
            GridView5.DataBind()
            
            If CType(GridView2.Rows(0).Cells.Item(16).Controls(0), CheckBox).Checked Then
                pInfo.Visible = True
            End If

        Else
            ' Panel6.Visible = False
            ' Panel5.Visible = False
            Panel1.Visible = False
            GridView2.DataSourceID = Nothing
            GridView1.DataSourceID = Nothing
            GridView4.DataSourceID = Nothing
            GridView5.DataSourceID = Nothing
        End If
    End Sub

    Protected Sub ddlSelectApplicant_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlSelectApplicant.DataBound
        Try
            ddlSelectApplicant.SelectedValue = Session("newscreeningid").ToString
            GridView2.DataBind()
            If CType(GridView2.Rows(0).Cells.Item(16).Controls(0), CheckBox).Checked Then
                pInfo.Visible = True
            End If
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
    End Sub

    Protected Sub ddlSelectApplicant_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlSelectApplicant.SelectedIndexChanged
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
        GridView5.DataBind()
        FormView1.DataBind()
        FormView2.DataBind()
        If CType(GridView2.Rows(0).Cells.Item(16).Controls(0), CheckBox).Checked Then
            pInfo.Visible = True
        End If
        ' FormView3.DataBind()
        Try
            Dim checkSpouse As CheckBox = CType(FormView3.FindControl("spouseIncludedCheckBox"), CheckBox)
            If checkSpouse.Checked Then

            End If
        Catch ex As Exception
            ' CType(FormView3.FindControl("spouseIncludedCheckBox"), CheckBox).Checked = False
        End Try

        'Panel5.Visible = True

    End Sub

    Protected Sub FormView1_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        ' FormView1.Visible = True
        GridView1.DataBind()
        GridView2.DataBind()
        GridView4.DataBind()
        GridView5.DataBind()
        FormView1.DataBind()
        FormView2.DataBind()
        'Panel3.Visible = False
        'Panel2.Visible = True
        'Panel1.Visible = True
        pSubset1.Visible = False
        pSubset2.Visible = False
        pSubset3.Visible = False
        pInfo.Visible = True
        '  FormView3.DataBind()
    End Sub

    Protected Sub FormView1_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FormView1.ItemUpdating
        'e.Key.Remove("UserInput")
        e.NewValues.Add("UserInput", System.Web.HttpContext.Current.User.Identity.Name().ToString)
        'e.Keys.Remove("InputDate")
        e.NewValues.Add("InputDate", Today.ToShortDateString)
        e.NewValues.Add("ProcessedOnDate", Today.ToShortDateString)
        e.NewValues.Add("ProcessedBy", System.Web.HttpContext.Current.User.Identity.Name().ToString)
        e.NewValues.Add("EnteredBy", System.Web.HttpContext.Current.User.Identity.Name().ToString)
        e.NewValues.Add("RequestLease", ddlLeaseTerms.SelectedItem.Text)

    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click

        Dim todayD As Date = Today.ToShortDateString

        Dim app1DobText As String = GridView1.Rows(0).Cells(10).Text.ToString

        'Dim salary As String = rpt.FindControl("txtSalary").ToString
        'Dim schedule As String = rpt.FindControl("txtSchedule").ToString
        'Dim salary2 As String = rpt.FindControl("txtBase2").ToString
        'Dim schedule2 As String = rpt.FindControl("txtSchedule2").ToString
        'Dim otherIncome1 As String = rpt.FindControl("txtOtherIncome1").ToString
        'Dim otherIncome2 As String = rpt.FindControl("txtOtherIncome2").ToString
        'Dim numMonths As Integer = 0
        If ddlLeaseTerms.SelectedValue = "" Then
            ddlLeaseTerms.SelectedValue = 3
        End If
        Dim marketRateRent As String = GridView4.Rows(0).Cells(13).Text.ToString


        Dim multiYear As Boolean = False
        If ddlLeaseTerms.SelectedValue = 4 Then
            multiYear = True
        End If
        ' If numMonths > 12 Then
        'multiYear = True
        'End If
        'Dim leaseCheckbox As CheckBox = CType(FormView3.FindControl("entireLeaseCheckbox"), CheckBox)
        Dim multiYearDec As Decimal = 0.0
        Dim totalLease As Boolean = False
        Try
            totalLease = entireLeaseCheckbox.Checked
        Catch ex As Exception

        End Try

        Dim totalLeaseDec As Decimal = 0.0

        Dim UtilBase As String = GridView4.Rows(0).Cells(15).Text

        'Dim OtherDiscounts As String = txtOtherDiscounts.ToString
        'Dim ssbIncome As String = txtSSBIncome.ToString
        'Dim ssiIncome As String = txtSSIIncome.ToString
        Dim extraOccupantDollar As String = (Convert.ToDecimal(CType(FormView3.FindControl("ddlNumOcc0"), DropDownList).SelectedValue.ToString) * 120).ToString
        Dim wdCost As String = GridView4.Rows(0).Cells(16).Text


        Dim NHOPrem As Integer = Convert.ToDecimal(CType(FormView3.FindControl("ddlNumOcc"), DropDownList).SelectedValue.ToString)
        Dim NHOPremDec As Decimal = 0.0
        'Dim rentWas As CheckBox = CheckBox2CType(FormView2.FindControl("checkbox2"), CheckBox)

        If Not CheckBox2.Checked Then
            wdCost = 0.0
        End If

        If NHOPrem = 1 Then
            NHOPremDec = 0.05
        ElseIf NHOPrem = 2 Then
            NHOPremDec = 0.1
        ElseIf NHOPrem > 2 Then
            NHOPremDec = 0.2
        End If

        Dim altNHO As Boolean = False
        Try
            altNHO = CType(FormView3.FindControl("APlusCheckbox"), CheckBox).Checked
        Catch ex As Exception

        End Try

        Dim altNHODec As Decimal = 0.0

        'Dim altSecDep As String = txtAltSecDep.ToString
        Dim shortLease As Boolean = False
        If ddlLeaseTerms.SelectedValue = 2 Or ddlLeaseTerms.SelectedValue = 1 Then
            shortLease = True
        End If
        Dim shortLeaseDep As Decimal = 0.0


        Dim nhoFee1Dec As Decimal = 0.0

        Dim renewalRebate As Decimal = 0.0
        Try
            If CType(FormView3.FindControl("RenewalCheckBox"), CheckBox).Checked Then
                renewalRebate = 100
            End If
        Catch ex As Exception

        End Try


        Dim specialDep As Decimal = extraOccupantDollar

        Dim refundDep As Decimal = GridView1.Rows.Count * 0
        Dim futureT As Decimal = 0.0

        Dim lessAnyDep As Decimal = 0.0
        Dim futureNew As Decimal = 0.0
        Dim totalMonthlyRent As Decimal = 0.0
        Dim subTotal As Decimal = Convert.ToDecimal(marketRateRent) + Convert.ToDecimal(wdCost) + Convert.ToDecimal(UtilBase) + Convert.ToDecimal(extraOccupantDollar)
        Dim NHORentPre As Decimal = subTotal * Convert.ToInt16(NHOPrem)
        Dim AltNHOPre As Decimal = 0.0
        Dim cashDueBefore As Decimal = 0.0
        Dim monthLeasePremiumGa As Decimal = 0.0
        Dim monthLeasePremiumGb As Decimal = 0.0
        Dim firstFullMonthRent As Decimal = 0.0
        Dim seniorDiscount As Decimal = 0.0
        Dim partialMonth As Decimal = 0.0
        Dim DOB1 As Date = Convert.ToDateTime(app1DobText)

        Dim days As Integer = (todayD - DOB1).Days
        Dim age As Integer = days / 365

        Dim nhoFee1 As Decimal = 0.0
        Dim PetLimitWeight As Boolean = False
        Try
            PetLimitWeight = CType(FormView3.FindControl("PetWeightLimitCheckBox"), CheckBox).Checked
        Catch ex As Exception

        End Try

        Dim nhoFee2 As Decimal = 0.0


        If NHOPrem > 0 And Not PetLimitWeight Then
            nhoFee1 = 1 * subTotal
        ElseIf NHOPrem > 0 And PetLimitWeight Then
            nhoFee1 = 1.5 * subTotal
        ElseIf NHOPrem > 1 And Not PetLimitWeight Then
            nhoFee2 = subTotal / 2 * 1
        ElseIf NHOPrem > 1 And PetLimitWeight Then
            nhoFee2 = subTotal / 2 * 1.5
        End If

        If age > 59 Then
            seniorDiscount = Convert.ToDecimal(marketRateRent) * 0.03
        End If

        If multiYear = True Then
            multiYearDec = Convert.ToDecimal(marketRateRent) * 0.03
        Else
            multiYearDec = 0.0
        End If

        If totalLease = True Then
            totalLeaseDec = Convert.ToDecimal(marketRateRent) * 0.05
        Else
            totalLeaseDec = 0.0
        End If

        Dim aPlusApp As Boolean = False
        Dim totalSalary As Decimal = 0.0
        Dim totalSalaryCombined As Decimal = 0.0

        For Each row As GridViewRow In GridView1.Rows
            Dim income As Decimal = 0
            Dim ssi As Decimal = 0
            Dim ssb As Decimal = 0
            Dim other As Decimal = 0
            Try
                income = Convert.ToDecimal(GridView1.Rows(0).Cells(4).Text.ToString)
            Catch ex As Exception

            End Try
            Try
                ssi = Convert.ToDecimal(GridView1.Rows(0).Cells(6).Text.ToString)
            Catch ex As Exception

            End Try
            Try
                ssb = Convert.ToDecimal(GridView1.Rows(0).Cells(8).Text.ToString)
            Catch ex As Exception

            End Try
            Try
                other = Convert.ToDecimal(GridView1.Rows(0).Cells(9).Text.ToString)
            Catch ex As Exception

            End Try
            totalSalary = income + ssb + ssi + other
            totalSalary = totalSalary * 4
            Dim creditScore As Double = 0
            Try
                creditScore = Convert.ToInt16(GridView1.Rows(0).Cells(11).Text.ToString)
            Catch ex As Exception

            End Try
            If creditScore > 700 And altNHO And totalSalary >= 5 * totalMonthlyRent Then
                aPlusApp = True

            End If
            Try
                If CType(FormView3.FindControl("spouseIncludedCheckBox"), CheckBox).Checked And totalSalaryCombined > 0 Then
                    If Convert.ToInt16(GridView1.Rows(0).Cells(11).Text.ToString) > 700 And altNHO And totalSalary + totalSalaryCombined >= 5 * totalMonthlyRent Then
                        aPlusApp = True
                    End If
                End If
            Catch ex As Exception

            End Try

            totalSalaryCombined = totalSalary
        Next

        If NHOPrem > 0 And Not aPlusApp Then
            NHOPremDec = subTotal * NHOPremDec
        ElseIf aPlusApp Then
            NHOPremDec = 0
            If NHOPrem = 1 Then
                AltNHOPre = Convert.ToDecimal(nhoFee1) * 0.1
            ElseIf NHOPrem = 2 Then
                AltNHOPre = Convert.ToDecimal(nhoFee2) * 0.1
            ElseIf NHOPrem > 2 Then
                AltNHOPre = Convert.ToDecimal(nhoFee1) * 0.1 + Convert.ToDecimal(nhoFee2) * 0.1
            End If

        End If

        If AltNHOPre > 0 Then
            NHOPremDec = AltNHOPre
        End If

        If shortLease Then
            shortLeaseDep = totalMonthlyRent * 2
        Else
            shortLeaseDep = 0.0
        End If

        If ddlLeaseTerms.SelectedValue = 1 Then
            monthLeasePremiumGa = (subTotal + NHOPremDec) * 0.3
        ElseIf ddlLeaseTerms.SelectedValue = 2 Then
            monthLeasePremiumGb = (subTotal + NHOPremDec) * 0.15
        Else
            monthLeasePremiumGa = 0.0
        End If
        Dim monthLeasePremium As Decimal = monthLeasePremiumGa + monthLeasePremiumGb

        If aPlusApp Then
            totalMonthlyRent = subTotal + NHOPremDec + monthLeasePremium - seniorDiscount - multiYearDec - totalLeaseDec
        Else
            totalMonthlyRent = subTotal + NHOPremDec + monthLeasePremium
        End If

        If aPlusApp Then
            firstFullMonthRent = totalMonthlyRent - seniorDiscount - multiYearDec - totalLeaseDec
        Else
            firstFullMonthRent = totalMonthlyRent
        End If

        cashDueBefore = totalMonthlyRent + shortLeaseDep + nhoFee1 + nhoFee2 - Convert.ToDecimal(renewalRebate) + Convert.ToDecimal(specialDep) - Convert.ToDecimal(refundDep) - Convert.ToDecimal(futureT) - Convert.ToDecimal(lessAnyDep)

        If GridView5.Rows.Count < 1 Then
            Dim connStr As String = ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ToString()
            Dim mySQLconnection As New SqlConnection(connStr)
            If mySQLconnection.State = ConnectionState.Closed Then
                mySQLconnection.Open()
            End If
            ' SQL Update Command   
            Dim mySqlInsert As New SqlCommand("INSERT INTO [LeaseForm] ([screeningid], [propertyID], [propertyName], [unitNo], [MarketBaseRentA], [WasherDryerB], [ExtraOccC], [UtilitiesBaseD], [gasUtilities], [waterUtilities], [electricUtilities], [TotalCashDueV], [LessDepCoveredU], [RefundableScreenDepS], [SpecialDepositR], [RenewalRebateQ], [PartialMonthP], [UserInput], [inputDate], [SubRentE], [NHOPremiumF], [NHOPremiumF2], [MonthLeasePremiumG2], [MonthLeasePremiumG], [TotalMonthlyRentH], [SeniorDiscI], [MultiYearI], [firstFullMonthRentO], [AddNHOFeeN], [ShortLeaseSecDep], [firstNHOFeeM], [AltSecDepK], [standardSecurityDepH], [totalLeasePrepayI]) VALUES (@screeningid, @propertyID, @propertyName, @unitNo, @MarketBaseRentA, @WasherDryerB, @ExtraOccC, @UtilitiesBaseD, @gasUtilities, @waterUtilities, @electricUtilities, @TotalCashDueV, @LessDepCoveredU, @RefundableScreenDepS, @SpecialDepositR, @RenewalRebateQ, @PartialMonthP, @UserInput, @inputDate, @SubRentE, @NHOPremiumF, @NHOPremiumF2, @MonthLeasePremiumG2, @MonthLeasePremiumG, @TotalMonthlyRentH, @SeniorDiscI, @MultiYearI, @firstFullMonthRentO, @AddNHOFeeN, @ShortLeaseSecDep, @firstNHOFeeM, @AltSecDepK, @standardSecurityDepH, @totalLeasePrepayI)")
            mySqlInsert.Connection = mySQLconnection
            mySqlInsert.CommandType = CommandType.Text
            ' mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt32(GridView3.DataKeys(e.NewSelectedIndex).Values(0).ToString())
            mySqlInsert.Parameters.Add("@ScreeningID", SqlDbType.Int).Value = Session("newScreeningID").ToString()
            mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Session("propertyID").ToString()


            mySqlInsert.Parameters.Add("@MarketBaseRentA", SqlDbType.Decimal).Value = (Convert.ToDecimal(GridView4.Rows(0).Cells(13).Text.ToString))
            mySqlInsert.Parameters.Add("@UtilitiesBaseD", SqlDbType.Decimal).Value = GridView4.Rows(0).Cells(15).Text
            'mySqlInsert.Parameters.Add("@wordedEndDate", SqlDbType.Text).Value = ""
            'mySqlInsert.Parameters.Add("@leaseEndDate", SqlDbType.Date).Value = ""
            'mySqlInsert.Parameters.Add("@wordedBeginDate", SqlDbType.Text).Value = ""
            'mySqlInsert.Parameters.Add("@leaseBeginDate", SqlDbType.Date).Value = ""
            mySqlInsert.Parameters.Add("@propertyName", SqlDbType.Text).Value = GridView4.Rows(0).Cells(2).Text
            mySqlInsert.Parameters.Add("@unitNo", SqlDbType.Text).Value = GridView4.Rows(0).Cells(3).Text
            mySqlInsert.Parameters.Add("@WasherDryerB", SqlDbType.Decimal).Value = wdCost
            mySqlInsert.Parameters.Add("@ExtraOccC", SqlDbType.Decimal).Value = extraOccupantDollar
            mySqlInsert.Parameters.Add("@TotalCashDueV", SqlDbType.Decimal).Value = cashDueBefore
            mySqlInsert.Parameters.Add("@LessDepCoveredU", SqlDbType.Decimal).Value = lessAnyDep
            mySqlInsert.Parameters.Add("@RefundableScreenDepS", SqlDbType.Decimal).Value = refundDep
            mySqlInsert.Parameters.Add("@SpecialDepositR", SqlDbType.Decimal).Value = specialDep
            mySqlInsert.Parameters.Add("@RenewalRebateQ", SqlDbType.Decimal).Value = renewalRebate
            mySqlInsert.Parameters.Add("@PartialMonthP", SqlDbType.Decimal).Value = partialMonth
            mySqlInsert.Parameters.Add("@UserInput", SqlDbType.Text).Value = System.Web.HttpContext.Current.User.Identity.Name().ToString
            mySqlInsert.Parameters.Add("@inputDate", SqlDbType.Date).Value = Today.ToShortDateString
            mySqlInsert.Parameters.Add("@SubRentE", SqlDbType.Decimal).Value = subTotal
            mySqlInsert.Parameters.Add("@NHOPremiumF", SqlDbType.Decimal).Value = NHOPremDec
            mySqlInsert.Parameters.Add("@NHOPremiumF2", SqlDbType.Decimal).Value = AltNHOPre
            mySqlInsert.Parameters.Add("@MonthLeasePremiumG2", SqlDbType.Decimal).Value = monthLeasePremiumGb
            mySqlInsert.Parameters.Add("@MonthLeasePremiumG", SqlDbType.Decimal).Value = monthLeasePremiumGa
            mySqlInsert.Parameters.Add("@TotalMonthlyRentH", SqlDbType.Decimal).Value = totalMonthlyRent
            mySqlInsert.Parameters.Add("@SeniorDiscI", SqlDbType.Decimal).Value = seniorDiscount
            mySqlInsert.Parameters.Add("@MultiYearI", SqlDbType.Decimal).Value = multiYearDec
            mySqlInsert.Parameters.Add("@firstFullMonthRentO", SqlDbType.Decimal).Value = firstFullMonthRent
            mySqlInsert.Parameters.Add("@AddNHOFeeN", SqlDbType.Decimal).Value = nhoFee2
            mySqlInsert.Parameters.Add("@ShortLeaseSecDep", SqlDbType.Decimal).Value = shortLeaseDep
            mySqlInsert.Parameters.Add("@firstNHOFeeM", SqlDbType.Decimal).Value = nhoFee1
            mySqlInsert.Parameters.Add("@AltSecDepK", SqlDbType.Decimal).Value = 0.0
            mySqlInsert.Parameters.Add("@standardSecurityDepH", SqlDbType.Decimal).Value = totalMonthlyRent
            mySqlInsert.Parameters.Add("@totalLeasePrepayI", SqlDbType.Decimal).Value = totalLeaseDec

            Dim chkGas As Boolean = False
            Try
                chkGas = CType(GridView4.Rows(0).Cells.Item(17).Controls(0), CheckBox).Checked
            Catch ex As Exception

            End Try


            'CType(GridView4.Rows(0).Cells(17).FindControl("GasInclude"), CheckBox)
            Dim chkWater As Boolean = CType(GridView4.Rows(0).Cells.Item(18).Controls(0), CheckBox).Checked
            Dim chkElectric As Boolean = CType(GridView4.Rows(0).Cells.Item(19).Controls(0), CheckBox).Checked

            mySqlInsert.Parameters.Add("@gasUtilities", SqlDbType.Bit).Value = chkGas

            mySqlInsert.Parameters.Add("@waterUtilities", SqlDbType.Bit).Value = chkWater
            mySqlInsert.Parameters.Add("@electricUtilities", SqlDbType.Bit).Value = chkElectric
            mySqlInsert.ExecuteNonQuery()

            ' if condition that can be used to check the sql connection  
            ' if it is open then close it.  
            If mySQLconnection.State = ConnectionState.Open Then
                mySQLconnection.Close()
            End If
            GridView5.DataBind()
        Else
            Dim connStr As String = ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ToString()
            Dim mySQLconnection As New SqlConnection(connStr)
            If mySQLconnection.State = ConnectionState.Closed Then
                mySQLconnection.Open()
            End If
            ' SQL Update Command   
            Dim mySqlInsert As New SqlCommand("UPDATE [LeaseForm] SET [propertyID] = @propertyID, [unitNo] = @unitNo, [propertyName] = @propertyName, [MarketBaseRentA] = @MarketBaseRentA, [WasherDryerB] = @WasherDryerB, [ExtraOccC] = @ExtraOccC, [UtilitiesBaseD] = @utilitiesBaseD, [gasUtilities] = @gasUtilities, [waterUtilities] = @waterUtilities, [electricUtilities] = @electricUtilities, [SubRentE] = @SubRentE, [NHOPremiumF] = @NHOPremiumF, [NHOPremiumF2] = @NHOPremiumF2, [MonthLeasePremiumG] = @MonthLeasePremiumG, [MonthLeasePremiumG2] = @MonthLeasePremiumG2, [TotalMonthlyRentH] = @TotalMonthlyRentH, [SeniorDiscI] = @SeniorDiscI, [MultiYearI] = @MultiYearI, [totalLeasePrepayI] = @totalLeasePrepayI, [standardSecurityDepH] = @standardSecurityDepH, [AltSecDepK] = @AltSecDepK, [ShortLeaseSecDep] = @ShortLeaseSecDep, [firstNHOFeeM] = @firstNHOFeeM, [AddNHOFeeN] = @AddNHOFeeN, [firstFullMonthRentO] = @firstFullMonthRentO, [PartialMonthP] = @PartialMonthP, [RenewalRebateQ] = @RenewalRebateQ, [SpecialDepositR] = @SpecialDepositR, [RefundableScreenDepS] = @RefundableScreenDepS, [LessDepCoveredU] = @LessDepCoveredU, [TotalCashDueV] = @TotalCashDueV, [UserInput] = @UserInput, [inputDate] = @inputDate, [screeningID] = @screeningID, [APlusRating] = @APlusRating WHERE [leaseID] = @leaseID")

            mySqlInsert.Connection = mySQLconnection
            mySqlInsert.CommandType = CommandType.Text
            ' mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt32(GridView3.DataKeys(e.NewSelectedIndex).Values(0).ToString())
            mySqlInsert.Parameters.Add("@ScreeningID", SqlDbType.Int).Value = Session("newScreeningID").ToString()
            mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Session("propertyID").ToString()
            mySqlInsert.Parameters.Add("@leaseID", SqlDbType.Int).Value = Convert.ToInt16(GridView5.Rows(0).Cells(0).Text)

            mySqlInsert.Parameters.Add("@MarketBaseRentA", SqlDbType.Decimal).Value = (Convert.ToDecimal(GridView4.Rows(0).Cells(13).Text.ToString))
            mySqlInsert.Parameters.Add("@UtilitiesBaseD", SqlDbType.Decimal).Value = GridView4.Rows(0).Cells(15).Text
            'mySqlInsert.Parameters.Add("@wordedEndDate", SqlDbType.Text).Value = ""
            'mySqlInsert.Parameters.Add("@leaseEndDate", SqlDbType.Date).Value = ""
            'mySqlInsert.Parameters.Add("@wordedBeginDate", SqlDbType.Text).Value = ""
            'mySqlInsert.Parameters.Add("@leaseBeginDate", SqlDbType.Date).Value = ""
            mySqlInsert.Parameters.Add("@propertyName", SqlDbType.Text).Value = GridView4.Rows(0).Cells(2).Text
            mySqlInsert.Parameters.Add("@unitNo", SqlDbType.Text).Value = GridView4.Rows(0).Cells(3).Text
            mySqlInsert.Parameters.Add("@WasherDryerB", SqlDbType.Decimal).Value = wdCost
            mySqlInsert.Parameters.Add("@ExtraOccC", SqlDbType.Decimal).Value = extraOccupantDollar
            mySqlInsert.Parameters.Add("@TotalCashDueV", SqlDbType.Decimal).Value = cashDueBefore
            mySqlInsert.Parameters.Add("@LessDepCoveredU", SqlDbType.Decimal).Value = lessAnyDep
            mySqlInsert.Parameters.Add("@RefundableScreenDepS", SqlDbType.Decimal).Value = refundDep
            mySqlInsert.Parameters.Add("@SpecialDepositR", SqlDbType.Decimal).Value = specialDep
            mySqlInsert.Parameters.Add("@RenewalRebateQ", SqlDbType.Decimal).Value = renewalRebate
            mySqlInsert.Parameters.Add("@PartialMonthP", SqlDbType.Decimal).Value = partialMonth
            mySqlInsert.Parameters.Add("@UserInput", SqlDbType.Text).Value = System.Web.HttpContext.Current.User.Identity.Name().ToString
            mySqlInsert.Parameters.Add("@inputDate", SqlDbType.Date).Value = Today.ToShortDateString
            mySqlInsert.Parameters.Add("@SubRentE", SqlDbType.Decimal).Value = subTotal
            mySqlInsert.Parameters.Add("@NHOPremiumF", SqlDbType.Decimal).Value = NHOPremDec
            mySqlInsert.Parameters.Add("@NHOPremiumF2", SqlDbType.Decimal).Value = AltNHOPre
            mySqlInsert.Parameters.Add("@MonthLeasePremiumG2", SqlDbType.Decimal).Value = monthLeasePremiumGb
            mySqlInsert.Parameters.Add("@MonthLeasePremiumG", SqlDbType.Decimal).Value = monthLeasePremiumGa
            mySqlInsert.Parameters.Add("@TotalMonthlyRentH", SqlDbType.Decimal).Value = totalMonthlyRent
            mySqlInsert.Parameters.Add("@SeniorDiscI", SqlDbType.Decimal).Value = Math.Round(seniorDiscount, 0)
            mySqlInsert.Parameters.Add("@MultiYearI", SqlDbType.Decimal).Value = multiYearDec
            mySqlInsert.Parameters.Add("@firstFullMonthRentO", SqlDbType.Decimal).Value = firstFullMonthRent
            mySqlInsert.Parameters.Add("@AddNHOFeeN", SqlDbType.Decimal).Value = nhoFee2
            mySqlInsert.Parameters.Add("@ShortLeaseSecDep", SqlDbType.Decimal).Value = shortLeaseDep
            mySqlInsert.Parameters.Add("@firstNHOFeeM", SqlDbType.Decimal).Value = nhoFee1
            mySqlInsert.Parameters.Add("@AltSecDepK", SqlDbType.Decimal).Value = 0.0
            mySqlInsert.Parameters.Add("@standardSecurityDepH", SqlDbType.Decimal).Value = totalMonthlyRent
            mySqlInsert.Parameters.Add("@totalLeasePrepayI", SqlDbType.Decimal).Value = totalLeaseDec

            Dim chkGas As Boolean = False
            Try
                chkGas = CType(GridView4.Rows(0).Cells.Item(17).Controls(0), CheckBox).Checked
            Catch ex As Exception

            End Try


            'CType(GridView4.Rows(0).Cells(17).FindControl("GasInclude"), CheckBox)
            Dim chkWater As Boolean = CType(GridView4.Rows(0).Cells.Item(18).Controls(0), CheckBox).Checked
            Dim chkElectric As Boolean = CType(GridView4.Rows(0).Cells.Item(19).Controls(0), CheckBox).Checked

            mySqlInsert.Parameters.Add("@gasUtilities", SqlDbType.Bit).Value = chkGas

            mySqlInsert.Parameters.Add("@APlusRating", SqlDbType.Bit).Value = aPlusApp
            mySqlInsert.Parameters.Add("@waterUtilities", SqlDbType.Bit).Value = chkWater
            mySqlInsert.Parameters.Add("@electricUtilities", SqlDbType.Bit).Value = chkElectric
            mySqlInsert.ExecuteNonQuery()

            ' if condition that can be used to check the sql connection  
            ' if it is open then close it.  
            If mySQLconnection.State = ConnectionState.Open Then
                mySQLconnection.Close()
            End If
            GridView5.DataBind()
        End If
        GridView5.DataBind()
        FormView2.DataBind()
        ' FormView2.Visible = True
        '  FormView1.Visible = False
        '  FormView3.Visible = False
        TextBox1.Text = totalMonthlyRent.ToString

    End Sub



    Protected Sub FormView2_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView2.ItemUpdated
        pSubset1.Visible = False
        pSubset2.Visible = False
        pSubset3.Visible = True
        pInfo.Visible = False
        'FormView2.Visible = False
        ' FormView1.Visible = True
        ' Panel4.Visible = False
        'Panel5.Visible = False
        'Panel3.Visible = True
        '  FormView1.Visible = True
        '  FormView2.Visible = False
        'FormView3.Visible = False

    End Sub

    Protected Sub ddlNumOcc0_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim ddlSelected As DropDownList
        Dim txtbox As TextBox

        ddlSelected = FormView3.FindControl("ddlNumOcc0")
        txtbox = FormView3.FindControl("numnonrelatedTextBox")
        txtbox.Text = ddlSelected.SelectedValue.ToString

    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        '   FormView1.Visible = True
        '   FormView2.Visible = False
        '   FormView3.Visible = False
    End Sub

    Protected Sub FormView3_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView3.ItemUpdated
        'FormView3.Visible = False
        LinkButton2.Enabled = True
        LinkButton4.Enabled = True
        pSubset1.Visible = False
        pSubset2.Visible = True
        pSubset3.Visible = False
        pInfo.Visible = False
        'Panel5.Visible = False
        'Panel4.Visible = True
        'Panel3.Visible = False
        LinkButton2_Click(sender, e)
        GridView1.DataBind()
        GridView2.DataBind()
        GridView4.DataBind()

        GridView5.DataBind()
        FormView1.DataBind()
        FormView2.DataBind()
        ' FormView3.DataBind()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            If Convert.ToDecimal(GridView2.Rows(0).Cells(17).Text) > 1 And CType(GridView2.Rows(0).Cells.Item(16).Controls(0), CheckBox).Checked Then


                Dim connStr As String = ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ToString()
                Dim mySQLconnection As New SqlConnection(connStr)
                If mySQLconnection.State = ConnectionState.Closed Then
                    mySQLconnection.Open()
                End If
                ' SQL Update Command   
                Dim mySqlInsert As New SqlCommand("UPDATE [Property] SET [Occupied] = @Occupied, [rentReady] = @rentReady WHERE [propertyID] = @propertyID")

                mySqlInsert.Connection = mySQLconnection
                mySqlInsert.CommandType = CommandType.Text
                ' mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt32(GridView3.DataKeys(e.NewSelectedIndex).Values(0).ToString())
                mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Session("propertyID").ToString()
                mySqlInsert.Parameters.Add("@occupied", SqlDbType.Bit).Value = True
                mySqlInsert.Parameters.Add("@rentReady", SqlDbType.Bit).Value = False

                mySqlInsert.ExecuteNonQuery()

                ' if condition that can be used to check the sql connection  
                ' if it is open then close it.  
                If mySQLconnection.State = ConnectionState.Open Then
                    mySQLconnection.Close()
                End If
                GridView5.DataBind()

                pSubset1.Visible = False
                pInfo.Visible = True
            Else
                Response.Write("<script language='javascript'>alert('Cannot save property until a deposit has been collected and application is ready for approval.');</script>")
            End If
        Catch ex As Exception
            Response.Write("<script language='javascript'>alert('Cannot save property until a deposit has been collected and application is ready for approval.');</script>")
        End Try
    End Sub

    Protected Sub FormView2_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FormView2.ItemUpdating
        'FormView3.Visible = False
        'Panel4.Visible = False
        'Panel5.Visible = False
        'Panel3.Visible = True
      
    End Sub

    Protected Sub btnRefresh_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRefresh.Click
        ddlSelectApplicant_SelectedIndexChanged(sender, e)
    End Sub
End Class


