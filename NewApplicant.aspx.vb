Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub FormView2_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewCommandEventArgs) Handles FormView2.ItemCommand

    End Sub
    Protected Sub FormView2_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewInsertedEventArgs) Handles FormView2.ItemInserted

        Dim connS As New SqlConnection(ConfigurationManager.ConnectionStrings("RNARentalApplicationConnectionString").ConnectionString)

        Dim adp As New SqlDataAdapter("select top 1 * from Screening order by [ScreeningID] desc", connS)
        Dim ds As New DataSet()
        'connS.Open()
        'adp.Fill(ds)
        'newScreeningID = ds.Tables(0).Rows(0)(0).ToString
        'connS.Close()

        FormView2.Visible = False
        lblInitialQ.Visible = False
    End Sub


    Protected Sub FormView2_ItemInserting(sender As Object, e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormView2.ItemInserting
        e.Values("UserInput") = System.Web.HttpContext.Current.User.Identity.Name().ToString
        e.Values("ScreeningDate") = Today.ToShortDateString
        e.Values("inputDate") = Today.ToShortDateString

    End Sub

    Protected Sub SqlDataSource2_Inserted(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs) Handles SqlDataSource2.Inserted
        Session("newScreeningID") = e.Command.Parameters(12).Value.ToString
        ' Server.Transfer("~Applicant17.aspx", True)
        Response.Redirect("Applicant17.aspx")
    End Sub
End Class
