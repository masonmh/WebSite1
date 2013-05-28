Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  Session("newscreeningid") = 43

        GridView1.DataBind()

        Session("propertyid") = GridView1.Rows(0).Cells(40).Text
        GridView3.DataBind()
       

        Label1.Text = GridView1.Rows(0).Cells(25).Text
        Label2.Text = GridView2.Rows(0).Cells(0).Text & " " & GridView2.Rows(0).Cells(1).Text
        Try
            Label3.Text = GridView2.Rows(1).Cells(0).Text & " " & GridView2.Rows(1).Cells(1).Text
        Catch ex As Exception
            Label3.Text = " "
        End Try

        Label4.Text = Convert.ToDateTime(GridView1.Rows(0).Cells(1).Text).ToShortDateString
        Label5.Text = Convert.ToDateTime(GridView1.Rows(0).Cells(1).Text).ToShortDateString

        Label7.Text = GridView1.Rows(0).Cells(42).Text
        ' Label7.Text = GridView1.Rows(0).Cells
        Label8.Text = ""
        Label9.Text = GridView3.Rows(0).Cells(2).Text & " " & GridView3.Rows(0).Cells(3).Text

        If CType(GridView1.Rows(0).Cells.Item(6).Controls(0), CheckBox).Checked And CType(GridView1.Rows(0).Cells.Item(49).Controls(0), CheckBox).Checked Then
            Label8.Text = "Yes"
        End If

        Label10.Text = GridView3.Rows(0).Cells(16).Text
        'Label11.Text = "Gas: " &
        CheckBox1.Checked = CType(GridView3.Rows(0).Cells.Item(10).Controls(0), CheckBox).Checked
        CheckBox2.Checked = CType(GridView3.Rows(0).Cells.Item(11).Controls(0), CheckBox).Checked
        CheckBox3.Checked = CType(GridView3.Rows(0).Cells.Item(12).Controls(0), CheckBox).Checked

        Label12.Text = GridView3.Rows(0).Cells(8).Text


        Label14.Text = Convert.ToDecimal(GridView2.Rows(0).Cells(3).Text)
        Label15.Text = Convert.ToDecimal(GridView2.Rows(0).Cells(3).Text)

        Label16.Text = Convert.ToDecimal(GridView2.Rows(0).Cells(3).Text) * 1.15
        Try
            Label17.Text = GridView2.Rows(0).Cells(9).Text
            If Label17.Text = "&nbsp;" Then
                Label17.Text = 0.0
            End If
        Catch ex As Exception
            Label17.Text = 0.0
        End Try
        If Convert.ToDecimal(Label17.Text) <= 0 Then
            Label18.Text = 0.0
        Else
            Label18.Text = Convert.ToDecimal(GridView2.Rows(0).Cells(3).Text) * 4
        End If


        Label19.Text = 0.3 * (Convert.ToDecimal(Label17.Text) + Convert.ToDecimal(Label18.Text))
        Label20.Text = Label17.Text
        Label21.Text = Convert.ToDecimal(Label17.Text) * 0.4

        Label22.Text = "Yes"
        Label23.Text = "Yes"

        Dim age As Integer = 0

        Dim dob As Date
        Dim nowDate As Date = Today.ToShortDateString

        Try
            age = (nowDate - dob).Days
            If age / 365 > 18 Then
                Label24.Text = "Yes"
            Else
                Label24.Text = "No"
            End If
        Catch ex As Exception
            Label24.Text = "No"
        End Try

        Label25.Text = GridView2.Rows(0).Cells(10).Text
        Try
            Label26.Text = GridView2.Rows(1).Cells(10).Text
        Catch ex As Exception
            Label26.Text = ""
        End Try

        Label29.Text = GridView1.Rows(0).Cells(29).Text
        Label31.Text = Convert.ToDateTime(GridView1.Rows(0).Cells(1).Text).ToShortDateString

        Label37.Text = "E: " & (Convert.ToDecimal(GridView3.Rows(0).Cells(16).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(9).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(8).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(13).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(14).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(15).Text) + (Convert.ToDecimal(Label7.Text) * 120))
        Label32.Text = GridView4.Rows(0).Cells(15).Text
        Label33.Text = GridView4.Rows(0).Cells(15).Text & "* X"
        Label34.Text = GridView4.Rows(0).Cells(15).Text & "* Length of Lease"
        Label35.Text = Convert.ToDecimal(GridView4.Rows(0).Cells(15).Text) - (0.3 * ((Convert.ToDecimal(GridView3.Rows(0).Cells(16).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(9).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(8).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(13).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(14).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(15).Text) + (Convert.ToDecimal(Label7.Text) * 120))))
        Label36.Text = Convert.ToDecimal(GridView4.Rows(0).Cells(15).Text) - (0.5 * ((Convert.ToDecimal(GridView3.Rows(0).Cells(16).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(9).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(8).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(13).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(14).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(15).Text) + (Convert.ToDecimal(Label7.Text) * 120))))

        Dim dvScreen As DataView

        Dim AdditionalPetBool, PetOverBool, IncludeWDBool, UtilitiesIncBool As Boolean
        Dim numNonRelated As Decimal = 0
        Dim NonHuman As Boolean
        dvScreen = CType(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)
        Label38.Text = "0.00"
        Try

            'CType(GridView1.Rows(0).Cells.Item(6).Controls(0), CheckBox).Checked
            'numNonRelated = CType(GridView1.FindControl("numNonRelated").ToString, Decimal)
            NonHuman = CType(GridView1.Rows(0).Cells.Item(83).Controls(0), CheckBox).Checked

            AdditionalPetBool = CType(GridView1.Rows(0).Cells.Item(141).Controls(0), CheckBox).Checked
            PetOverBool = CType(GridView1.Rows(0).Cells.Item(142).Controls(0), CheckBox).Checked
            'IncludeWDBool = CType(GridView1.FindControl("AdditionalPetBool").ToString, Boolean)
            '  UtilitiesIncBool = CType(GridView1.FindControl("AdditionalPetBool").ToString, Boolean)

            If AdditionalPetBool And Not PetOverBool Then
                Label38.Text = Convert.ToDecimal(Label10.Text) * 0.1

                ' lblIncludedInCalc.Text = lblIncludedInCalc.Text & " 2 Pets "
            ElseIf Not AdditionalPetBool And PetOverBool Then
                Label38.Text = Convert.ToDecimal(Label10.Text) * 0.1

                ' lblIncludedInCalc.Text = lblIncludedInCalc.Text & " 1 over weight/breed limit pet"
            ElseIf AdditionalPetBool And PetOverBool Then
                ' maxMonthlyRentHouse = maxMonthlyRentHouse - (maxMonthlyRentHouse * 0.2)
                Label38.Text = Convert.ToDecimal(Label10.Text) * 0.2

            ElseIf NonHuman Then
                '  maxMonthlyRentHouse = maxMonthlyRentHouse - (maxMonthlyRentHouse * 0.05)
                Label38.Text = Convert.ToDecimal(Label10.Text) * 0.05

            End If
        Catch ex As Exception

        End Try

        If numNonRelated > 1 Then
            Label38.Text = Convert.ToDecimal(Label10.Text) + (120 * numNonRelated)
        End If
        Label13.Text = Convert.ToDecimal(GridView3.Rows(0).Cells(8).Text) + Convert.ToDecimal(GridView3.Rows(0).Cells(16).Text) + Convert.ToDecimal(Label38.Text)
    End Sub


End Class
