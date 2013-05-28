Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        ' Session("newScreeningID") = "42"
        If Request.UrlReferrer.PathAndQuery.ToString = "/appleasing/FindCompatibleProperties.aspx" Or Request.UrlReferrer.PathAndQuery.ToString = "/appleasing/Complete811Screening.aspx" Then
            Panel1.Visible = True
            GridView2.DataSourceID = "SqlDataSourceScreening"
            GridView2.DataBind()

            If Not IsPostBack Then
                If Session("newScreeningID") = Nothing Then
                    Session("newScreeningID") = "43"
                End If
                Session("propertyID") = "27"
                ddlSelectApplicant.SelectedValue = Session("newScreeningID")
            Else
                Session("newscreeningid") = ddlSelectApplicant.SelectedValue.ToString
            End If
            ddlSelectApplicant.SelectedValue = Session("newScreeningID")

        Else
            Panel1.Visible = False
            GridView2.DataSourceID = Nothing

        End If

    End Sub
    Protected Sub FormView1_ItemInserting(sender As Object, e As System.Web.UI.WebControls.FormViewInsertEventArgs) Handles FormView1.ItemInserting
        '  e.Values("UserInput") = System.Web.HttpContext.Current.User.Identity.Name().ToString
        ' e.Values("inputDate") = Today.ToShortDateString
    End Sub
    Protected Sub FormView1_ItemUpdating(sender As Object, e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FormView1.ItemUpdating
        'e.Key.Remove("UserInput")
        e.NewValues.Add("UserInput", System.Web.HttpContext.Current.User.Identity.Name().ToString)
        'e.Keys.Remove("InputDate")
        e.NewValues.Add("InputDate", Today.ToShortDateString)
        ' e.NewValues.Add("screeningID", Session("newscreeningID").ToString)
    End Sub

    Protected Sub ddlSelectApplicant_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles ddlSelectApplicant.SelectedIndexChanged
        Session("newScreeningID") = ddlSelectApplicant.SelectedValue.ToString
        Try
            FormView1.DataBind()
            GridView2.DataBind()
        Catch ex As Exception

        End Try
        
    End Sub

    Protected Sub ZipTextBox_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
End Class
