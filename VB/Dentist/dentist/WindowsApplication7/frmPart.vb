Public Class frmPart
    Dim pos As Integer = 0
    Private Sub frmPart_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DentistDataSet.part' table. You can move, or remove it, as needed.
        Me.PartTableAdapter.Fill(Me.DentistDataSet.part)


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

    Private Sub btnClose_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClose.Click
        Me.PartBindingSource.CancelEdit()
        Me.Close()
    End Sub

    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Me.PartTableAdapter.Fill(Me.DentistDataSet.part)
        pos = Me.PartBindingSource.Position
        Me.PartBindingSource.AddNew()
    End Sub

    Private Sub btnDel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDel.Click
        If (MessageBox.Show("Dali sigurno zelite obrisati oznacenu kategoriju participacije?", frmMain.Text, MessageBoxButtons.YesNo, MessageBoxIcon.Question) = Windows.Forms.DialogResult.Yes) Then
            Try
                Me.PartBindingSource.RemoveCurrent()
                Me.PartBindingSource.EndEdit()
                Me.PartTableAdapter.Update(DentistDataSet.part)

            Catch
                MessageBox.Show("Nemozete obrisati participaciju!" + vbCrLf + "Neki od pacijenata ima tu participaciju.", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
                Me.PartBindingSource.CancelEdit()
            End Try
            Me.PartTableAdapter.Fill(Me.DentistDataSet.part)
        End If
    End Sub

    Private Sub btnChange_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnChange.Click
        pos = Me.PartBindingSource.Position
        Me.PartBindingSource.EndEdit()
        Me.PartTableAdapter.Update(DentistDataSet.part)
        Me.PartTableAdapter.Fill(Me.DentistDataSet.part)
        Me.PartBindingSource.Position = pos
    End Sub


End Class