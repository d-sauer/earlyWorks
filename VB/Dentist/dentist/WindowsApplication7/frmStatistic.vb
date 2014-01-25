Public Class frmStatistic

    Private Sub frmStatistic_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.RacunTableAdapter.Fill(Me.DentistDataSet.racun)
        Me.rac_zahvatTableAdapter.Fill(Me.DentistDataSet.rac_zahvat)
    End Sub


    Private Sub btnShowAll_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnShowAll.Click
        Me.RacunTableAdapter.Fill(Me.DentistDataSet.racun)
    End Sub

    Private Sub btnClose_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub

    Private Sub btnShowDate_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnShowDate.Click
        Dim date1 As Date = Date.Parse(Kal1.Value.Day.ToString + "." + Kal1.Value.Month.ToString + "." + Kal1.Value.Year.ToString + " 0:00")
        Dim date2 As Date = Date.Parse(Kal2.Value.Day.ToString + "." + Kal2.Value.Month.ToString + "." + Kal2.Value.Year.ToString + " 23:59")

        Me.RacunTableAdapter.FillBy_Date(Me.DentistDataSet.racun, date1, date2)
    End Sub

    
    Private Sub btnRefresh_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnRefresh.Click
        Dim IDrac As Integer = 0
        Select Case TabControl1.SelectedIndex
            Case 0
                Try
                    IDrac = DataGridView1.SelectedRows(0).Cells(0).Value
                    Me.RacunTableAdapter.FillBy_IDrac(Me.DentistDataSet.racun, IDrac)
                    Me.rac_zahvatTableAdapter.FillBy_IDrac(Me.DentistDataSet.rac_zahvat, IDrac)
                    ReportV.RefreshReport()
                Catch
                End Try
            Case 1
                Me.zahvatiTableAdapter.Fill(Me.DentistDataSet.zahvati)
                Me.ReportViewer1.RefreshReport()
            Case 2
                Me.VNarucP_MTableAdapter.Fill(Me.DentistDataSet.VNarucP_M)
                Me.VBrDolaza_MTableAdapter.Fill(Me.DentistDataSet.VBrDolaza_M)
                Me.VPac_MTableAdapter.Fill(Me.DentistDataSet.VPac_M)
                Me.VBrZahvataTableAdapter.Fill(Me.DentistDataSet.VBrZahvata)
                Me.ReportVM.RefreshReport()
            Case 3
                Me.VPac_YTableAdapter.Fill(Me.DentistDataSet.VPac_Y)
                Me.VNarucP_YTableAdapter.Fill(Me.DentistDataSet.VNarucP_Y)
                Me.VBrDolaza_YTableAdapter.Fill(Me.DentistDataSet.VBrDolaza_Y)
                Me.VBrZahvataTableAdapter.Fill(Me.DentistDataSet.VBrZahvata)
                Me.ReportVY.RefreshReport()
        End Select
    End Sub
End Class