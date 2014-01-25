Public Class frmZahvati
    Dim pos As Integer = 0
    Private Sub frmZahvati_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DentistDataSet.zahvati' table. You can move, or remove it, as needed.
        Me.ZahvatiTableAdapter.Fill(Me.DentistDataSet.zahvati)
        'TODO: This line of code loads data into the 'DentistDataSet.zahvati' table. You can move, or remove it, as needed.
        Me.ZahvatiTableAdapter.Fill(Me.DentistDataSet.zahvati)

        'administracija
        Call admin()
    End Sub

    Private Sub admin()
        'administracijska prava
        If (frmMain.statDoktor.Text = "Administrator") Then
            btnAdd.Enabled = True
            btnChange.Enabled = True
            btnDel.Enabled = True
        Else
            btnAdd.Enabled = False
            btnChange.Enabled = False
            btnDel.Enabled = False
        End If
    End Sub
  
    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Me.ZahvatiTableAdapter.Fill(Me.DentistDataSet.zahvati)
        pos = Me.ZahvatiBindingSource.Position
        Me.ZahvatiBindingSource.AddNew()
    End Sub

    Private Sub btnChange_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnChange.Click
        pos = Me.ZahvatiBindingSource.Position
        Me.ZahvatiBindingSource.EndEdit()
        Me.ZahvatiTableAdapter.Update(DentistDataSet.zahvati)
        Me.ZahvatiTableAdapter.Fill(Me.DentistDataSet.zahvati)
        Me.ZahvatiBindingSource.Position = pos
    End Sub

    Private Sub btnDel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDel.Click
        If (MessageBox.Show("Dali sigurno zelite obrisati zahvat?", frmMain.Text, MessageBoxButtons.YesNo, MessageBoxIcon.Question) = Windows.Forms.DialogResult.Yes) Then
            Try
                Me.ZahvatiBindingSource.RemoveCurrent()
                Me.ZahvatiBindingSource.EndEdit()
                Me.ZahvatiTableAdapter.Update(DentistDataSet.zahvati)
            Catch
                MessageBox.Show("Zahvat se nemoze obrisati!" + vbCrLf + "Zato sto neki od ljecnika koristi taj zahvat!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
                Me.ZahvatiBindingSource.CancelEdit()
            End Try
            Me.ZahvatiTableAdapter.Fill(Me.DentistDataSet.zahvati)
        End If
    End Sub

    
    Private Sub btnClose_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClose.Click
        Me.ZahvatiBindingSource.CancelEdit()
        Me.Close()
    End Sub
End Class