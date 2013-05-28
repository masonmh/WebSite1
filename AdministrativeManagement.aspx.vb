Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim beginDate As String
    Dim applicantID As String
    Dim applicantID2 As String
    Dim PropertyID As String
    Dim applicantID3 As String
    Dim applicantID4 As String
    '            [LeasingApprovalDate] = @LeasingApprovalDate, [LeasingApprovedBy] = @LeasingApprovedBy, [ReviewedBy] = @ReviewedBy, [userInput] = @userInput, [inputdate] = @inputdate, [Approved] = @Approved, [ManagementApprovdBy]=@ManagementApprovdBy 

    Dim leaseIDTen As String
    Dim propertyIDTen, applicantIDTen, vehicleIDTen, cotenant2Ten, cotenant3Ten, cotenant4, aprovedBy, UserInput, inputDate As String

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Dim newValue As Decimal = 0.0
        If chbChangeDep.Checked Then
            newValue = Convert.ToDecimal(TextBox2.Text)
        End If

        'Try
        Dim connStr As String = ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ToString()
        Dim mySQLconnection As New SqlConnection(connStr)
        If mySQLconnection.State = ConnectionState.Closed Then
            mySQLconnection.Open()
        End If
        ' SQL Update Command   
        Dim mySqlUpdate As New SqlCommand("UPDATE Screening SET ManagementApprovedBy = @ApprovedBy, ManagementApprovalDate = @inputDate, ApprovedByManagement = @ManAppr, ManagementComments = @ManagementComments WHERE ScreeningID = @ScreeningID")
        mySqlUpdate.Connection = mySQLconnection
        mySqlUpdate.CommandType = CommandType.Text
        ' mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt32(GridView3.DataKeys(e.NewSelectedIndex).Values(0).ToString())
        mySqlUpdate.Parameters.Add("@ScreeningID", SqlDbType.Int).Value = Session("newScreeningID").ToString()
        mySqlUpdate.Parameters.Add("@ApprovedBy", SqlDbType.Text).Value = System.Web.HttpContext.Current.User.Identity.Name().ToString
        mySqlUpdate.Parameters.Add("@inputDate", SqlDbType.Date).Value = Today.ToShortDateString
        mySqlUpdate.Parameters.Add("@ManAppr", SqlDbType.Bit).Value = True
        mySqlUpdate.Parameters.Add("@ManagementComments", SqlDbType.Text).Value = txtManComments.Text
        mySqlUpdate.ExecuteNonQuery()

        Dim mySqlUpdate1 As New SqlCommand("UPDATE LeaseForm SET ApprovedBy = @ApprovedBy, inputDate = @inputDate, Approved = @ManAppr, AltSecDepK = @altDep WHERE LeaseID = @LeaseID")
        mySqlUpdate1.Connection = mySQLconnection
        mySqlUpdate1.CommandType = CommandType.Text

        mySqlUpdate1.Parameters.Add("@LeaseID", SqlDbType.Int).Value = GridView6.Rows(0).Cells(0).Text.ToString
        mySqlUpdate1.Parameters.Add("@ApprovedBy", SqlDbType.Text).Value = System.Web.HttpContext.Current.User.Identity.Name().ToString
        mySqlUpdate1.Parameters.Add("@inputDate", SqlDbType.Date).Value = Today.ToShortDateString
        mySqlUpdate1.Parameters.Add("@ManAppr", SqlDbType.Bit).Value = True
        mySqlUpdate1.Parameters.Add("@Altdep", SqlDbType.Decimal).Value = newValue
        mySqlUpdate1.ExecuteNonQuery()
        ' if condition that can be used to check the sql connection  
        ' if it is open then close it.  
        If mySQLconnection.State = ConnectionState.Open Then
            mySQLconnection.Close()
        End If



        'Dim Conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ConnectionString)
        ' 1. Create Command
        ' Sql Update Statement
        'Dim updateSql As String = _
        '  "UPDATE Application " & _
        ' "SET ApprovedBy = @ApprovedBy, inputDate = @inputDate " & _
        '"WHERE ApplicantionID = @ApplicationID"
        'Dim UpdateCmd As New SqlCommand(updateSql, Conn)

        ' 2. Map Parameters

        'UpdateCmd.Parameters.Add("@ApplicationID", _
        '   SqlDbType.BigInt, 3, "ApplicationID")

        ' UpdateCmd.Parameters.Add("@ApprovedBy", _
        '   SqlDbType.NChar, 40, "ApprovedBy")

        'UpdateCmd.Parameters.Add("@inputDate", _
        '  SqlDbType.Date, 3, "inputDate")

        'UpdateCmd.Parameters("@ApplicationID").Value = ddlApplicationTenantDateCreated.SelectedValue.ToString
        'UpdateCmd.Parameters("@ApprovedBy").Value = System.Web.HttpContext.Current.User.Identity.Name().ToString()
        'UpdateCmd.Parameters("@inputDate").Value = Today.ToShortDateString

        'UpdateCmd.ExecuteNonQuery()

        ' Catch ex As SqlException
        ' Display error
        'End Try

    End Sub

    Protected Sub ddlSelectApplicant_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles ddlSelectApplicant.SelectedIndexChanged
        Session("newScreeningID") = ddlSelectApplicant.SelectedValue
        GridView2.DataBind()
        GridView4.DataBind()
        GridView5.DataBind()
        GridView6.DataBind()
        GridView7.DataBind()
        If GridView6.Rows.Count > 0 Then
            Session("propertyID") = GridView2.Rows(0).Cells(15).Text.ToString
            GridView4.DataBind()
            TextBox1.Text = Math.Round(Convert.ToDecimal(GridView6.Rows(0).Cells(33).Text.ToString), 2).ToString
        End If
        Button1.Enabled = False
    End Sub

    Protected Sub ddlApprovedDrop_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles ddlApprovedDrop.SelectedIndexChanged
        Session("newScreeningID") = ddlApprovedDrop.SelectedValue
        GridView2.DataBind()
        GridView4.DataBind()
        GridView5.DataBind()
        GridView6.DataBind()
        GridView7.DataBind()
        If GridView6.Rows.Count > 0 Then
            Session("propertyID") = GridView2.Rows(0).Cells(15).Text.ToString
            GridView4.DataBind()
            TextBox1.Text = Math.Round(Convert.ToDecimal(GridView6.Rows(0).Cells(33).Text.ToString), 2).ToString
        End If
        Button1.Enabled = True
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            '  Session("newScreeningID") = ""
            Try
                ' ddlSelectApplicant.SelectedValue = Session("newScreeningID")
            Catch ex As Exception

            End Try

        End If
        'ddlApprovedDrop.SelectedValue = -1
        GridView6.DataBind()
        
    End Sub

    Protected Sub chbChangeDep_CheckedChanged(sender As Object, e As System.EventArgs) Handles chbChangeDep.CheckedChanged
        If chbChangeDep.Checked Then
            TextBox2.Visible = True
            Label3.Visible = True
            Response.Redirect(Request.RawUrl)
        End If
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        GridView7.Visible = True
    End Sub

    
    Protected Sub GridView4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView4.SelectedIndexChanged

    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Dim newValue As Decimal = 0.0
        Session("newScreeningID") = ddlApprovedDrop0.SelectedValue.ToString
        GridView6.DataBind()
        If chbChangeDep.Checked Then
            newValue = Convert.ToDecimal(TextBox2.Text)
        End If

        'Try
        Dim connStr As String = ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ToString()
        Dim mySQLconnection As New SqlConnection(connStr)
        If mySQLconnection.State = ConnectionState.Closed Then
            mySQLconnection.Open()
        End If
        ' SQL Update Command   
        Dim mySqlUpdate As New SqlCommand("UPDATE Screening SET ManagementApprovedBy = @ApprovedBy, ManagementApprovalDate = @inputDate, ApprovedByManagement = @ManAppr, ManagementComments = @ManagementComments WHERE ScreeningID = @ScreeningID")
        mySqlUpdate.Connection = mySQLconnection
        mySqlUpdate.CommandType = CommandType.Text
        ' mySqlInsert.Parameters.Add("@propertyID", SqlDbType.Int).Value = Convert.ToInt32(GridView3.DataKeys(e.NewSelectedIndex).Values(0).ToString())
        mySqlUpdate.Parameters.Add("@ScreeningID", SqlDbType.Int).Value = Session("newScreeningID").ToString()
        mySqlUpdate.Parameters.Add("@ApprovedBy", SqlDbType.Text).Value = System.Web.HttpContext.Current.User.Identity.Name().ToString
        mySqlUpdate.Parameters.Add("@inputDate", SqlDbType.Date).Value = Today.ToShortDateString
        mySqlUpdate.Parameters.Add("@ManAppr", SqlDbType.Bit).Value = False
        mySqlUpdate.Parameters.Add("@ManagementComments", SqlDbType.Text).Value = txtManComments0.Text
        mySqlUpdate.ExecuteNonQuery()

        Dim mySqlUpdate1 As New SqlCommand("UPDATE LeaseForm SET ApprovedBy = @ApprovedBy, inputDate = @inputDate, Approved = @ManAppr, AltSecDepK = @altDep WHERE LeaseID = @LeaseID")
        mySqlUpdate1.Connection = mySQLconnection
        mySqlUpdate1.CommandType = CommandType.Text

        mySqlUpdate1.Parameters.Add("@LeaseID", SqlDbType.Int).Value = GridView6.Rows(0).Cells(0).Text.ToString
        mySqlUpdate1.Parameters.Add("@ApprovedBy", SqlDbType.Text).Value = System.Web.HttpContext.Current.User.Identity.Name().ToString
        mySqlUpdate1.Parameters.Add("@inputDate", SqlDbType.Date).Value = Today.ToShortDateString
        mySqlUpdate1.Parameters.Add("@ManAppr", SqlDbType.Bit).Value = False
        mySqlUpdate1.Parameters.Add("@Altdep", SqlDbType.Decimal).Value = newValue
        mySqlUpdate1.ExecuteNonQuery()
        ' if condition that can be used to check the sql connection  
        ' if it is open then close it.  
        If mySQLconnection.State = ConnectionState.Open Then
            mySQLconnection.Close()
        End If

    End Sub

    Protected Sub btnRefresh1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRefresh1.Click

    End Sub

    Protected Sub btnRefresh0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRefresh0.Click
        ddlApprovedDrop_SelectedIndexChanged(sender, e)
    End Sub

    Protected Sub btnRefresh_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRefresh.Click
        ddlSelectApplicant_SelectedIndexChanged(sender, e)
    End Sub
End Class


