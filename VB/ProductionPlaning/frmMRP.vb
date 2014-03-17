Public Class frmMRP
    Dim C1 As Color = Color.AliceBlue
    Dim C2 As Color = Color.CadetBlue
    Dim C3 As Color = Color.White
    Dim C4 As Color = Color.PowderBlue
    Dim C_err As Color = Color.IndianRed

    Private Sub frmMRP_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call MakeTable()
        Call FillTable()
    End Sub

    Private Sub MakeTable()
        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
        Dim Raz As Integer = Aproj.TrajanjeProjekta(frmMain.ID_proj)
        Dim NR As Integer
        ListV.Clear()
        ListUK.Clear()

        ListV.Columns.Add("Sifra", 150, HorizontalAlignment.Left)
        ListUK.Columns.Add("Sifra", 50, HorizontalAlignment.Left)
        ListUK.Columns.Add("Naziv artikla/proizvoda", 150, HorizontalAlignment.Left)

        For NR = 1 To Raz
            ListV.Columns.Add(NR.ToString, 50, HorizontalAlignment.Center)
            ListUK.Columns.Add(NR.ToString, 50, HorizontalAlignment.Center)
        Next NR
    End Sub


    Private Sub FillTable()
        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Tpr As New DBDataSet.proizvodDataTable
        Dim Asif As New DBDataSetTableAdapters.sifarnikTableAdapter
        Dim Tsif As New DBDataSet.sifarnikDataTable
        Dim Amrp_pr As New DBDataSetTableAdapters.mrp_prTableAdapter
        Dim Tmrp_pr As New DBDataSet.mrp_prDataTable
        Dim Amrp_art As New DBDataSetTableAdapters.mrp_artTableAdapter
        Dim Tmrp_art As New DBDataSet.mrp_artDataTable
        'sastavnica
        Dim Asas As New DBDataSetTableAdapters.sastavnicaTableAdapter
        Dim Tsas As New DBDataSet.sastavnicaDataTable
        Dim Tsas_2 As New DBDataSet.sastavnicaDataTable
        'GPP
        Dim Agpp As New DBDataSetTableAdapters.gpp_analitickiTableAdapter
        Dim Tgpp As New DBDataSet.gpp_analitickiDataTable
        'nalozi
        Dim Aot_naru As New DBDataSetTableAdapters.otvorene_narTableAdapter
        Dim Tot_naru As New DBDataSet.otvorene_narDataTable
        Dim Aot_nal As New DBDataSetTableAdapters.otvoreni_nalTableAdapter
        Dim Tot_nal As New DBDataSet.otvoreni_nalDataTable

        Dim L As ListViewItem
        Dim LZ As ListViewItem
        Dim ID As Integer
        Dim SifArt As String
        Dim NazivArt As String
        Dim id_proj As Integer = frmMain.ID_proj
        Dim Razdoblje As Integer = Aproj.TrajanjeProjekta(id_proj)
        Dim NRazdoblje As Integer = 0
        Dim BrArt As Integer
        Dim NBr As Integer
        Dim val As Decimal
        Dim val1 As Decimal
        Dim uk_zal As Integer
        Dim lead_t As Integer
        Dim vel_ser As Integer
        Dim min_zal As Integer

        frmMain.TSBar.Visible = True
        

        'nulta razina, gdje su proizvodi
        ListV.BackColor = C1
        L = ListV.Items.Add("Razina 0")
        L.Tag = -1
        L.Font = New Font("Arial", 9, FontStyle.Bold)
        L = ListV.Items.Add("") 'prazan red
        L.Tag = -1

        'dohvacanje proizvoda za NULTU razinu, otvorenog projekta
        Tpr = Apr.GetDataByProjekt(id_proj)
        BrArt = Tpr.Count
        frmMain.TSBar.Maximum = BrArt

        For NBr = 0 To BrArt - 1
            frmMain.TSBar.Value = NBr

            ID = Tpr.Item(NBr).id_pr
            SifArt = Tpr.Item(NBr).sif_proiz
            uk_zal = Tpr.Item(NBr).zalihe
            lead_t = Tpr.Item(NBr).lead_time
            vel_ser = Tpr.Item(NBr).vel_serije
            min_zal = Tpr.Item(NBr).min_zalihe

            Tmrp_pr = Amrp_pr.GetDataBy_IdPr(ID)
            L = ListV.Items.Add(SifArt)
            L.Tag = ID
            L.Name = ""
            L.Font = New Font("Arial", 9, FontStyle.Bold)
            L.BackColor = C2
            L = ListV.Items.Add("Lead time: " + lead_t.ToString)
            L.Tag = ID
            L.Name = ""
            L.BackColor = C2
            L = ListV.Items.Add("Veličina serije: " + vel_ser.ToString)
            L.Tag = ID
            L.Name = ""
            L.BackColor = C2
            L = ListV.Items.Add("Min zalihe: " + min_zal.ToString)
            L.Tag = ID
            L.Name = ""
            L.BackColor = C2

            'zbirno ---
            LZ = ListUK.Items.Add(SifArt)
            NazivArt = Tpr.Item(NBr).naziv
            LZ.SubItems.Add(NazivArt)
            '----------

            'ukupni zahtjevi
            Tgpp = Agpp.GetData_ByIDpr(ID)  'Podatci za Ukupni zahtjevi iz GPP (Planirana proizvodnja)
            L = ListV.Items.Add("Ukupni zahtjevi")
            L.Tag = ID
            L.Name = "p_uk_zah"
            L.BackColor = C1
            L.ToolTipText = "GPP (planirana proizvodnja)"
            For NRazdoblje = 0 To Razdoblje - 1
                Try
                    val = Tmrp_pr.Item(NRazdoblje).uk_zah
                Catch ex As Exception
                    val = 0
                End Try
                If (val <> Tgpp.Item(NRazdoblje).plan_proiz) Then
                    val = Tgpp.Item(NRazdoblje).plan_proiz
                    Amrp_pr.Update_uk_zah(val, ID, NRazdoblje + 1) 'update MRP u slucaju da vrijednost u MRP-u nije ista kao u GPP !!
                End If
                L.SubItems.Add(val.ToString)
            Next NRazdoblje

            'Otvoreni nalozi
            Tot_nal = Aot_nal.GetDataBy_ID_pr(ID)
            L = ListV.Items.Add("Otvoreni nalozi")
            L.Tag = ID
            L.Name = "p_ot_nal"
            L.BackColor = C1
            For NRazdoblje = 0 To Razdoblje - 1
                Try
                    val = Tmrp_pr.Item(NRazdoblje).ot_nal
                Catch ex As Exception
                    val = 0
                End Try
                If (val <> Tot_nal.Item(NRazdoblje).kolicina) Then
                    val = Tot_nal.Item(NRazdoblje).kolicina
                    Amrp_pr.Update_ot_nal(val, ID, NRazdoblje + 1)
                End If
                L.SubItems.Add(val.ToString)
            Next NRazdoblje

            'Otvorene narudžbe
            L = ListV.Items.Add("Otvorene narudžbe")
            L.Tag = ID
            L.Name = "p_ot_nar"
            L.BackColor = C1
            For NRazdoblje = 0 To Razdoblje - 1
                'Try
                'val = Tmrp_pr.Item(NRazdoblje).ot_nar
                'Catch ex As Exception
                'val = 0
                'End Try
                L.SubItems.Add("0") '(val.ToString)
            Next NRazdoblje

            'Ukupne zalihe
            L = ListV.Items.Add("Ukupne zalihe   ( " + uk_zal.ToString + " )")
            L.Tag = ID
            L.Name = "p_uk_zal"
            L.BackColor = C1
            L.ToolTipText = "Ukupne zalihe prethodnog razdoblja + Otvoreni nalozi + Otvorene Naruđbe - Ukupni zahtjevi"
            For NRazdoblje = 0 To Razdoblje - 1

                If NRazdoblje = 0 Then
                    val = uk_zal + Convert.ToDecimal(ListV.Items(L.Index - 2).SubItems(NRazdoblje + 1).Text) + Convert.ToDecimal(ListV.Items(L.Index - 1).SubItems(NRazdoblje + 1).Text) - Convert.ToDecimal(ListV.Items(L.Index - 3).SubItems(NRazdoblje + 1).Text)
                    'MessageBox.Show("art:" + SifArt + "raz:" + NRazdoblje.ToString + " :::" + vel_ser.ToString + " + " + ListV.Items(L.Index - 2).SubItems(NRazdoblje + 1).Text + " + " + ListV.Items(L.Index - 1).SubItems(NRazdoblje + 1).Text + " - " + ListV.Items(L.Index - 3).SubItems(NRazdoblje + 1).Text)
                Else
                    uk_zal = Convert.ToDecimal(ListV.Items(L.Index).SubItems(NRazdoblje).Text)
                    'MessageBox.Show("art:" + SifArt + "raz:" + NRazdoblje.ToString + " :::" + vel_ser.ToString + " + " + ListV.Items(L.Index - 2).SubItems(NRazdoblje + 1).Text + " + " + ListV.Items(L.Index - 1).SubItems(NRazdoblje + 1).Text + " - " + ListV.Items(L.Index - 3).SubItems(NRazdoblje + 1).Text)
                    val = uk_zal + Convert.ToDecimal(ListV.Items(L.Index - 2).SubItems(NRazdoblje + 1).Text) + Convert.ToDecimal(ListV.Items(L.Index - 1).SubItems(NRazdoblje + 1).Text) - Convert.ToDecimal(ListV.Items(L.Index - 3).SubItems(NRazdoblje + 1).Text)
                End If

                If val <> Tmrp_pr.Item(NRazdoblje).uk_zal Then Amrp_pr.Update_uk_zal(val, ID, NRazdoblje + 1)

                L.SubItems.Add(val.ToString)
            Next NRazdoblje

            'Dodatne potrebe
            L = ListV.Items.Add("Ukupni zahtjevi")
            L.Tag = ID
            L.Name = "p_dod_potr"
            L.BackColor = C1
            L.ToolTipText = "Ako su ukupne zalihe manje od 0, tada su dodatne potrebe jednake toj količini"
            For NRazdoblje = 0 To Razdoblje - 1
                val = Convert.ToDecimal(ListV.Items(L.Index - 1).SubItems(NRazdoblje + 1).Text)
                If val < 0 Then
                    val = -val
                Else
                    val = 0
                End If

                If val <> Tmrp_pr.Item(NRazdoblje).dod_potr Then Amrp_pr.Update_dod_potr(val, ID, NRazdoblje + 1)

                L.SubItems.Add(val.ToString)
            Next NRazdoblje

            'Planirani nalozi
            L = ListV.Items.Add("Planirani nalozi")
            L.Tag = ID
            L.Name = "p_pl_nalozi"
            L.BackColor = C4
            For NRazdoblje = 0 To Razdoblje - 1
                Try
                    val = Tmrp_pr.Item(NRazdoblje).pl_nalozi
                Catch ex As Exception
                    val = 0
                End Try
                L.SubItems.Add(val.ToString)
                LZ.SubItems.Add(val.ToString)
                LZ.BackColor = C1
            Next NRazdoblje

            If NBr < BrArt - 1 Then
                L = ListV.Items.Add(" ")
                L.Tag = -1
                L = ListV.Items.Add(" ")
                L.Tag = -1
            End If

        Next NBr


        'unos prema razinama ___________________________________________
        Dim Raz As Integer = Asas.Query_BrojRazina_byProjekt(id_proj)
        Dim NRaz As Integer
        For NRaz = 0 To Raz
            'izdvajanje svih proizvoda s trenutne razine
            Tsas = Asas.GetDataBy_IDproj_razina(NRaz, id_proj)
            BrArt = Tsas.Count
            L = ListV.Items.Add(" ")
            L.Tag = -1
            L = ListV.Items.Add(" ")
            L.Tag = -1
            L = ListV.Items.Add("Razina " + (NRaz + 1).ToString)
            L.Tag = -1
            L.Font = New Font("Arial", 9, FontStyle.Bold)
            L = ListV.Items.Add("") 'prazan red
            L.Tag = -1

            frmMain.TSBar.Maximum = BrArt
            For NBr = 0 To BrArt - 1
                frmMain.TSBar.Value = NBr

                ID = Tsas.Item(NBr).id_sas_art
                Tsif = Asif.GetDataBy_IdArt(ID)

                SifArt = Tsif.Item(0).sif_art
                uk_zal = Tsif.Item(0).zalihe
                lead_t = Tsif.Item(0).lead_time
                vel_ser = Tsif.Item(0).vel_serije
                min_zal = Tsif.Item(0).min_zalihe

                Tmrp_art = Amrp_art.GetDataBy_IdArt(ID)
                L = ListV.Items.Add(SifArt)
                L.Tag = ID
                L.Name = ""
                L.Font = New Font("Arial", 9, FontStyle.Bold)
                L.BackColor = C2
                L = ListV.Items.Add("Lead time: " + lead_t.ToString)
                L.Tag = ID
                L.Name = ""
                L.BackColor = C2
                L = ListV.Items.Add("Veličina serije: " + vel_ser.ToString)
                L.Tag = ID
                L.Name = ""
                L.BackColor = C2
                L = ListV.Items.Add("Min zalihe: " + min_zal.ToString)
                L.Tag = ID
                L.Name = ""
                L.BackColor = C2

                'zbirno ---
                LZ = ListUK.Items.Add(SifArt)
                NazivArt = Tsif.Item(0).naziv
                LZ.SubItems.Add(NazivArt)
                '----------

                '>>>>>>>>
                'ukupni zahtjevi
                L = ListV.Items.Add("Ukupni zahtjevi")
                L.Tag = ID
                L.Name = "s_uk_zah"
                L.BackColor = C1
                L.ToolTipText = "Suma Ukupnih zahtjeva razine iznad"
                'Lista proizvoda u kojima se koristi trenutni artikl
                Dim kolicina As Decimal
                Dim Nartikla As Integer
                Dim NBr_artikla As Integer
                Dim IDpr As Integer
                Dim pl_nalozi As Decimal


                For NRazdoblje = 0 To Razdoblje - 1
                    'za svako razdoblje se racuna ukupan zahtjev, suma svih planiranih naloga * kolicina trenutnog proizvoda u trenutnom nalogu
                    val = 0

                    'omogucit ako se neki element pojavljuje u 0. i 1. razini.. 
                    'tj ako ih se vadi iz mrp_pr i mrp_art
                    If NRaz = 0 Then
                        'popis svih proizvoda koji koriste OVAJ (ID) atrikl
                        Tmrp_pr = Amrp_pr.GetDataBy_Razdoblje_IDart(NRazdoblje + 1, ID)
                        NBr_artikla = Tmrp_pr.Count
                        For Nart = 0 To NBr_artikla - 1
                            IDpr = Tmrp_pr.Item(Nart).id_pr
                            kolicina = Asas.Query_KOlicina_ByIDpr_IDart(IDpr, ID)

                            val = val + (Tmrp_pr.Item(Nart).pl_nalozi * kolicina)
                        Next Nart

                        Try
                            If Tmrp_art.Item(NRazdoblje).uk_zah <> val Then Amrp_art.Update_uk_zah(val, ID, NRazdoblje + 1)
                        Catch ex As Exception
                            Amrp_art.Update_uk_zah(val, ID, NRazdoblje + 1)
                        End Try

                    End If

                    '------
                    If NRaz > 0 Then
                        'popis artikala koji u svom sastavu imaju ovaj artikal
                        Tsas_2 = Asas.GetDataBy_Artikli_koji_koriste_IDart(ID)
                        NBr_artikla = Tsas_2.Count

                        For Nartikla = 0 To NBr_artikla - 1
                            IDpr = Tsas_2.Item(Nartikla).id_art
                            kolicina = Tsas_2.Item(Nartikla).kolicina

                            Try
                                pl_nalozi = Amrp_art.Query_Get_pl_nalozi_BY_razina_IDart(IDpr, NRazdoblje + 1)
                            Catch ex As Exception
                                pl_nalozi = 1
                            End Try

                            val = val + (pl_nalozi * kolicina)
                        Next Nartikla

                        Try
                            If Tmrp_art.Item(NRazdoblje).uk_zah <> val Then Amrp_art.Update_uk_zah(val, ID, NRazdoblje + 1)
                        Catch ex As Exception
                            Amrp_art.Update_uk_zah(val, ID, NRazdoblje + 1)
                        End Try
                    End If

                    L.SubItems.Add(val.ToString)
                Next NRazdoblje


                'Otvoreni nalozi
                L = ListV.Items.Add("Otvoreni nalozi")
                L.Tag = ID
                L.Name = "s_ot_nal"
                L.BackColor = C1
                For NRazdoblje = 0 To Razdoblje - 1
                    Try
                        val = Tmrp_art.Item(NRazdoblje).ot_nal
                    Catch ex As Exception
                        val = 0
                    End Try
                    L.SubItems.Add(val.ToString)
                Next NRazdoblje


                'Otvorene narudžbe
                L = ListV.Items.Add("Otvorene narudžbe")
                L.Tag = ID
                L.Name = "s_ot_nar"
                L.BackColor = C1
                For NRazdoblje = 0 To Razdoblje - 1
                    Try
                        val = Tmrp_art.Item(NRazdoblje).ot_nar
                    Catch ex As Exception
                        val = 0
                    End Try
                    L.SubItems.Add(val.ToString)
                Next NRazdoblje

                'Ukupne zalihe
                L = ListV.Items.Add("Ukupne zalihe   ( " + uk_zal.ToString + " )")
                L.Tag = ID
                L.Name = "s_uk_zal"
                L.BackColor = C1
                L.ToolTipText = "Ukupne zalihe prethodnog razdoblja + Otvoreni nalozi + Otvorene naruđbe - Ukupni zahtjevi"
                For NRazdoblje = 0 To Razdoblje - 1

                    If NRazdoblje = 0 Then
                        val = uk_zal + Convert.ToDecimal(ListV.Items(L.Index - 2).SubItems(NRazdoblje + 1).Text) + Convert.ToDecimal(ListV.Items(L.Index - 1).SubItems(NRazdoblje + 1).Text) - Convert.ToDecimal(ListV.Items(L.Index - 3).SubItems(NRazdoblje + 1).Text)
                        'MessageBox.Show("art:" + SifArt + "raz:" + NRazdoblje.ToString + " :::" + vel_ser.ToString + " + " + ListV.Items(L.Index - 2).SubItems(NRazdoblje + 1).Text + " + " + ListV.Items(L.Index - 1).SubItems(NRazdoblje + 1).Text + " - " + ListV.Items(L.Index - 3).SubItems(NRazdoblje + 1).Text)
                    Else
                        uk_zal = Convert.ToDecimal(ListV.Items(L.Index).SubItems(NRazdoblje).Text)
                        'MessageBox.Show("art:" + SifArt + "raz:" + NRazdoblje.ToString + " :::" + vel_ser.ToString + " + " + ListV.Items(L.Index - 2).SubItems(NRazdoblje + 1).Text + " + " + ListV.Items(L.Index - 1).SubItems(NRazdoblje + 1).Text + " - " + ListV.Items(L.Index - 3).SubItems(NRazdoblje + 1).Text)
                        val = uk_zal + Convert.ToDecimal(ListV.Items(L.Index - 2).SubItems(NRazdoblje + 1).Text) + Convert.ToDecimal(ListV.Items(L.Index - 1).SubItems(NRazdoblje + 1).Text) - Convert.ToDecimal(ListV.Items(L.Index - 3).SubItems(NRazdoblje + 1).Text)
                    End If

                    Try
                        val1 = Tmrp_art.Item(NRazdoblje).uk_zal
                    Catch ex As Exception
                        val1 = 0
                    End Try
                    If val <> val1 Then Amrp_art.Update_uk_zal(val, ID, NRazdoblje + 1)

                    L.SubItems.Add(val.ToString)
                Next NRazdoblje

                'Dodatne potrebe
                L = ListV.Items.Add("Ukupni zahtjevi")
                L.Tag = ID
                L.Name = "s_dod_potr"
                L.BackColor = C1
                L.ToolTipText = "Ako su ukupne zalihe manje od 0, tada ih treba nadoknaditi s tom količinom"
                For NRazdoblje = 0 To Razdoblje - 1
                    val = Convert.ToDecimal(ListV.Items(L.Index - 1).SubItems(NRazdoblje + 1).Text)
                    If val < 0 Then
                        val = -val
                    Else
                        val = 0
                    End If

                    Try
                        val1 = Tmrp_art.Item(NRazdoblje).dod_potr
                    Catch ex As Exception
                        val1 = 0
                    End Try
                    If val <> val1 Then Amrp_pr.Update_dod_potr(val, ID, NRazdoblje + 1)

                    L.SubItems.Add(val.ToString)
                Next NRazdoblje

                'Planirani nalozi
                L = ListV.Items.Add("Planirani nalozi")
                L.Tag = ID
                L.Name = "s_pl_nalozi"
                L.BackColor = C4
                For NRazdoblje = 0 To Razdoblje - 1
                    Try
                        val = Tmrp_art.Item(NRazdoblje).pl_nalozi
                    Catch ex As Exception
                        val = 0
                    End Try
                    L.SubItems.Add(val.ToString)
                    LZ.SubItems.Add(val.ToString)
                    LZ.BackColor = C1
                Next NRazdoblje

                If NBr < BrArt - 1 Then
                    L = ListV.Items.Add(" ")
                    L.Tag = -1
                    L = ListV.Items.Add(" ")
                    L.Tag = -1
                End If
            Next NBr    'sljedeci artikl

        Next NRaz 'sljedeca razina
        frmMain.TSBar.Visible = False



    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Dispose()
    End Sub

    Public Function GetColumnByX(ByVal LIST As ListView, ByVal idx As Integer, ByVal x As Integer) As Integer
        Dim NumCol As Integer
        Dim Col As Integer = 0
        Dim X1 As Integer = 0
        Dim X2 As Integer = 0
        Dim Lit As ListViewItem

        Lit = LIST.Items(idx)

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

    Private Sub ListV_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles ListV.MouseDown
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Asif As New DBDataSetTableAdapters.sifarnikTableAdapter
        Dim Amrp_pr As New DBDataSetTableAdapters.mrp_prTableAdapter
        Dim Amrp_art As New DBDataSetTableAdapters.mrp_artTableAdapter

        Dim L As ListViewItem
        Dim ID As Integer
        Dim sadrzaj As Decimal
        Dim Column As Integer
        Dim InBox

        L = ListV.GetItemAt(e.X, e.Y)
        Try
            ID = Convert.ToInt16(L.Tag)
        Catch ex As Exception
            Exit Sub
        End Try


        If (L.Tag <> -1) And (L.Name = "p_pl_nalozi" Or L.Name = "s_pl_nalozi") Then
            Column = GetColumnByX(ListV, L.Index, e.X)
            If Column >= 1 Then
                sadrzaj = Convert.ToDecimal(L.SubItems(Column).Text)
            End If


            If L.Name = "p_pl_nalozi" And (sadrzaj = 0) Then   'ucitaj, tj predlozi plan proizvodnje
                sadrzaj = Apr.Get_velicina_serije(ID)    'Velicina serije
            End If
            If L.Name = "s_pl_nalozi" And (sadrzaj = 0) Then   'ucitaj, tj predlozi plan proizvodnje
                sadrzaj = Asif.Query_Vel_serije_byIDart(ID)    'Velicina serije
            End If
            InBox = InputBox("Unesite vrijednost: ", "Unos vrijednosti", sadrzaj)
            If Not (InBox = "") Then
                L.SubItems(Column).Text = InBox
                sadrzaj = Convert.ToDecimal(InBox)
                Select Case L.Name
                    Case "p_pl_nalozi"
                        Amrp_pr.Update_pl_nalozi(sadrzaj, ID, Column)
                    Case "s_pl_nalozi"
                        Amrp_art.Update_pl_nalozi(sadrzaj, ID, Column)
                End Select
            End If
        End If
    End Sub


    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Call MakeTable()
        Call FillTable()
    End Sub


End Class