Public Class frmRadnoMj


    Private Sub frmRadnoMj_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DBDataSet.radno_mjesto' table. You can move, or remove it, as needed.
        Me.Radno_mjestoTableAdapter.Fill(Me.DBDataSet.radno_mjesto)

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.RadnomjestoBindingSource.AddNew()

    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim IDrm As Integer = Convert.ToInt16(lbl_IDRm.Text)
        Me.RadnomjestoBindingSource.EndEdit()
        Me.Radno_mjestoTableAdapter.Update(Me.DBDataSet.radno_mjesto)
        If (IDrm < 0) Then
            IDrm = Convert.ToInt16(lbl_IDRm.Text)
        End If
        'kreiranje gantograma za ovo radno mjesto, radnu liniju
        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
        Dim Agant As New DBDataSetTableAdapters.gantogramTableAdapter
        Dim trajanje As Integer = Aproj.TrajanjeProjekta(frmMain.ID_proj)
        Dim N As Integer
        Dim D As Integer

        Dim IsExist As Integer = Agant.Query_IsExist(IDrm)

        If IsExist = 0 Then
            For N = 1 To trajanje
                For D = 1 To 5
                    Agant.Inicijalizacija(IDrm, N, D)
                Next D
            Next N
        End If
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Me.RadnomjestoBindingSource.CancelEdit()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Radno_mjestoTableAdapter.Delete(ListBox1.SelectedValue)
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Me.Close()
    End Sub
End Class