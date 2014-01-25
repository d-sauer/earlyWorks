Public Class frmSifarnik

    Private Sub frmSifarnik_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DBDataSet.sifarnik' table. You can move, or remove it, as needed.
        Me.SifarnikTableAdapter.FillByProjekt(Me.DBDataSet.sifarnik, frmMain.ID_proj)
        'TODO: This line of code loads data into the 'DBDataSet.mjerne_jed' table. You can move, or remove it, as needed.
        Me.Mjerne_jedTableAdapter.Fill(Me.DBDataSet.mjerne_jed)
        'TODO: This line of code loads data into the 'DBDataSet.dobavljac' table. You can move, or remove it, as needed.
        Me.DobavljacTableAdapter.FillByProjekt(Me.DBDataSet.dobavljac, frmMain.ID_proj)

    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        SifarnikBindingSource.AddNew()

    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim Aot_nar As New DBDataSetTableAdapters.otvorene_narTableAdapter
        Dim Amrp_art As New DBDataSetTableAdapters.mrp_artTableAdapter
        Dim sif_dob As String = Label12.Text
        Dim id_art As Integer
        Dim ID_proj As Integer
        Dim IsExist As Integer

        TextBox1.Text = frmMain.ID_proj
        id_art = Convert.ToInt16(TextBox9.Text)
        SifarnikBindingSource.EndEdit()
        SifarnikTableAdapter.Update(DBDataSet.sifarnik)

        If (id_art < 0) Then
            id_art = Convert.ToInt16(TextBox9.Text)
        End If

        IsExist = Aot_nar.Query_IsExist(id_art)
        ID_proj = Convert.ToInt16(TextBox1.Text)
        If (IsExist = 0) Or Not (sif_dob = "OOO") Then 'inicijalizacija u tablici otvorene narudžbe
            Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
            Dim trajanje As Integer = Aproj.TrajanjeProjekta(ID_proj)
            Dim N As Integer
            For N = 1 To trajanje
                Aot_nar.Inicijalizacija(id_art, N)
                Amrp_art.Inicijalizacija(id_art, 0, N)
            Next N
        End If
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        SifarnikBindingSource.CancelEdit()

    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        SifarnikTableAdapter.Delete(ListBox1.SelectedValue)
        Me.SifarnikTableAdapter.FillByProjekt(Me.DBDataSet.sifarnik, frmMain.ID_proj)
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Close()
    End Sub
End Class