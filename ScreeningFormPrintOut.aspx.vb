﻿
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("newscreeningid") = 43
        GridView1.DataBind()
    End Sub

    
End Class
