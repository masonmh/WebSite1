
Partial Class _Default
    Inherits System.Web.UI.Page

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
	Protected Sub FormView1_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        If e.Exception IsNot Nothing Then
                Throw e.Exception


                e.ExceptionHandled = True
        End If
End Sub
End Class
