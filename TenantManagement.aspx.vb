
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub SqlRNADatabase_Selecting(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlRNADatabase.Selecting

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        '  Dim lbl2 As TextBox = FormView1.FindControl("UserInputTextBox")
        ' lbl2.Text = System.Web.HttpContext.Current.User.Identity.Name().ToString

        'Dim lbl3 As TextBox = FormView1.FindControl("InputDateTextBox")
        'lbl3.Text = Today.Date.ToShortDateString
        'DirectCast(FormView1.FindControl("UserInputTextBox"), TextBox).Text = System.Web.HttpContext.Current.User.Identity.Name().ToString
        'DirectCast(FormView1.FindControl("InputDateTextBox"), TextBox).Text = Today.Date.ToShortDateString
    End Sub

    Protected Sub FormView1_ItemInserting(sender As Object, e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormView1.ItemInserting
        e.Values("UserInput") = System.Web.HttpContext.Current.User.Identity.Name().ToString
        e.Values("inputDate") = Today.ToShortDateString
    End Sub
    Protected Sub FormView1_ItemUpdating(sender As Object, e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FormView1.ItemUpdating
        'e.Key.Remove("UserInput")
        e.NewValues.Add("UserInput", System.Web.HttpContext.Current.User.Identity.Name().ToString)
        'e.Keys.Remove("InputDate")
        e.NewValues.Add("InputDate", Today.ToShortDateString)
    End Sub
    Protected Sub FormView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
       If e.Exception IsNot Nothing Then
                Throw e.Exception


                e.ExceptionHandled = True
        End If
    End Sub



End Class
