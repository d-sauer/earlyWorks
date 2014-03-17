Public Class frmDobavljaci

    Private Sub frmDobavljaci_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DBDataSet.dobavljac' table. You can move, or remove it, as needed.
        Me.DobavljacTableAdapter.Fill(Me.DBDataSet.dobavljac)
        'TODO: This line of code loads data into the 'DBDataSet.dobavljac' table. You can move, or remove it, as needed.
        Me.DobavljacTableAdapter.FillByProjekt(Me.DBDataSet.dobavljac, frmMain.ID_proj)

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        DobavljacBindingSource.AddNew()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim ID_proj As Integer = frmMain.ID_proj
        TextBox4.Text = ID_proj

        DobavljacBindingSource.EndEdit()
        DobavljacTableAdapter.Update(Me.DBDataSet.dobavljac)
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        DobavljacBindingSource.CancelEdit()
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        DobavljacTableAdapter.Delete(ListBox1.SelectedValue)
        Me.DobavljacTableAdapter.FillByProjekt(Me.DBDataSet.dobavljac, frmMain.ID_proj)
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Me.Close()
    End Sub
End Class