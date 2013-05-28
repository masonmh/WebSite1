Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Request.UrlReferrer.PathAndQuery.ToString = "/appleasing/NewApplicant.aspx" Or Request.UrlReferrer.PathAndQuery.ToString = "/appleasing/Applicant17.aspx" Then
            Panel1.Visible = True
            GridView1.DataSourceID = "SqlDataSource3"
            GridView2.DataSourceID = "SqlDataSourceScreening"

            GridView1.DataBind()
            GridView2.DataBind()

            If Not IsPostBack Then
                If Session("newScreeningID") = Nothing Then
                    Session("newScreeningID") = "43"
                End If

                'Session("propertyID") = "27"
                ddlSelectApplicant.SelectedValue = Session("newScreeningID")
            Else
                Session("newScreeningID") = ddlSelectApplicant.SelectedValue.ToString
            End If
            Dim dv As DataView
            dv = CType(SqlDataSource3.Select(DataSourceSelectArguments.Empty), DataView)
            Dim dvScreen As DataView
            Dim coSalary As Boolean
            Dim numNonRelated As Decimal

            dvScreen = CType(SqlDataSourceScreening.Select(DataSourceSelectArguments.Empty), DataView)
            Try
                coSalary = CType(dvScreen.Table.Rows(0)(14), Boolean)
                numNonRelated = CType(dvScreen.Table.Rows(0)(13), Decimal)

            Catch ex As Exception

            End Try
        Else
            Panel1.Visible = False
            GridView2.DataSourceID = Nothing
            GridView1.DataSourceID = Nothing

        End If
    End Sub
    Protected Sub ddlSelectApplicant_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlSelectApplicant.SelectedIndexChanged
        Session("newScreeningID") = ddlSelectApplicant.SelectedValue.ToString
    End Sub

    Protected Sub FormView1_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewCommandEventArgs) Handles FormView1.ItemCommand
        Dim textBoxDOB As String = ""

        textBoxDOB = Trim(CType(FormView1.FindControl("DOBTextBox"), TextBox).Text)
        If (Not textBoxDOB.Contains("/") And Not textBoxDOB.Contains("-")) And textBoxDOB.Length = 8 Then

            Try
                CType(FormView1.FindControl("DOBTextBox"), TextBox).Text = textBoxDOB.Substring(0, 2) & "/" & textBoxDOB.Substring(2, 2) & "/" & textBoxDOB.Substring(4, 4)

            Catch ex As Exception
                CType(FormView1.FindControl("RegularExpressionValidator1"), RegularExpressionValidator).Validate()
            End Try
        End If

        Dim textBoxDOH As String = ""

        textBoxDOH = Trim(CType(FormView1.FindControl("DOHTextBox"), TextBox).Text)
        If (Not textBoxDOH.Contains("/") And Not textBoxDOH.Contains("-")) And textBoxDOH.Length = 8 Then
            Try
                CType(FormView1.FindControl("DOHTextBox"), TextBox).Text = textBoxDOH.Substring(0, 2) & "/" & textBoxDOH.Substring(2, 2) & "/" & textBoxDOH.Substring(4, 4)
            Catch ex As Exception
                CType(FormView1.FindControl("RegularExpressionValidator9"), RegularExpressionValidator).Validate()
            End Try
        End If

        CType(FormView1.FindControl("RegularExpressionValidator1"), RegularExpressionValidator).Validate()
        If CType(FormView1.FindControl("RegularExpressionValidator1"), RegularExpressionValidator).IsValid Then
            textBoxDOB.ToString()

        End If
        CType(FormView1.FindControl("RegularExpressionValidator9"), RegularExpressionValidator).Validate()
    End Sub

    Protected Sub FormView1_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        GridView1.DataBind()
        GridView2.DataBind()
    End Sub


    Protected Sub FormView1_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormView1.ItemInserting
       

        e.Values("UserInput") = System.Web.HttpContext.Current.User.Identity.Name().ToString
        e.Values("inputDate") = Today.ToLongDateString
        e.Values("ScreeningDate") = Today.ToLongDateString
        e.Values("screeningID") = ddlSelectApplicant.SelectedValue.ToString

        Dim ddlSelected As DropDownList
        Dim txtGrossSalary As TextBox
        Dim salary As Decimal = 0.0
        Try
            ddlSelected = FormView1.FindControl("DropDownList1")
            txtGrossSalary = FormView1.FindControl("GrossSalaryTextBox")
            salary = Convert.ToDouble(txtGrossSalary.Text)
            If ddlSelected.SelectedIndex = 2 And Not salary = 0 Then
                salary = salary / 2
            ElseIf ddlSelected.SelectedIndex = 3 And Not salary = 0 Then
                salary = salary / 4
            End If
        Catch ex As Exception

        End Try

        e.Values("GrossSalary") = salary
    End Sub
    Protected Sub FormView1_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FormView1.ItemUpdating
        'e.Key.Remove("UserInput")
        e.NewValues.Add("UserInput", System.Web.HttpContext.Current.User.Identity.Name().ToString)
        'e.Keys.Remove("InputDate")
        e.NewValues.Add("InputDate", Today.ToShortDateString)

    End Sub

    Protected Sub btnRefresh_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRefresh.Click
        ddlSelectApplicant_SelectedIndexChanged(sender, e)
    End Sub
End Class
