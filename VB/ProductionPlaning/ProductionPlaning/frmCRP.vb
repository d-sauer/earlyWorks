Public Class frmCRP
    Dim Vrsta As String
    Dim t_var As Integer = -1
    Private Sub LoadData()
        ListV.Clear()

        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
        Dim raz As Integer = Aproj.TrajanjeProjekta(frmMain.ID_proj)
        ListV.Columns.Add("Sifra", 80, HorizontalAlignment.Center)
        ListV.Columns.Add("Naziv proizvoda", 130, HorizontalAlignment.Center)
        Dim n As Integer
        For n = 1 To raz
            ListV.Columns.Add(n.ToString, 40, HorizontalAlignment.Center)
        Next n
        ListV.Columns.Add("Radno mjesto", 100, HorizontalAlignment.Center)

        Dim Amrp_pr As New DBDataSetTableAdapters.mrp_prTableAdapter
        Dim Tmrp_pr As New DBDataSet.mrp_prDataTable
        Dim Amrp_art As New DBDataSetTableAdapters.mrp_artTableAdapter
        Dim Tmrp_art As New DBDataSet.mrp_artDataTable
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Tpr As New DBDataSet.proizvodDataTable
        Dim Anorm As New DBDataSetTableAdapters.normeTableAdapter
        Dim Ar_m As New DBDataSetTableAdapters.radno_mjestoTableAdapter

        Tpr = Apr.GetDataByProjekt(frmMain.ID_proj)
        Dim Npr As Integer
        Dim IDpr As Integer
        Dim IDrm As Integer
        Dim uk_zah As Integer
        Dim LV As ListViewItem
        For Npr = 0 To Tpr.Count - 1
            IDpr = Tpr.Item(Npr).id_pr
            Tmrp_pr = Amrp_pr.GetDataBy_IdPr(IDpr)
            LV = ListV.Items.Add(Apr.GetSifPr_byID(IDpr))
            LV.Tag = IDpr
            LV.Name = "p"
            LV.ToolTipText = "MRP (planirani nalozi)"
            LV.SubItems.Add(Apr.Query_Get_Naziv_byIDpr(IDpr))
            IDrm = Anorm.Query_GetIDrm_byIDpr(IDpr)
            For raz = 0 To Tmrp_pr.Count - 1
                uk_zah = Tmrp_pr.Item(raz).uk_zah
                LV.SubItems.Add(uk_zah.ToString)
            Next raz
            LV.SubItems.Add(Ar_m.Query_naziv_byIDrm(IDrm))
        Next Npr

        'ispis poluproizvoda
        Dim Asif As New DBDataSetTableAdapters.sifarnikTableAdapter
        Dim Tsif As New DBDataSet.sifarnikDataTable
        Tsif = Asif.GetDataBy_Poluproizvodi
        For Npr = 0 To Tsif.Count - 1
            IDpr = Tsif.Item(Npr).id_art
            Tmrp_art = Amrp_art.GetDataBy_IdArt(IDpr)
            LV = ListV.Items.Add(Asif.GetSifArt_byID(IDpr))
            LV.Tag = IDpr
            LV.Name = "a"
            LV.ToolTipText = "MRP (planirani nalozi)"
            LV.SubItems.Add(Asif.Query_Naziv_byIdArt(IDpr))
            For raz = 0 To Tmrp_art.Count - 1
                uk_zah = Tmrp_art.Item(raz).uk_zah
                LV.SubItems.Add(uk_zah.ToString)
            Next raz
        Next Npr
    End Sub
    Private Sub ListV_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles ListV.MouseDown
        Dim Appp As New DBDataSetTableAdapters.pppTableAdapter
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim L As ListViewItem
        Dim Column As Integer
        Dim id_pr As Integer

        Dim sadrzaj As Decimal

        'Try
        L = ListV.GetItemAt(e.X, e.Y)
        id_pr = Convert.ToInt16(L.Tag)

        If L.Index >= 0 Then
            Column = GetColumnByX(L.Index, e.X)
            If Column >= 2 Then
                sadrzaj = Convert.ToDecimal(L.SubItems(Column).Text)
            Else
                sadrzaj = 0
            End If


            If Not (sadrzaj = 0) Then
                lbl_IDpr.Text = L.Tag
                Label18.Text = L.Text
                Label4.Text = sadrzaj
                'vrijeme zavrsetka
                Dim Anorm As New DBDataSetTableAdapters.normeTableAdapter
                Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
                Dim C As Integer
                Dim Poc As Integer = Column
                Dim tj As Integer = -1
                tj = Poc
                'For C = (Column + 1) To ListV.Columns.Count - 2
                'If Not Convert.ToDecimal(L.SubItems(C).Text) = 0 Then
                'tj = C - 1
                'Exit For
                'End If
                'Next C
                'If tj = -1 Then
                'tj = ListV.Columns.Count - 3
                'End If

                Label19.Text = Convert.ToInt16(tj).ToString
                'txt_tjed.Text = tj.ToString
                'Rac_Zavrsetak(tj, 1, 0)
                t_var = tj
                txt_tjed.Text = tj.ToString
                txt_dan.Text = "1"
                txt_sat.Text = "0"
                TextBox1.Text = "1"
                Dim IDrm As Integer
                Dim ID As Integer
                Dim Norma As Decimal

                Dim vrijeme As Integer
                Dim kol As Integer = Aproj.Get_JedinicaMjere(frmMain.ID_proj)


                Select Case L.Name
                    Case "p"    'proizvod
                        Vrsta = "p"
                        ID = L.Tag
                        IDrm = Anorm.Query_GetIDrm_byIDpr(ID)
                        Norma = Anorm.Query_getNS(IDrm, ID)
                        vrijeme = sadrzaj * Norma * kol
                        'MessageBox.Show(sadrzaj.ToString + "  norma:" + Norma.ToString + "  kol" + kol.ToString)
                        Label20.Text = L.SubItems(ListV.Columns.Count - 1).Text
                        'Label10.Text = vrijeme.ToString
                        Label10.Text = Apr.Scalar_lead_time_byIDpr(ID) * (5 * 8)
                    Case "a"    'poluproizvod
                        Vrsta = "a"
                End Select

            End If
        End If
        'Catch ex As Exception
        'End Try


    End Sub
    Public Function GetColumnByX(ByVal idx As Integer, ByVal x As Integer) As Integer
        Dim NumCol As Integer
        Dim Col As Integer = 0
        Dim X1 As Integer = 0
        Dim X2 As Integer = 0
        Dim Lit As ListViewItem

        Lit = ListV.Items(idx)

        'da bi se svi subitemi mogli ucitati, prvo trebaju biti inicijalizirani.. tj. dodani subitem.add....
        For NumCol = 1 To ListV.Columns.Count - 3

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

    Private Sub frmCRP_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DBDataSet.rokovi' table. You can move, or remove it, as needed.
        Me.RokoviTableAdapter.Fill(Me.DBDataSet.rokovi)
        Call LoadData()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Close()
    End Sub


    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        'insert
        RokoviTableAdapter.Insert(Convert.ToInt16(lbl_IDpr.Text), Convert.ToInt16(Label19.Text), Convert.ToInt16(Label10.Text), Convert.ToInt16(TextBox1.Text), Label17.Text, Label16.Text, Label8.Text)
        Me.RokoviTableAdapter.Fill(Me.DBDataSet.rokovi)
        MessageBox.Show("Radni nalog za proizvod " + Label18.Text + " je kreiran!")
        RokoviBindingSource.MoveLast()

        'inicijalizacija potrebnih polja u gantogramu
        Dim IDrn As Integer = RokoviTableAdapter.Query_Last_IDrad_nal
    End Sub

 



    Private Sub Rac_Zavrsetak(ByVal tjed As Integer, ByVal dan As Integer, ByVal sat As Integer)
        'Dim tjed As Integer = Convert.ToInt16(txt_tjed.Text)
        'Dim dan As Integer = Convert.ToInt16(txt_dan.Text)
        'Dim sat As Integer = Convert.ToInt16(txt_sat.Text)
        Dim d_sklad As Integer
        Dim trajanje As Integer = Convert.ToInt16(Label10.Text)
        Dim d_kraj As Integer
        Dim d_start As Integer

        'skladisteno
        Label8.Text = tjed.ToString + "/" + dan.ToString + "/" + sat.ToString

        'zavrsetak
        d_sklad = (tjed * 5 * 8) + (dan * 8) + sat
        trajanje = Convert.ToInt16(TextBox1.Text)
        d_kraj = d_sklad - trajanje
        tjed = Fix(d_kraj / (5 * 8)) - 1
        dan = Fix((d_kraj - (tjed * 5 * 8)) / 8)
        sat = (d_kraj - (tjed * 5 * 8) - (dan * 8))
        'If (sat <= 0) Or (dan <= 0) Then
        'dan = Fix((d_kraj - (tjed * 5 * 8)) / 8) - 1
        'sat = (d_kraj - (tjed * 5 * 8) - (dan * 8))
        'End If
        Label16.Text = tjed.ToString + "/" + dan.ToString + "/" + sat.ToString

        'pocetak
        trajanje = Convert.ToInt16(Label10.Text)
        d_start = d_kraj - trajanje
        tjed = Fix(d_start / (5 * 8))
        dan = Fix((d_start - (tjed * 5 * 8)) / 8)
        sat = d_start - (tjed * 5 * 8) - (dan * 8)
        'If (sat <= 0) Or (dan <= 0) Then
        'dan = Fix((d_kraj - (tjed * 5 * 8)) / 8) - 1
        'sat = (d_kraj - (tjed * 5 * 8) - (dan * 8))
        'End If
        Label17.Text = tjed.ToString + "/" + dan.ToString + "/" + sat.ToString
    End Sub


    Private Sub DataGridView1_SelectionChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DataGridView1.SelectionChanged
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Try
            Label18.Text = Apr.GetSifPr_byID(Convert.ToInt16(lbl_IDpr.Text))
        Catch ex As Exception
        End Try
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim IDrd As Integer = Convert.ToInt16(Label2.Text)
        RokoviTableAdapter.Delete(IDrd)
        Me.RokoviTableAdapter.Fill(Me.DBDataSet.rokovi)
    End Sub

  
    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Rac_Zavrsetak(Convert.ToInt16(txt_tjed.Text), Convert.ToInt16(txt_dan.Text), Convert.ToInt16(txt_sat.Text))
    End Sub

    Private Sub ListV_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListV.SelectedIndexChanged

    End Sub
End Class