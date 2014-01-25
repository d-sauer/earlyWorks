Public Class frmNalozi

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Dispose()
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

    Private Sub frmNalozi_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
        Dim trajanje As Integer = Aproj.TrajanjeProjekta(frmMain.ID_proj)

        ListV.Columns.Add("Šif artikla", 70, HorizontalAlignment.Left)
        ListV.Columns.Add("Naziv artikla", 140, HorizontalAlignment.Left)
       
        Dim N As Integer
        For N = 1 To trajanje
            ListV.Columns.Add(N.ToString, 40, HorizontalAlignment.Center)
        Next N

        'Load data into table
        Call FillList()
    End Sub


    Private Sub FillList()
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Tpr As New DBDataSet.proizvodDataTable
        Dim Asif As New DBDataSetTableAdapters.sifarnikTableAdapter
        Dim Tsif As New DBDataSet.sifarnikDataTable
        Dim Adob As New DBDataSetTableAdapters.dobavljacTableAdapter
        'nalozi
        Dim Aot_naru As New DBDataSetTableAdapters.otvorene_narTableAdapter
        Dim Tot_naru As New DBDataSet.otvorene_narDataTable
        Dim Aot_nal As New DBDataSetTableAdapters.otvoreni_nalTableAdapter
        Dim Tot_nal As New DBDataSet.otvoreni_nalDataTable

        Dim OOO_ID_dob As Integer = Adob.Query_Get_ID_OOOdob(frmMain.ID_proj)
        Tpr = Apr.GetDataByProjekt(frmMain.ID_proj) 'svi proizvodi
        Tsif = Asif.GetDataBy_IDdob(OOO_ID_dob)     'svi vlastiti proizvodi

        Dim BrPr As Integer
        Dim Npr As Integer
        Dim id_pr As Integer
        Dim L As ListViewItem
        Dim Raz As Integer
        Dim NR As Integer

        BrPr = Tpr.Count
        For Npr = 0 To BrPr - 1 'iz tablice proizvodi
            id_pr = Tpr.Item(Npr).id_pr
            L = ListV.Items.Add(Tpr.Item(Npr).sif_proiz)
            L.Tag = Tpr.Item(Npr).id_pr
            L.Name = "p"

            L.SubItems.Add(Tpr.Item(Npr).naziv)
            'dodavanje razdoblja za taj projekt
            Tot_nal = Aot_nal.GetDataBy_ID_pr(id_pr)
            Raz = Tot_nal.Count
            For NR = 0 To Raz - 1
                L.SubItems.Add(Tot_nal.Item(NR).kolicina)
            Next NR
        Next Npr

        'unos iz tablice sifarnik, jer se tamo nalaze vlastiti proizvodi koji su dio sastavnice, te ih se prepoznaje po tome sto imaju dobavljaca 'OOO'
        BrPr = Tsif.Count
        For Npr = 0 To BrPr - 1
            id_pr = Tsif.Item(Npr).id_art
            L = ListV.Items.Add(Tsif.Item(Npr).sif_art)
            L.Tag = id_pr
            L.Name = "s"

            L.SubItems.Add(Tsif.Item(Npr).sif_art)
            Tot_naru = Aot_naru.GetDataBy_IdArt(id_pr)
            Raz = Tot_naru.Count
            For NR = 0 To Raz - 1
                L.SubItems.Add(Tot_naru.Item(NR).kolicina)
            Next NR
        Next Npr


    End Sub

    Private Sub ListV_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles ListV.MouseDown
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Asif As New DBDataSetTableAdapters.sifarnikTableAdapter
        Dim AP_pr As New DBDataSetTableAdapters.otvoreni_nalTableAdapter
        Dim AS_art As New DBDataSetTableAdapters.otvorene_narTableAdapter
        '--
        Dim Amrp_pr As New DBDataSetTableAdapters.mrp_prTableAdapter
        Dim Amrp_art As New DBDataSetTableAdapters.mrp_artTableAdapter
        '--

        Dim L As ListViewItem
        Dim Column As Integer
        Dim vel_serije As Integer
        Dim id_pr As Integer
        Dim InBox

        L = ListV.GetItemAt(e.X, e.Y)
        Column = GetColumnByX(L.Index, e.X)
        If (Column >= 2) Then
            vel_serije = Convert.ToInt16(L.SubItems(Column).Text)
            id_pr = Convert.ToInt16(L.Tag)
            Select Case L.Name
                Case "p"
                    If vel_serije = 0 Then vel_serije = Apr.Get_velicina_serije(id_pr)
                    InBox = InputBox("Unesite vrijednost: ", "Unos vrijednosti radni nalog", vel_serije)
                    If Not (InBox = "") Then 'unesena je vrijednost
                        L.SubItems(Column).Text = InBox
                        vel_serije = Convert.ToInt16(InBox)
                        AP_pr.Update(vel_serije, id_pr, Column - 1)
                        'update i u MRP_pr > otvoreni nalozi
                        Amrp_pr.Update_ot_nal(vel_serije, id_pr, Column - 1)
                    End If
                Case "s"
                    If vel_serije = 0 Then vel_serije = Asif.Query_Vel_serije_byIDart(id_pr)
                    InBox = InputBox("Unesite vrijednost: ", "Unos vrijednosti radni nalog", vel_serije)
                    If Not (InBox = "") Then 'unesena je vrijednost
                        L.SubItems(Column).Text = InBox
                        vel_serije = Convert.ToInt16(InBox)
                        AS_art.Update(vel_serije, id_pr, Column - 1)
                        'update i u MRP_art > otvoreni nalozi , za 'OOO'
                        Amrp_art.Update_ot_nal(vel_serije, id_pr, Column - 1)
                    End If
            End Select
        End If
    End Sub
End Class