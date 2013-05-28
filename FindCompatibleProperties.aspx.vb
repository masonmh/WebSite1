Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        lblIncludedInCalc.Text = ""
        If Request.UrlReferrer.PathAndQuery.ToString = "/appleasing/Applicant17.aspx" Or Request.UrlReferrer.PathAndQuery.ToString = "/appleasing/FindCompatibleProperties.aspx" Then
            Panel1.Visible = True
            GridView2.DataSourceID = "SqlDataSourceScreening"
            GridView1.DataSourceID = "SqlDataSource3"
            GridView3.DataSourceID = "SqlDataSourceProperties"
            GridView4.DataSourceID = "SqlDataSourcePropApart"
            GridView5.DataSourceID = "SqlDataSource1"
            GridView6.DataSourceID = "SqlDataSource2"

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

            GridView2.DataBind()
            Console.WriteLine(GridView2.Rows.Count.ToString)
            GridView1.DataBind()
            GridView3.DataBind()
            GridView4.DataBind()
            GridView5.DataBind()
            GridView6.DataBind()

            Dim dvScreen As DataView
            Dim coSalary As Boolean
            Dim AdditionalPetBool, PetOverBool, IncludeWDBool, UtilitiesIncBool As Boolean
            Dim numNonRelated As Decimal
            Dim NonHuman As Boolean

            dvScreen = CType(SqlDataSourceScreening.Select(DataSourceSelectArguments.Empty), DataView)
            Try
                coSalary = CType(dvScreen.Table.Rows(0)(14), Boolean)
                NonHuman = CType(dvScreen.Table.Rows(0)(12), Boolean)
                numNonRelated = CType(dvScreen.Table.Rows(0)(13), Decimal)
                AdditionalPetBool = CType(dvScreen.Table.Rows(0)(16), Boolean)
                PetOverBool = CType(dvScreen.Table.Rows(0)(17), Boolean)
                IncludeWDBool = CType(dvScreen.Table.Rows(0)(18), Boolean)
                UtilitiesIncBool = CType(dvScreen.Table.Rows(0)(19), Boolean)
            Catch ex As Exception
                lblHouseRent.Text = ex.ToString
            End Try

            Dim grossSalary As Decimal = 0
            Dim otherIncome As Decimal = 0
            Dim ssiIncome As Decimal = 0
            Dim ssbIncome As Decimal = 0
            Dim grossSalary2 As Decimal = 0
            Dim otherIncome2 As Decimal = 0
            Dim ssiIncome2 As Decimal = 0
            Dim ssbIncome2 As Decimal = 0
            Dim maxMonthlyRentHouse As Decimal = 0
            Dim maxApt As Decimal = 0
            Dim bestApplicant As Integer = 0
            Dim i As Integer = 0
            bestApplicant = i
            Dim dv As DataView
            dv = CType(SqlDataSource3.Select(DataSourceSelectArguments.Empty), DataView)
            If coSalary = True Then
                grossSalary = CType(dv.Table.Rows(0)(4), Decimal)
                grossSalary2 = CType(dv.Table.Rows(1)(4), Decimal)
                otherIncome = CType(dv.Table.Rows(0)(6), Decimal)
                otherIncome2 = CType(dv.Table.Rows(1)(6), Decimal)

                grossSalary = grossSalary + grossSalary2
                otherIncome = otherIncome + otherIncome2

            Else
                For Each drow As DataRow In dv.Table.Rows
                    Try
                        grossSalary = CType(dv.Table.Rows(bestApplicant)(4), Decimal)
                        grossSalary2 = CType(dv.Table.Rows(i + 1)(4), Decimal)
                        otherIncome = CType(dv.Table.Rows(bestApplicant)(6), Decimal)
                        otherIncome2 = CType(dv.Table.Rows(i + 1)(6), Decimal)

                    Catch ex As Exception

                    End Try

                    If grossSalary + otherIncome < grossSalary2 + otherIncome2 Then
                        bestApplicant = i + 1
                    End If
                    i = i + 1
                Next drow
                Try
                    grossSalary = CType(dv.Table.Rows(bestApplicant)(4), Decimal)
                    otherIncome = CType(dv.Table.Rows(bestApplicant)(6), Decimal)

                Catch ex As Exception

                End Try

            End If
            maxMonthlyRentHouse = grossSalary + otherIncome

            Try
                ssiIncome = CType(dv.Table.Rows(0)(9), Decimal)
            Catch ex As Exception

            End Try
            Try
                ssbIncome = CType(dv.Table.Rows(0)(8), Decimal)
            Catch ex As Exception

            End Try
            If ssbIncome > 0 Then
                If (0.3 * ((grossSalary * 4) + ssbIncome)) > (0.4 * ssbIncome) Then
                    maxApt = (0.3 * ((grossSalary * 4) + ssbIncome))
                Else
                    maxApt = (0.4 * ssbIncome)
                End If
            Else
                maxMonthlyRentHouse = grossSalary + otherIncome
                maxApt = grossSalary * 1.15 + otherIncome

            End If

            lblHouseRent.Text = maxMonthlyRentHouse.ToString
            lblRentAfford.Text = maxApt.ToString

            Dim numBed As Int16
            Dim numBath As Int16
            Dim washDryer As Boolean
            Try
                numBed = CType(dvScreen.Table.Rows(0)(6), Integer)
            Catch ex As Exception

            End Try
            Try
                numBath = CType(dvScreen.Table.Rows(0)(7), Integer)
            Catch ex As Exception

            End Try


            washDryer = CType(dvScreen.Table.Rows(0)(8), Boolean)

            lblNumBed.Text = numBed.ToString
            lblNumBath.Text = numBath.ToString
            chkWaserDryer.Checked = washDryer
            lblIncludedInCalc.Text = ""
            If AdditionalPetBool And Not PetOverBool Then
                maxMonthlyRentHouse = maxMonthlyRentHouse - (grossSalary * 0.1)
                maxApt = maxApt - (grossSalary * 0.1)
                lblIncludedInCalc.Text = lblIncludedInCalc.Text & " 2 Pets "
            ElseIf Not AdditionalPetBool And PetOverBool Then
                maxMonthlyRentHouse = maxMonthlyRentHouse - (grossSalary * 0.1)
                maxApt = maxApt - (grossSalary * 0.1)
                lblIncludedInCalc.Text = lblIncludedInCalc.Text & " 1 over weight/breed limit pet"
            ElseIf AdditionalPetBool And PetOverBool Then
                maxMonthlyRentHouse = maxMonthlyRentHouse - (grossSalary * 0.2)
                maxApt = maxApt - (grossSalary * 0.2)
                lblIncludedInCalc.Text = lblIncludedInCalc.Text & " 2 Pets with at least one over weight/breed limit"
            ElseIf NonHuman Then
                maxMonthlyRentHouse = maxMonthlyRentHouse - (grossSalary * 0.05)
                maxApt = maxApt - (grossSalary * 0.05)
                lblIncludedInCalc.Text = lblIncludedInCalc.Text & " 1 pet"
            End If

            If numNonRelated > 1 Then
                maxMonthlyRentHouse = maxMonthlyRentHouse - (120 * numNonRelated)
                maxApt = maxApt - (120 * numNonRelated)
                lblIncludedInCalc.Text = lblIncludedInCalc.Text & numNonRelated.ToString & " Additional non related renters"
            End If
            lblIncludedInCalc.Text = "The Following is included in the calc of max affordability: " & lblIncludedInCalc.Text
            lblHouseRent.Text = maxMonthlyRentHouse.ToString
            lblRentAfford.Text = maxApt.ToString

            GridView4.DataBind()
            If Not GridView2.Rows(0).Cells(19).Text = "" Then
                For Each row As GridViewRow In GridView4.Rows
                    Dim therowindex As Integer = row.RowIndex

                    Dim theid As Integer = 0
                    Try
                        theid = GridView2.Rows(0).Cells(19).Text
                    Catch ex As Exception

                    End Try

                    Try
                        If GridView4.DataKeys(therowindex).Value.ToString = GridView2.Rows(0).Cells(19).Text And Not theid = 0 Then
                            GridView4.SelectedIndex = therowindex
                            Exit For
                        Else
                            GridView4.SelectedIndex = -1
                        End If
                    Catch ex As Exception

                    End Try

                    Try
                        If GridView3.DataKeys(therowindex).Value.ToString = GridView2.Rows(0).Cells(19).Text And Not theid = 0 Then
                            GridView3.SelectedIndex = therowindex
                            Exit For
                        Else
                            GridView3.SelectedIndex = -1
                        End If
                    Catch ex As Exception

                    End Try

                Next
            Else
                GridView4.SelectedIndex = -1
                GridView3.SelectedIndex = -1

            End If
            If Not GridView2.Rows(0).Cells(19).Text = "" And GridView2.Rows(0).Cells(20).Text > 1 Then
                'btnRemoveHold.Visible = True
                'btnRemoveHold.Attributes.Add("onclick", "if (!confirm('Are you sure you want to release this property?')) return false;")
                GridView3.Attributes.Add("onclick", "if (!confirm('Are you sure you want to release this property?')) return false;")
                GridView4.Attributes.Add("onclick", "if (!confirm('Are you sure you want to release this property?')) return false;")
            Else
                btnRemoveHold.Visible = False
                GridView3.Attributes.Remove("onclick")
                GridView4.Attributes.Remove("onclick")
            End If
        Else
            Panel1.Visible = False
            GridView2.DataSourceID = Nothing
            GridView1.DataSourceID = Nothing
            GridView3.DataSourceID = Nothing
            GridView4.DataSourceID = Nothing
            GridView5.DataSourceID = Nothing
            GridView6.DataSourceID = Nothing

            lblNumBath.Text = "0"
        End If


        '   For Each row As GridViewRow In GridView3.Rows
        'Dim therowindex As Integer = row.RowIndex

        'Dim theid As Integer = GridView2.Rows(0).Cells(8).Text

        '            If GridView3.DataKeys(therowindex).ToString = GridView2.Rows(0).Cells(8).Text Then
        'GridView3.SelectedIndex = therowindex
        ' End If
        '    Next

    End Sub

    Protected Sub GridView3_SelectedIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles GridView3.SelectedIndexChanging
        '' Response.Write("<script language='javascript'>document.getElementById('GridView3').onchange();</script>")
        Try
            If Not GridView2.Rows(0).Cells(19).Text = "" And GridView2.Rows(0).Cells(20).Text > 1 Then

                btnRemoveHold_Click(sender, e)
                GridView4.SelectedIndex = -1
            End If

        Catch ex As Exception

        End Try

        GridView3.SelectedIndex = e.NewSelectedIndex
        GridView4.SelectedIndex = -1
        Dim connStr As String = ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ToString()


        Dim mySQLconnection As New SqlConnection(connStr)

        If mySQLconnection.State = ConnectionState.Closed Then
            mySQLconnection.Open()
        End If

        ' SQL Update Command   
        Dim mySqlUpdate As New SqlCommand("UPDATE [Screening] SET [PropertyID] = @PropertyID WHERE [ScreeningID] = @ScreeningID", mySQLconnection)
        mySqlUpdate.CommandType = CommandType.Text
        mySqlUpdate.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt32(GridView3.DataKeys(e.NewSelectedIndex).Values(0).ToString())
        mySqlUpdate.Parameters.Add("@ScreeningID", SqlDbType.Int).Value = Session("newScreeningID").ToString()
        mySqlUpdate.ExecuteNonQuery()

        ' if condition that can be used to check the sql connection  
        ' if it is open then close it.  
        If mySQLconnection.State = ConnectionState.Open Then
            mySQLconnection.Close()
        End If
        GridView2.DataBind()
    End Sub

   
    Protected Sub GridView4_SelectedIndexChanging(sender As Object, e As System.Web.UI.WebControls.GridViewSelectEventArgs) Handles GridView4.SelectedIndexChanging
        ''   Response.Write("<script language='javascript'>document.getElementById('GridView4').onchange();</script>")
        Try
            If Not GridView2.Rows(0).Cells(19).Text = "" And GridView2.Rows(0).Cells(20).Text > 1 Then

                btnRemoveHold_Click(sender, e)
                GridView3.SelectedIndex = -1
            End If

        Catch ex As Exception

        End Try
        GridView4.SelectedIndex = e.NewSelectedIndex
        GridView3.SelectedIndex = -1
        Dim connStr As String = ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ToString()


        Dim mySQLconnection As New SqlConnection(connStr)

        If mySQLconnection.State = ConnectionState.Closed Then
            mySQLconnection.Open()
        End If

        ' SQL Update Command   
        Dim mySqlUpdate As New SqlCommand("UPDATE [Screening] SET [PropertyID] = @PropertyID, [MaxHouseAmount] = @MaxHouseAmount, [MaxApt] = @MaxApt WHERE [ScreeningID] = @ScreeningID", mySQLconnection)
        mySqlUpdate.CommandType = CommandType.Text
        mySqlUpdate.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt32(GridView4.DataKeys(e.NewSelectedIndex).Values(0).ToString())
        mySqlUpdate.Parameters.Add("@ScreeningID", SqlDbType.Int).Value = Session("newScreeningID").ToString()
        mySqlUpdate.Parameters.Add("@MaxHouseAmount", SqlDbType.Decimal).Value = Convert.ToDecimal(lblHouseRent.Text)
        mySqlUpdate.Parameters.Add("@MaxApt", SqlDbType.Decimal).Value = Convert.ToDecimal(lblRentAfford.Text)
        mySqlUpdate.ExecuteNonQuery()

        ' if condition that can be used to check the sql connection  
        ' if it is open then close it.  
        If mySQLconnection.State = ConnectionState.Open Then
            mySQLconnection.Close()
        End If
        GridView2.DataBind()
    End Sub

    Sub updateLabelQuery(ByVal type1 As String, ByVal salCoInfor As Decimal)
        Session("newScreeningID") = ddlSelectApplicant.SelectedValue.ToString

        Dim dv As DataView
        dv = CType(SqlDataSource3.Select(DataSourceSelectArguments.Empty), DataView)
        Dim dvScreen As DataView
        Dim coSalary As Boolean
        Dim AdditionalPetBool, PetOverBool, IncludeWDBool, UtilitiesIncBool As Boolean
        Dim numNonRelated As Decimal
        Dim NonHuman As Boolean
        dvScreen = CType(SqlDataSourceScreening.Select(DataSourceSelectArguments.Empty), DataView)
        Try
           
            coSalary = CType(dvScreen.Table.Rows(0)(14), Boolean)
            NonHuman = CType(dvScreen.Table.Rows(0)(12), Boolean)
            numNonRelated = CType(dvScreen.Table.Rows(0)(13), Decimal)
            AdditionalPetBool = CType(dvScreen.Table.Rows(0)(16), Boolean)
            PetOverBool = CType(dvScreen.Table.Rows(0)(17), Boolean)
            IncludeWDBool = CType(dvScreen.Table.Rows(0)(18), Boolean)
            UtilitiesIncBool = CType(dvScreen.Table.Rows(0)(19), Boolean)

        Catch ex As Exception

        End Try
        Dim grossSalary As Decimal = 0
        Dim otherIncome As Decimal = 0
        Dim ssiIncome As Decimal = 0
        Dim ssbIncome As Decimal = 0
        Dim grossSalary2 As Decimal = 0
        Dim otherIncome2 As Decimal = 0
        Dim ssiIncome2 As Decimal = 0
        Dim ssbIncome2 As Decimal = 0
        Dim maxMonthlyRentHouse As Decimal = 0
        Dim maxApt As Decimal = 0
        Dim bestApplicant As Integer = 0
        Dim i As Integer = 0
        bestApplicant = i
        If coSalary = True Then
            grossSalary = CType(dv.Table.Rows(0)(4), Decimal)
            grossSalary2 = CType(dv.Table.Rows(1)(4), Decimal)
            otherIncome = CType(dv.Table.Rows(0)(6), Decimal)
            otherIncome2 = CType(dv.Table.Rows(1)(6), Decimal)

            grossSalary = grossSalary + grossSalary2
            otherIncome = otherIncome + otherIncome2

        Else
            For Each drow As DataRow In dv.Table.Rows
                Try
                    grossSalary = CType(dv.Table.Rows(bestApplicant)(4), Decimal)
                    grossSalary2 = CType(dv.Table.Rows(i + 1)(4), Decimal)
                    otherIncome = CType(dv.Table.Rows(bestApplicant)(6), Decimal)
                    otherIncome2 = CType(dv.Table.Rows(i + 1)(6), Decimal)

                Catch ex As Exception

                End Try


                If grossSalary + otherIncome < grossSalary2 + otherIncome2 Then
                    bestApplicant = i + 1
                End If
                i = i + 1
            Next drow
            Try
                grossSalary = CType(dv.Table.Rows(bestApplicant)(4), Decimal)
                otherIncome = CType(dv.Table.Rows(bestApplicant)(6), Decimal)

            Catch ex As Exception

            End Try

        End If

        maxMonthlyRentHouse = grossSalary + otherIncome

        Try
            ssiIncome = CType(dv.Table.Rows(0)(9), Decimal)
        Catch ex As Exception

        End Try
        Try
            ssbIncome = CType(dv.Table.Rows(0)(8), Decimal)
        Catch ex As Exception

        End Try

        If ssbIncome > 0 Then
            If (0.3 * ((grossSalary * 4) + ssbIncome)) > (0.4 * ssbIncome) Then
                maxApt = (0.3 * ((grossSalary * 4) + ssbIncome)) + otherIncome
            Else
                maxApt = (0.4 * ssbIncome) + otherIncome
            End If
        Else
            maxMonthlyRentHouse = grossSalary + otherIncome

            maxApt = grossSalary * 1.15 + otherIncome
        End If
        'co signer income instead of main applicant
        If type1 = 2 Then
            maxMonthlyRentHouse = salCoInfor
            maxApt = salCoInfor * 1.15
        End If

        


        Dim numBed As Int16 = 0
        Dim numBath As Int16 = 0
        Dim washDryer As Boolean = False
        Try
            numBed = CType(dvScreen.Table.Rows(0)(6), Integer)
        Catch ex As Exception

        End Try
        Try
            numBath = CType(dvScreen.Table.Rows(0)(7), Integer)
        Catch ex As Exception

        End Try


        washDryer = CType(dvScreen.Table.Rows(0)(8), Boolean)

        lblNumBed.Text = numBed.ToString
        lblNumBath.Text = numBath.ToString
        chkWaserDryer.Checked = washDryer


        If AdditionalPetBool And Not PetOverBool Then
            maxMonthlyRentHouse = maxMonthlyRentHouse - (grossSalary * 0.1)
            maxApt = maxApt - (grossSalary * 0.1)
            lblIncludedInCalc.Text = lblIncludedInCalc.Text & " 2 Pets "
        ElseIf Not AdditionalPetBool And PetOverBool Then
            maxMonthlyRentHouse = maxMonthlyRentHouse - (grossSalary * 0.1)
            maxApt = maxApt - (grossSalary * 0.1)
            lblIncludedInCalc.Text = lblIncludedInCalc.Text & " 1 over weight/breed limit pet"
        ElseIf AdditionalPetBool And PetOverBool Then
            maxMonthlyRentHouse = maxMonthlyRentHouse - (grossSalary * 0.2)
            maxApt = maxApt - (grossSalary * 0.2)
            lblIncludedInCalc.Text = lblIncludedInCalc.Text & " 2 Pets with at least one over weight/breed limit"
        ElseIf NonHuman Then
            maxMonthlyRentHouse = maxMonthlyRentHouse - (grossSalary * 0.05)
            maxApt = maxApt - (grossSalary * 0.05)
            lblIncludedInCalc.Text = lblIncludedInCalc.Text & " 1 pet"
        End If

        If numNonRelated > 1 Then
            maxMonthlyRentHouse = maxMonthlyRentHouse - (120 * numNonRelated)
            maxApt = maxApt - (120 * numNonRelated)
            lblIncludedInCalc.Text = lblIncludedInCalc.Text & numNonRelated.ToString & " Additional non related renters"
        End If
        lblIncludedInCalc.Text = "The Following is included in the calc of max affordability: " & lblIncludedInCalc.Text
        lblHouseRent.Text = maxMonthlyRentHouse.ToString
        lblRentAfford.Text = maxApt.ToString
        GridView4.DataBind()
        If Not GridView2.Rows(0).Cells(19).Text = "" Then
            For Each row As GridViewRow In GridView4.Rows
                Dim therowindex As Integer = row.RowIndex

                Dim theid As Integer = 0
                Try
                    theid = GridView2.Rows(0).Cells(19).Text
                Catch ex As Exception

                End Try

                Try
                    If GridView4.DataKeys(therowindex).Value.ToString = GridView2.Rows(0).Cells(19).Text And Not theid = 0 Then
                        GridView4.SelectedIndex = therowindex
                        Exit For
                    Else
                        GridView4.SelectedIndex = -1
                    End If
                Catch ex As Exception

                End Try
                Try
                    If GridView3.DataKeys(therowindex).Value.ToString = GridView2.Rows(0).Cells(19).Text And Not theid = 0 Then
                        GridView3.SelectedIndex = therowindex
                        Exit For
                    Else
                        GridView3.SelectedIndex = -1
                    End If
                Catch ex As Exception

                End Try
            Next
        Else
            GridView4.SelectedIndex = -1
        End If
    End Sub
    Protected Sub ddlSelectApplicant_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlSelectApplicant.SelectedIndexChanged
        updateLabelQuery("1", 0.0)
    End Sub

    Protected Sub ckCoSigner_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ckCoSigner.CheckedChanged
        If FormView1.Visible = True Then
            FormView1.Visible = False
        Else
            FormView1.Visible = True
        End If

    End Sub
    Protected Sub FormView1_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormView1.ItemInserting
        'e.Values("UserInput") = System.Web.HttpContext.Current.User.Identity.Name().ToString
        Dim salary As Decimal = Convert.ToDecimal(CType(FormView1.FindControl("Salarytextbox"), TextBox).Text.ToString)
        updateLabelQuery("2", salary)
        ' e.Values("screeningID") = Session("newscreeningid").ToString
    End Sub

    Protected Sub btnRefresh_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRefresh.Click
        ddlSelectApplicant_SelectedIndexChanged(sender, e)

        GridView2.DataBind()
        Console.WriteLine(GridView2.Rows.Count.ToString)
        GridView1.DataBind()
        GridView3.DataBind()
        GridView4.DataBind()
        GridView5.DataBind()
        GridView6.DataBind()


    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
       
        ddlSelectApplicant_SelectedIndexChanged(sender, e)
    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked Then
            Panel2.Visible = True
        Else
            Panel2.Visible = False
        End If
    End Sub

    Protected Sub btnRefresh1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRefresh1.Click
        Dim connStr As String = ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ToString()
        Dim mySQLconnection As New SqlConnection(connStr)
        If mySQLconnection.State = ConnectionState.Closed Then
            mySQLconnection.Open()
        End If
        ' SQL Update Command   
        Dim mySqlUpdate As New SqlCommand("UPDATE Screening SET numNonRelated = @NonRelated, IncludeWD = @IncludeWD, PetOver = @PetOver, AdditionalPet = @AddPet WHERE ScreeningID = @ScreeningID")

        mySqlUpdate.Connection = mySQLconnection
        mySqlUpdate.CommandType = CommandType.Text
        ' mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt32(GridView3.DataKeys(e.NewSelectedIndex).Values(0).ToString())
        mySqlUpdate.Parameters.Add("@ScreeningID", SqlDbType.Int).Value = Session("newScreeningID").ToString()
        mySqlUpdate.Parameters.Add("@NonRelated", SqlDbType.Decimal).Value = ddlNumOcc0.SelectedValue.ToString
        mySqlUpdate.Parameters.Add("@IncludeWD", SqlDbType.Bit).Value = chkIncUtil.Checked
        mySqlUpdate.Parameters.Add("@PetOver", SqlDbType.Bit).Value = chkOverWeightPet.Checked
        mySqlUpdate.Parameters.Add("@AddPet", SqlDbType.Bit).Value = chkAddPet.Checked
        mySqlUpdate.ExecuteNonQuery()

        ' if condition that can be used to check the sql connection  
        ' if it is open then close it.  
        If mySQLconnection.State = ConnectionState.Open Then
            mySQLconnection.Close()
        End If


        CheckBox1.Checked = False
    End Sub

 
    Protected Sub btnRemoveHold_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRemoveHold.Click
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
        mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt16(GridView2.Rows(0).Cells(19).Text)
        mySqlInsert.Parameters.Add("@occupied", SqlDbType.Bit).Value = False
        mySqlInsert.Parameters.Add("@rentReady", SqlDbType.Bit).Value = True

        mySqlInsert.ExecuteNonQuery()

        ' if condition that can be used to check the sql connection  
        ' if it is open then close it.  
        If mySQLconnection.State = ConnectionState.Open Then
            mySQLconnection.Close()
        End If
    End Sub
End Class
