Public Class frmGant
    Private Sub frmGant_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DBDataSet.radno_mjesto' table. You can move, or remove it, as needed.
        Me.Radno_mjestoTableAdapter.Fill(Me.DBDataSet.radno_mjesto)
        'TODO: This line of code loads data into the 'DBDataSet.gantogram' table. You can move, or remove it, as needed.
        Me.GantogramTableAdapter.Fill(Me.DBDataSet.gantogram)
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Close()
    End Sub


    Private Sub DataGridView1_CellClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellClick
        Dim Row As Integer = e.RowIndex
        Dim Cel As Integer = e.ColumnIndex
        Dim IDrm = ListBox1.SelectedValue
        Dim razdoblje As Integer = DataGridView1.Rows(Row).Cells(1).Value
        Dim dan As Integer = DataGridView1.Rows(Row).Cells(2).Value

        Dim sat As Integer
        Dim var As String
        If Cel <= 10 Then
            sat = Cel - 3
            var = "t0" + sat.ToString
        Else
            sat = Cel - 11
            var = "t1" + sat.ToString
        End If

        Dim data As Integer
        Dim msg
        If Cel > 2 Then
            Try
                data = DataGridView1.Rows(Row).Cells(Cel).Value
            Catch ex As Exception
                data = 0
            End Try

            If data = 1 Then 'postoji podatak, mogucost brisanja elementa
                msg = MessageBox.Show("Dali želite obrisati trenutnu radnju?", "Brisanje radnje", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question)
                If msg = "6" Then 'yes
                    DataGridView1.Rows(Row).Cells(Cel).Value = 0
                    Dim V(16) As Integer
                    For data = 1 To 16
                        V(data) = DataGridView1.Rows(Row).Cells(data + 2).Value
                        'MessageBox.Show(V(data).ToString)
                        GantogramTableAdapter.Update(V(1), V(2), V(3), V(4), V(5), V(6), V(7), V(8), V(9), V(10), V(11), V(12), V(13), V(14), V(15), V(16), IDrm, razdoblje, dan)
                    Next data
                End If
            Else ' dodaje se novi elemen
                msg = MessageBox.Show("Dali želite dodati radnju u označeno radno vrijeme?", "Dodavanje radnje", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question)
                If msg = "6" Then 'yes
                    DataGridView1.Rows(Row).Cells(Cel).Value = 1
                    Dim V(16) As Integer
                    For data = 1 To 16
                        V(data) = DataGridView1.Rows(Row).Cells(data + 2).Value
                        'MessageBox.Show(V(data).ToString)
                        GantogramTableAdapter.Update(V(1), V(2), V(3), V(4), V(5), V(6), V(7), V(8), V(9), V(10), V(11), V(12), V(13), V(14), V(15), V(16), IDrm, razdoblje, dan)
                    Next data
                End If
            End If
        End If
    End Sub

    Private Sub DataGridView1_CellContentClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick

    End Sub

    Private Sub ListBox1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListBox1.SelectedIndexChanged
        Rokovi_by_IDrmTableAdapter.Fill(DBDataSet.rokovi_by_IDrm, ListBox1.SelectedValue)
    End Sub
End Class