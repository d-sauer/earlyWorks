Public Class frmPPP
    Dim jed_mjere As Integer
    Dim C1 As Color = Color.AliceBlue
    Dim C2 As Color = Color.CadetBlue
    Dim C3 As Color = Color.White
    Dim C4 As Color = Color.PowderBlue
    Public Function ChechGPP(ByVal id_pr As Integer, ByVal razdoblje As Integer, ByVal ppp As Decimal)
        'Provjera dali je PPP.kolicina > GPP.planirana_potraznja ? GPP.plan_potr : PPP.kolicina
        Dim Agpp As New DBDataSetTableAdapters.gpp_analitickiTableAdapter
        Dim gpp_pristigle_nar As Decimal = Agpp.Query_Get_pristigle_nar(id_pr, razdoblje)
        If (ppp > gpp_pristigle_nar) Then
            Agpp.Update_plan_potr(ppp, id_pr, razdoblje)
            Return ppp
        Else
            Agpp.Update_plan_potr(gpp_pristigle_nar, id_pr, razdoblje)
            Return gpp_pristigle_nar
        End If
    End Function

    Private Sub MakeTable()
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter

        Dim id_proj As Integer = frmMain.ID_proj
        Dim BrPr As Integer = Apr.Broj_Proizvoda_byProj(id_proj) 'Broj proizvoda u projektu
        Dim razdoblje As Integer = Aproj.TrajanjeProjekta(id_proj)
        Dim proj_naziv As String = Aproj.NazivProjekta(id_proj)
        Dim Raz As Integer

        ListV.Columns.Add("Agregirana grupa proizvoda", 150, HorizontalAlignment.Center)
        For Raz = 1 To razdoblje
            ListV.Columns.Add(Raz.ToString, 40, HorizontalAlignment.Center)
        Next Raz

        ListV.Columns.Add("Suma", 100, HorizontalAlignment.Center)
        ListV.Columns.Add("Posto", 70, HorizontalAlignment.Center)
        ListV.BackColor = C1

        Dim LV As ListViewItem
        LV = ListV.Items.Add(proj_naziv)
        LV.Tag = -1
        LV.BackColor = C2
        For Raz = 1 To razdoblje
            LV.SubItems.Add("0")
        Next Raz
        LV.SubItems.Add("0")
        LV.SubItems.Add("0")
    End Sub

    Private Sub frmPPP_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DBDataSet.chart_ppp' table. You can move, or remove it, as needed.
        Me.chart_pppTableAdapter.Fill(Me.DBDataSet.chart_ppp, frmMain.ID_proj)

        Call MakeTable()
        Call RefreshTable()
        Me.ReportViewer1.RefreshReport()
    End Sub

    Private Sub RefreshTable()
        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Tpr As New DBDataSet.proizvodDataTable
        Dim Appp As New DBDataSetTableAdapters.pppTableAdapter
        Dim Tppp As New DBDataSet.pppDataTable

        Dim id_proj = frmMain.ID_proj
        Dim BrPr As Integer
        Dim N As Integer
        Dim id_pr As Integer 'ID proizvoda
        Dim sif_pr As String 'sifra proizvoda
        Dim LV As ListViewItem
        Dim razdoblje As Integer = Aproj.TrajanjeProjekta(id_proj)
        Dim Nraz As Integer
        Dim kolicina As String

        Tpr = Apr.GetDataByProjekt(id_proj)
        BrPr = Tpr.Count - 1

        For N = 0 To BrPr 'umetanje proizvoda
            id_pr = Tpr(N).id_pr
            sif_pr = Tpr(N).sif_proiz
            LV = ListV.Items.Add(sif_pr)
            LV.Tag = id_pr


            Tppp = Appp.GetDataBy_ID_pr(id_pr)

            For Nraz = 0 To razdoblje - 1 'umetanje kolicina
                Try
                    kolicina = Tppp(Nraz).kolicina.ToString 'pretvaranje u prikaz podjeljen s jedinicnom mjerom
                Catch ex As Exception
                    kolicina = 0
                End Try
                LV.SubItems.Add(kolicina)
            Next Nraz
            'umetanje subitema za Sumu i postotak
            LV.SubItems.Add("-1")
            LV.SubItems.Add("-1")
        Next N

        'Sumiranje kolona i redova
        Dim Mrow As Integer = ListV.Items.Count - 1
        Dim Mcol As Integer = ListV.Columns.Count - 3
        Dim Nrow As Integer
        Dim Ncol As Integer

        For Nrow = 1 To Mrow
            For Ncol = 1 To Mcol
                Suma(Nrow, Ncol)
            Next Ncol
        Next Nrow

    End Sub

 

    Private Sub ListV_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles ListV.MouseDown
        Dim Appp As New DBDataSetTableAdapters.pppTableAdapter
        Dim L As ListViewItem
        Dim Column As Integer
        Dim id_pr As Integer
        Dim InBox
        Dim sadrzaj As Decimal

        Try
            L = ListV.GetItemAt(e.X, e.Y)
            id_pr = Convert.ToInt16(L.Tag)

            If L.Index > 0 Then
                Column = GetColumnByX(L.Index, e.X)
                sadrzaj = Convert.ToDecimal(L.SubItems(Column).Text)
                InBox = InputBox("Unesite vrijednost: ", "Unos vrijednosti", sadrzaj)
                If Not (InBox = "") Then
                    L.SubItems(Column).Text = InBox
                    sadrzaj = Convert.ToDecimal(InBox)  'jed_mjer; konvertiranje zapisa u bazu sa stvarnim vrjednostima
                    Appp.Update(sadrzaj, id_pr, Column)
                    ChechGPP(id_pr, Column, sadrzaj)    'Provjera dali je PPP.kolicina>GPP.planirana potraznja
                    Suma(L.Index, Column)
                End If
            End If
        Catch ex As Exception
        End Try
        

    End Sub

    Public Function GetColumnByX(ByVal idx As Integer, ByVal x As Integer) As Integer
        Dim NumCol As Integer
        Dim Col As Integer = 0
        Dim X1 As Integer = 0
        Dim X2 As Integer = 0
        Dim Lit As ListViewItem

        Lit = ListV.Items(idx)

        'da bi se svi subitemi mogli ucitati, prvo trebaju biti inicijalizirani.. tj. dodani subitem.add....
        For NumCol = 1 To ListV.Columns.Count - 4

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

    Public Sub Suma(ByVal row As Integer, ByVal col As Integer)
        Dim Mrow As Integer = ListV.Items.Count - 1
        Dim Mcol As Integer = ListV.Columns.Count - 3
        Dim Nrow As Integer
        Dim Ncol As Integer
        Dim sum As Decimal
        Dim R_sum As Decimal 'suma kolona
        Dim posto As Integer = 0
        Dim S_posto As Integer = 0

        'suma redova, u zadanoj koloni
        sum = 0
        For Nrow = 1 To Mrow
            sum = sum + Convert.ToDecimal(ListV.Items(Nrow).SubItems(col).Text)
        Next Nrow
        ListV.Items(0).SubItems(col).Text = sum.ToString

        'suma kolona, u zadanom redu
        sum = 0
        For Ncol = 1 To Mcol
            sum = sum + Convert.ToDecimal(ListV.Items(row).SubItems(Ncol).Text)
        Next Ncol
        ListV.Items(row).SubItems(Mcol + 1).Text = sum.ToString

        '------------------------------
        'sumiranje suma koje su u 0. redu
        R_sum = 0
        For Nrow = 1 To Mrow
            R_sum = R_sum + Convert.ToDecimal(ListV.Items(Nrow).SubItems(Mcol + 1).Text)
        Next
        ListV.Items(0).SubItems(Mcol + 1).Text = R_sum.ToString

        'racunanje postotka

        For Nrow = 1 To Mrow
            Try
                posto = (Convert.ToDecimal(ListV.Items(Nrow).SubItems(Mcol + 1).Text) * 100) / R_sum
            Catch ex As Exception
                posto = 0
            End Try
            S_posto = S_posto + posto
            ListV.Items(Nrow).SubItems(Mcol + 2).Text = posto.ToString + "%"
        Next Nrow
        ListV.Items(0).SubItems(Mcol + 2).Text = S_posto.ToString + "%"
    End Sub
    

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Me.chart_pppTableAdapter.Fill(Me.DBDataSet.chart_ppp, frmMain.ID_proj)
        Me.ReportViewer1.RefreshReport()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Dispose()
    End Sub

    Private Sub ListV_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListV.SelectedIndexChanged

    End Sub
End Class