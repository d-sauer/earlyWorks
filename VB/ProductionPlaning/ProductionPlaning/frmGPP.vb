Public Class frmGPP
    Dim Sel_ID_pr As Integer
    Dim C1 As Color = Color.AliceBlue
    Dim C2 As Color = Color.CadetBlue
    Dim C3 As Color = Color.White
    Dim C4 As Color = Color.PowderBlue
    Dim C_err As Color = Color.IndianRed
    Private Sub Make_Tbl()
        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Tpr As New DBDataSet.proizvodDataTable
        Dim razdoblje As Integer = Aproj.TrajanjeProjekta(frmMain.ID_proj)
        Dim BrPr As Integer
        Dim PN As Integer
        Dim RN As Integer
        Dim id_pr As Integer
        Dim sif_pr As String
        ListZ.Clear()
        ListA.Clear()

        'kreiranje strukture, kolona za ListZ i ListA
        ListZ.Columns.Add("Proizvod", 150, HorizontalAlignment.Left)
        ListA.Columns.Add("Proizvod", 150, HorizontalAlignment.Left)
        For RN = 1 To razdoblje
            ListZ.Columns.Add(RN.ToString, 40, HorizontalAlignment.Center)
            ListA.Columns.Add(RN.ToString, 40, HorizontalAlignment.Center)
        Next RN

        'inicijalizacija tablice ListZ
        Tpr = Apr.GetDataByProjekt(frmMain.ID_proj)
        BrPr = Tpr.Count - 1
        For PN = 0 To BrPr
            id_pr = Tpr(PN).id_pr
            sif_pr = Tpr(PN).sif_proiz
            FillGppZbirno(id_pr, sif_pr)
        Next PN
    End Sub

    Private Sub frmGPP_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call Make_Tbl()
        Call GetDataFrom_GPP()
    End Sub

    Private Sub GetDataFrom_GPP()
        Dim Agpp As New DBDataSetTableAdapters.gpp_analitickiTableAdapter
        Dim Tgpp As New DBDataSet.gpp_analitickiDataTable
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Tpr As New DBDataSet.proizvodDataTable
        Dim NPr As Integer = 0
        Dim BrPr As Integer
        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
        Dim razdoblje As Integer = Aproj.TrajanjeProjekta(frmMain.ID_proj)
        Dim Nraz As Integer
        Dim vel_serije As Integer
        Dim min_zal As Integer
        Dim id_pr As Integer
        Dim sif_pr As String
        Dim Lit As ListViewItem
        Dim val As Decimal

        


        Tpr = Apr.GetDataByProjekt(frmMain.ID_proj)
        BrPr = Tpr.Count - 1

        frmMain.TSBar.Visible = True
        frmMain.TSBar.Maximum = BrPr
        For NPr = 0 To BrPr
            frmMain.TSBar.Value = NPr

            id_pr = Tpr(NPr).id_pr
            sif_pr = Tpr(NPr).sif_proiz
            Tgpp = Agpp.GetData_ByIDpr(id_pr) 'dobavljanje podataka za NPr. projekt
            vel_serije = Apr.Get_velicina_serije(id_pr)
            min_zal = Apr.Get_Minimalne_zalihe(id_pr)

            ListA.BackColor = C1
            Lit = ListA.Items.Add("Proizvod: " + sif_pr)
            Lit.Tag = id_pr
            Lit.BackColor = C2
            Lit.Font = New Font("Arial", 9, FontStyle.Bold)

            Lit = ListA.Items.Add("Veličina serije: " + vel_serije.ToString)
            Lit.Tag = id_pr
            Lit.BackColor = C2
            Lit = ListA.Items.Add("Min. zalihe: " + min_zal.ToString)
            Lit.Tag = id_pr
            Lit.BackColor = C2

            'prognoza narudžbi
            Lit = ListA.Items.Add("Prognoza narudžbi")
            Lit.Tag = id_pr
            Lit.Name = "prog_nar"
            Lit.BackColor = C4
            For Nraz = 0 To razdoblje - 1
                Try
                    val = Tgpp(Nraz).prog_nar
                Catch ex As Exception
                    val = 0
                End Try
                Lit.SubItems.Add(val.ToString)
            Next Nraz

            'pristigle narudžbe
            Lit = ListA.Items.Add("Pristigle narudžbe")
            Lit.Tag = id_pr
            Lit.Name = "pristigle_nar"
            Lit.BackColor = C4
            For Nraz = 0 To razdoblje - 1
                Try
                    val = Tgpp(Nraz).pristigle_nar
                Catch ex As Exception
                    val = 0
                End Try
                Lit.SubItems.Add(val.ToString)
            Next Nraz

            'planirana potražnja
            Lit = ListA.Items.Add("Planirana potražnja")
            Lit.Tag = id_pr
            Lit.Name = "plan_potr"
            Lit.BackColor = C1
            Lit.ToolTipText = "Ako je PPP < GPP (Pristigle narudžbe), tada je GPP(planirana potražnja)= GPP (pristigle narudžbe)" & vbCrLf & "ako uvjet ne vrijedi tada je GPP (planirana proizvodnja) = PPP"

            For Nraz = 0 To razdoblje - 1
                Try
                    val = Tgpp(Nraz).plan_potr
                Catch ex As Exception
                    val = 0
                End Try
                Lit.SubItems.Add(val.ToString)
            Next Nraz

            'planirana proizvodnja
            Lit = ListA.Items.Add("Planirana proizvodnja")
            Lit.Tag = id_pr
            Lit.Name = "plan_proiz"
            Lit.BackColor = C4
            For Nraz = 0 To razdoblje - 1
                Try
                    val = Tgpp(Nraz).plan_proiz
                Catch ex As Exception
                    val = 0
                End Try
                Lit.SubItems.Add(val.ToString)
            Next Nraz

            'Dodatne potrebe
            Lit = ListA.Items.Add("Dodatne potrebe")
            Lit.Tag = id_pr
            Lit.Name = "dod_pot"
            Lit.BackColor = C1
            Lit.ToolTipText = "Ako su Ukupne zalihe < 0, tada ih treba nadoknadit za tu vrijednost"
            For Nraz = 0 To razdoblje - 1
                Try
                    val = Tgpp(Nraz).dod_pot
                Catch ex As Exception
                    val = 0
                End Try
                Lit.SubItems.Add(val.ToString)
            Next Nraz

            'Početne zalihe
            Lit = ListA.Items.Add("Početne zalihe")
            Lit.Tag = id_pr
            Lit.Name = "poc_zalihe"
            Lit.BackColor = C1
            Lit.ToolTipText = "Početne zalihe iz šifarnika"
            For Nraz = 0 To razdoblje - 1
                Try
                    val = Tgpp(Nraz).poc_zalihe
                Catch ex As Exception
                    val = 0
                End Try
                Lit.SubItems.Add(val.ToString)
            Next Nraz

            'Ukupne zalihe
            Lit = ListA.Items.Add("Ukupne zalihe")
            Lit.Tag = id_pr
            Lit.Name = "uk_zal"
            Lit.BackColor = C1
            Lit.ToolTipText = "[Početne zalihe] Ukupne zalihe (razdoblje prije)  + Planirana proizvodnja - Planirana potražnja"
            For Nraz = 0 To razdoblje - 1
                Try
                    val = Tgpp(Nraz).uk_zal
                Catch ex As Exception
                    val = 0
                End Try
                Lit.SubItems.Add(val.ToString)
            Next Nraz

            'Količina za nuđenje
            Lit = ListA.Items.Add("Količina za nuđenje")
            Lit.Tag = id_pr
            Lit.Name = "kol_za_nud"
            Lit.BackColor = C1
            Lit.ToolTipText = "[Početne zalihe] Količina za nuđenje (razdoblje prije) + Planirana proizvodnja - Pristigle narudžbe"
            For Nraz = 0 To razdoblje - 1
                Try
                    val = Tgpp(Nraz).kol_za_nud
                Catch ex As Exception
                    val = 0
                End Try
                Lit.SubItems.Add(val.ToString)
            Next Nraz


            'prazan red
            If NPr < BrPr Then
                Lit = ListA.Items.Add(" ")
                Lit.Tag = -1
                Lit.BackColor = C3
                Lit = ListA.Items.Add(" ")
                Lit.Tag = -1
                Lit.BackColor = C3
            End If
        Next NPr
        frmMain.TSBar.Visible = False
    End Sub

    Public Function GetColumnByX(ByVal idx As Integer, ByVal x As Integer) As Integer
        Dim NumCol As Integer
        Dim Col As Integer = 0
        Dim X1 As Integer = 0
        Dim X2 As Integer = 0
        Dim Lit As ListViewItem

        Lit = ListA.Items(idx)

        'da bi se svi subitemi mogli ucitati, prvo trebaju biti inicijalizirani.. tj. dodani subitem.add....
        For NumCol = 1 To ListA.Columns.Count - 2

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

    Private Sub ListA_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles ListA.MouseDown
        Dim Agpp As New DBDataSetTableAdapters.gpp_analitickiTableAdapter
        Dim Appp As New DBDataSetTableAdapters.pppTableAdapter
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        '--
        Dim Amrp_pr As New DBDataSetTableAdapters.mrp_prTableAdapter
        '--
        Dim L As ListViewItem
        Dim Column As Integer
        Dim id_pr As Integer
        Dim InBox
        Dim sadrzaj As Decimal
        Dim plan_potr As Decimal
        Dim ppp As Decimal

        Try
            L = ListA.GetItemAt(e.X, e.Y)
            Sel_ID_pr = Convert.ToInt16(L.Tag)
            id_pr = Convert.ToInt16(L.Tag)

           

            If (L.Tag <> "-1") And ((L.Name = "prog_nar") Or (L.Name = "pristigle_nar") Or (L.Name = "plan_proiz")) Then
                Column = GetColumnByX(L.Index, e.X)
                sadrzaj = Convert.ToDecimal(L.SubItems(Column).Text)

                If L.Name = "plan_proiz" And (sadrzaj = 0) Then   'ucitaj, tj predlozi plan proizvodnje
                    sadrzaj = Apr.Get_velicina_serije(Sel_ID_pr)    'Velicina serije
                End If
                InBox = InputBox("Unesite vrijednost: ", "Unos vrijednosti", sadrzaj)

                If Not (InBox = "") Then
                    L.SubItems(Column).Text = InBox
                    sadrzaj = Convert.ToDecimal(InBox)  'jed_mjer; konvertiranje zapisa u bazu sa stvarnim vrjednostima
                    Select Case (L.Name)
                        Case "prog_nar"
                            Agpp.Update_prog_nar(sadrzaj, Sel_ID_pr, Column)
                        Case "pristigle_nar"
                            Agpp.Update_pristigle_nar(sadrzaj, Sel_ID_pr, Column)
                            'vrijednost iz PPP-a, za prosljedjivanje funkciji
                            ppp = Appp.Query_Get_kolicina(id_pr, Column)
                            plan_potr = frmPPP.ChechGPP(id_pr, Column, ppp) 'Provjera dali je PPP.kolicina>GPP.planirana potraznja
                            'update kolone Planirana potražnja, na osnovu CheckGPP
                            ListA.Items(L.Index + 1).SubItems(Column).Text = plan_potr

                            'racunanje Ukupnih zaliha, kolicine za nudjenje i Dodatnih potreba
                            Call CalculateTable(id_pr, L.Index + 2)  '+2 zato sto se funkcija orjentira prema redu 'Planirana proizvodnja'
                        Case "plan_proiz"
                            Agpp.Update_plan_proiz(sadrzaj, Sel_ID_pr, Column)
                            'update MRP_pr >> Ukupni zahtjevi
                            Amrp_pr.Update_uk_zah(sadrzaj, Sel_ID_pr, Column)
                            'izracun ostalih vrijednosti na osnovu unesene vrijednosti
                            Call CalculateTable(id_pr, L.Index)
                            'update tablice zbirno
                            Dim ZPr As Integer
                            For ZPr = 0 To ListZ.Items.Count
                                L = ListZ.Items(ZPr)
                                If (L.Tag = id_pr) Then
                                    L.SubItems(Column).Text = sadrzaj
                                    Exit For
                                End If
                            Next ZPr

                    End Select
                End If
            End If
            'pokrenut proracun za ostale elemente tablice 
        Catch ex As Exception
        End Try
    End Sub

    Private Sub FillGppZbirno(ByVal id_pr As Integer, ByVal sif_pr As String)
        'uzimanje podataka za GPP zbirno, iz Planirana proizvodnja
        Dim Agpp As New DBDataSetTableAdapters.gpp_analitickiTableAdapter
        Dim Tgpp As New DBDataSet.gpp_analitickiDataTable
        Dim razdoblja = ListZ.Columns.Count
        Dim Raz As Integer
        Dim vrijednost As Decimal

        Dim Lit As ListViewItem

        Tgpp = Agpp.GetDataBy_gppZbirno(id_pr)
        Lit = ListZ.Items.Add(sif_pr)
        Lit.Tag = id_pr
        For Raz = 0 To razdoblja - 1
            Try
                vrijednost = Tgpp(Raz).plan_proiz
            Catch ex As Exception
                vrijednost = 0
            End Try
            Lit.SubItems.Add(vrijednost)
            Lit.Tag = id_pr
        Next Raz

    End Sub

    Private Sub CalculateTable(ByVal IDpr As Integer, ByVal row As Integer)
        Dim Agpp As New DBDataSetTableAdapters.gpp_analitickiTableAdapter
        Dim Tgpp As New DBDataSet.gpp_analitickiDataTable
        'racunanje ukupnih zaliha i kolicine za nudjenje
        Dim L_uk_zal As ListViewItem 'ukupne zalihe
        Dim L_kol_za_nud As ListViewItem 'Kolicina za nudjenje
        Dim L_dod_potr As ListViewItem  'Dodatne potrebe
        Dim L_plan_potr As ListViewItem  'Planirana potraznja
        Dim L_plan_proiz As ListViewItem 'Planirana proizvodnja
        Dim L_prist_nar As ListViewItem  'Pristigle narudzbe
        Dim UkZal As Decimal
        Dim KolNud As Decimal
        Dim DodPotr As Decimal
        Dim razdoblja As Integer = ListA.Columns.Count - 1

        Dim poc_zal = Convert.ToInt16(ListA.Items(row + 2).SubItems(1).Text)
        L_uk_zal = ListA.Items(row + 3)
        L_kol_za_nud = ListA.Items(row + 4)
        L_dod_potr = ListA.Items(row + 1)
        L_plan_potr = ListA.Items(row - 1)
        L_prist_nar = ListA.Items(row - 2)
        L_plan_proiz = ListA.Items(row)

        Dim Raz As Integer = 1
        'ukupne zalihe
        UkZal = poc_zal + Convert.ToDecimal(L_plan_proiz.SubItems(Raz).Text) - Convert.ToDecimal(L_plan_potr.SubItems(Raz).Text)
        L_uk_zal.SubItems(Raz).Text = UkZal
        Agpp.Update_uk_zal(UkZal, IDpr, Raz)

        If UkZal < 0 Then
            L_uk_zal.BackColor = C_err
        Else
            L_uk_zal.BackColor = C1
        End If
        'kolicina za nudjenje
        KolNud = poc_zal + Convert.ToDecimal(L_plan_proiz.SubItems(Raz).Text) - Convert.ToDecimal(L_prist_nar.SubItems(Raz).Text)
        L_kol_za_nud.SubItems(Raz).Text = KolNud
        Agpp.Update_kol_za_nud(KolNud, IDpr, Raz)
        If KolNud < 0 Then
            L_kol_za_nud.BackColor = C_err
        Else
            L_kol_za_nud.BackColor = C1
        End If
        'Dodatne potrebe
        If (UkZal < 0) Then
            DodPotr = -UkZal
            L_dod_potr.SubItems(Raz).Text = DodPotr
            Agpp.Update_dod_pot(DodPotr, IDpr, Raz)
            L_dod_potr.BackColor = C_err
        Else
            DodPotr = 0
            L_dod_potr.SubItems(Raz).Text = DodPotr
            Agpp.Update_dod_pot(DodPotr, IDpr, Raz)
            L_dod_potr.BackColor = C1
        End If

        For Raz = 2 To razdoblja
            'ukupne zalihe
            UkZal = Convert.ToDecimal(L_uk_zal.SubItems(Raz - 1).Text) + Convert.ToDecimal(L_plan_proiz.SubItems(Raz).Text) - Convert.ToDecimal(L_plan_potr.SubItems(Raz).Text)
            L_uk_zal.SubItems(Raz).Text = UkZal
            Agpp.Update_uk_zal(UkZal, IDpr, Raz)
            If UkZal < 0 Then
                L_uk_zal.BackColor = C_err
            Else
                L_uk_zal.BackColor = C1
            End If
            'kolicina za nudjenje
            KolNud = Convert.ToDecimal(L_kol_za_nud.SubItems(Raz - 1).Text) + Convert.ToDecimal(L_plan_proiz.SubItems(Raz).Text) - Convert.ToDecimal(L_prist_nar.SubItems(Raz).Text)
            L_kol_za_nud.SubItems(Raz).Text = KolNud
            Agpp.Update_kol_za_nud(KolNud, IDpr, Raz)
            If KolNud < 0 Then
                L_kol_za_nud.BackColor = C_err
            Else
                L_kol_za_nud.BackColor = C1
            End If
            'Dodatne potrebe
            If (UkZal < 0) Then
                DodPotr = -UkZal
                L_dod_potr.SubItems(Raz).Text = DodPotr
                Agpp.Update_dod_pot(DodPotr, IDpr, Raz)
                L_dod_potr.BackColor = C_err
            Else
                DodPotr = 0
                L_dod_potr.SubItems(Raz).Text = DodPotr
                Agpp.Update_dod_pot(DodPotr, IDpr, Raz)
                L_dod_potr.BackColor = C1
            End If
        Next Raz
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Dispose()
    End Sub




    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Call Make_Tbl()
        Call GetDataFrom_GPP()
    End Sub
End Class