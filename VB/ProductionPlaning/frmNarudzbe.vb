Public Class frmNarudzbe


    Private Sub frmNarudzbe_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'kreiranje kolona
        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
        Dim trajanje As Integer = Aproj.TrajanjeProjekta(frmMain.ID_proj)
        
        ListV.Columns.Add("Šif artikla", 70, HorizontalAlignment.Left)
        ListV.Columns.Add("Naziv artikla", 140, HorizontalAlignment.Left)
        ListV.Columns.Add("Šif dobavljača", 70, HorizontalAlignment.Left)
        ListV.Columns.Add("Naziv dobavljača", 140, HorizontalAlignment.Left)

        Dim N As Integer
        For N = 1 To trajanje
            ListV.Columns.Add(N.ToString, 40, HorizontalAlignment.Center)
        Next N

        'Load data into table
        Call FillList()
    End Sub

    Public Function GetColumnByX(ByVal idx As Integer, ByVal x As Integer) As Integer
        Dim NumCol As Integer
        Dim Col As Integer = 0
        Dim X1 As Integer = 0
        Dim X2 As Integer = 0
        Dim Lit As ListViewItem

        Lit = ListV.Items(idx)

        'da bi se svi subitemi mogli ucitati, prvo trebaju biti inicijalizirani.. tj. dodani subitem.add....
        For NumCol = 1 To ListV.Columns.Count - 2

            X1 = Lit.SubItems(NumCol).Bounds.Location.X
            X2 = Lit.SubItems(NumCol + 1).Bounds.Location.X

            If (x >= X1) And (x < X2) Then
                Col = NumCol
            End If
            If (x > X2) Then
                Col = NumCol + 1
            End If
        Next NumCol
        Return Col
    End Function

    Private Sub FillList()
        Dim Aot_naru_load As New DBDataSetTableAdapters.ot_naru_loadTableAdapter
        Dim Tot_naru_load As New DBDataSet.ot_naru_loadDataTable
        Dim Aot_naru As New DBDataSetTableAdapters.otvorene_narTableAdapter
        Dim Tot_naru As New DBDataSet.otvorene_narDataTable

        Tot_naru_load = Aot_naru_load.GetData(frmMain.ID_proj)

        Dim BrArt As Integer = Tot_naru_load.Count
        Dim Nart As Integer
        Dim L As ListViewItem
        Dim id_art As Integer
        Dim Raz As Integer
        Dim NR As Integer

        For Nart = 0 To BrArt - 1
            id_art = Tot_naru_load.Item(Nart).id_art
            L = ListV.Items.Add(Tot_naru_load.Item(Nart).sif_art)
            L.Tag = id_art.ToString
            L.SubItems.Add(Tot_naru_load.Item(Nart).Naziv_artikla)
            L.SubItems.Add(Tot_naru_load.Item(Nart).sifra)
            L.SubItems.Add(Tot_naru_load.Item(Nart).Naziv_dobavljaca)
            'razdoblja
            Tot_naru = Aot_naru.GetDataBy_IdArt(id_art)
            Raz = Tot_naru.Count
            For NR = 0 To Raz - 1
                L.SubItems.Add(Tot_naru.Item(NR).kolicina)
            Next NR
        Next Nart
        

    End Sub

    Private Sub ListV_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles ListV.MouseDown
        Dim L As ListViewItem
        Dim Asif As New DBDataSetTableAdapters.sifarnikTableAdapter
        Dim Aot_naru As New DBDataSetTableAdapters.otvorene_narTableAdapter
        '--
        Dim Amrp_art As New DBDataSetTableAdapters.mrp_artTableAdapter
        '--
        Dim id_art As Integer
        Dim vel_serije As Integer
        Dim Column As Integer
        Dim InBox

        Try
            L = ListV.GetItemAt(e.X, e.Y)
            Column = GetColumnByX(L.Index, e.X)
            If (Column >= 4) Then
                id_art = Convert.ToInt16(L.Tag)
                vel_serije = Convert.ToDecimal(L.SubItems(Column).Text)
                If vel_serije = 0 Then vel_serije = Asif.Query_Vel_serije_byIDart(id_art)
                InBox = InputBox("Unesite vrijednost otvorene narudžbe: ", "Unos vrijednosti za narudžbe", vel_serije)
                If Not (InBox = "") Then 'unesena je vrijednost
                    L.SubItems(Column).Text = InBox
                    vel_serije = Convert.ToInt16(InBox)
                    Aot_naru.Update(vel_serije, id_art, Column - 3)
                    Amrp_art.Update_ot_nar(vel_serije, id_art, Column - 3)
                    'MessageBox.Show("id: " + id_art.ToString + "  razdoblje: " + (Column - 3).ToString)
                End If
            End If
        Catch ex As Exception
        End Try
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Dispose()
    End Sub
End Class