Public Class frmProjectMg
    Private Sub ProjectMg_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DBDataSet.projekt' table. You can move, or remove it, as needed.
        Me.ProjektTableAdapter.Fill(Me.DBDataSet.projekt)
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        ProjektBindingSource.AddNew()
        GroupBox1.Enabled = False

    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim id_proj As Integer = Convert.ToInt16(TextBox8.Text)

        ProjektBindingSource.EndEdit()
        ProjektTableAdapter.Update(DBDataSet.projekt)

        If (id_proj = -1) Then  'Inicijalizacija pocetnog dobavljaca, tj. dobavljaca gotovog proizvoda,tj. vlastitog.. sluzi za upis vlastitog gotovog proizvoda u tablicu otvorene narudžbe
            id_proj = Convert.ToInt16(TextBox8.Text)
            Dim Adob As New DBDataSetTableAdapters.dobavljacTableAdapter
            Adob.Inicijalizacija(id_proj)
        End If
        GroupBox1.Enabled = True
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        ProjektBindingSource.CancelEdit()
        GroupBox1.Enabled = True
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        frmMain.TSProjekt.Text = "Projekt: " + TextBox1.Text
        frmMain.ID_proj = ListBox1.SelectedValue
        Me.Dispose()
    End Sub
End Class