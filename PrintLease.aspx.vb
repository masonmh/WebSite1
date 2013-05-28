
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session("newscreeningid") = 43
        GridView1.DataBind()

        Label1.Text = GridView1.Rows(0).Cells(5).Text
        Label2.Text = GridView1.Rows(0).Cells(6).Text
        Label3.Text = GridView1.Rows(0).Cells(2).Text
        Label4.Text = GridView1.Rows(0).Cells(3).Text
        Label5.Text = GridView1.Rows(0).Cells(7).Text
        Label6.Text = GridView1.Rows(0).Cells(8).Text

        Label7.Text = GridView1.Rows(0).Cells(68).Text
        Label8.Text = GridView1.Rows(0).Cells(67).Text
        Label9.Text = GridView1.Rows(0).Cells(69).Text
        Label10.Text = GridView1.Rows(0).Cells(66).Text
        Label11.Text = Convert.ToDateTime(GridView1.Rows(0).Cells(70).Text).ToShortDateString
        Label12.Text = GridView1.Rows(0).Cells(63).Text
        Label13.Text = GridView1.Rows(0).Cells(62).Text
        Label14.Text = GridView1.Rows(0).Cells(64).Text
        Label15.Text = GridView1.Rows(0).Cells(61).Text
        Label16.Text = Convert.ToDateTime(GridView1.Rows(0).Cells(65).Text).ToShortDateString

        Label17.Text = GridView1.Rows(0).Cells(9).Text
        Label18.Text = GridView1.Rows(0).Cells(10).Text
        Label19.Text = GridView1.Rows(0).Cells(12).Text
        Label20.Text = GridView1.Rows(0).Cells(14).Text

        Label53.Text = GridView1.Rows(0).Cells(15).Text
        Label54.Text = GridView1.Rows(0).Cells(16).Text
        Label55.Text = GridView1.Rows(0).Cells(17).Text
        Label56.Text = GridView1.Rows(0).Cells(18).Text

        CheckBox4.Checked = CType(GridView1.Rows(0).Cells.Item(19).Controls(0), CheckBox).Checked
        CheckBox5.Checked = CType(GridView1.Rows(0).Cells.Item(21).Controls(0), CheckBox).Checked
        CheckBox6.Checked = CType(GridView1.Rows(0).Cells.Item(20).Controls(0), CheckBox).Checked
        Label57.Text = "0.00"
        Label58.Text = "0.00"
        Label59.Text = GridView1.Rows(0).Cells(23).Text
        Label60.Text = GridView1.Rows(0).Cells(24).Text
        Label61.Text = GridView1.Rows(0).Cells(25).Text
        Label62.Text = GridView1.Rows(0).Cells(26).Text
        Label63.Text = GridView1.Rows(0).Cells(27).Text

        Label64.Text = GridView1.Rows(0).Cells(28).Text
        Label65.Text = GridView1.Rows(0).Cells(29).Text
        Label66.Text = GridView1.Rows(0).Cells(30).Text
        Label67.Text = GridView1.Rows(0).Cells(31).Text
        Label68.Text = GridView1.Rows(0).Cells(32).Text
        Label69.Text = GridView1.Rows(0).Cells(33).Text

        Label70.Text = GridView1.Rows(0).Cells(34).Text
        Label71.Text = GridView1.Rows(0).Cells(35).Text
        Label72.Text = GridView1.Rows(0).Cells(36).Text
        Label73.Text = GridView1.Rows(0).Cells(37).Text
        Label74.Text = GridView1.Rows(0).Cells(38).Text
        Label75.Text = GridView1.Rows(0).Cells(39).Text

        Label76.Text = GridView1.Rows(0).Cells(40).Text
        Label77.Text = GridView1.Rows(0).Cells(41).Text
        Label78.Text = GridView1.Rows(0).Cells(42).Text
        Label79.Text = GridView1.Rows(0).Cells(43).Text
        Label80.Text = GridView1.Rows(0).Cells(44).Text
        Label81.Text = GridView1.Rows(0).Cells(45).Text

        Label82.Text = GridView1.Rows(0).Cells(46).Text

        Label83.Text = GridView1.Rows(0).Cells(51).Text
        Label84.Text = Convert.ToDateTime(GridView1.Rows(0).Cells(4).Text).ToShortDateString

        'names
        Label85.Text = GridView1.Rows(0).Cells(2).Text
        Label86.Text = GridView1.Rows(0).Cells(3).Text
        Label87.Text = GridView1.Rows(0).Cells(7).Text
        Label88.Text = GridView1.Rows(0).Cells(8).Text

        'vehciles
        Label89.Text = GridView1.Rows(0).Cells(47).Text
        Label90.Text = GridView1.Rows(0).Cells(48).Text
        Label91.Text = GridView1.Rows(0).Cells(49).Text
        Label92.Text = GridView1.Rows(0).Cells(50).Text

        'Dates
        Label93.Text = Convert.ToDateTime(GridView1.Rows(0).Cells(4).Text).ToShortDateString
        Label94.Text = Convert.ToDateTime(GridView1.Rows(0).Cells(4).Text).ToShortDateString
        Label95.Text = Convert.ToDateTime(GridView1.Rows(0).Cells(4).Text).ToShortDateString
        Label96.Text = Convert.ToDateTime(GridView1.Rows(0).Cells(4).Text).ToShortDateString

        Label97.Text = GridView1.Rows(0).Cells(6).Text




        'Label24.Text = GridView1.Rows(0).Cells(33).Text
        'Label25.Text = GridView1.Rows(0).Cells(34).Text

        ' Label26.Text = GridView1.Rows(0).Cells(15).Text
        'Label27.Text = GridView1.Rows(0).Cells(16).Text
        'Label28.Text = GridView1.Rows(0).Cells(17).Text
        'Label29.Text = GridView1.Rows(0).Cells(33).Text


       
        For Each cControl As Control In Me.Controls
            If (TypeOf cControl Is Label) Then
                Dim labelNow As Label = CType(cControl, Label)
                If labelNow.Text = "" Or labelNow.Text = " " Or labelNow.Text = "&nbsp;" Then
                    labelNow.Text = "_________"
                End If
            End If
        Next cControl


    End Sub
End Class
