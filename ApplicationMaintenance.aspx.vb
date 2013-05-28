Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            ' Session("newScreeningID") = "42"
            ddlSelectApplicant.SelectedValue = Session("newScreeningID")
        End If
        Try
            Session("propertyID") = GridView2.Rows(0).Cells(15).Text.ToString
        Catch ex As Exception

        End Try

        Dim dvScreen As DataView
        'Dim propertyID As Integer = 
    End Sub


    Protected Sub GridView4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView4.SelectedIndexChanged

    End Sub

    Protected Sub ddlSelectApplicant_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlSelectApplicant.SelectedIndexChanged
        Session("newScreeningID") = ddlSelectApplicant.SelectedValue
    End Sub
End Class


