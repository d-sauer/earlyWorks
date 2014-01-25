
Public Class frmMain
    Dim CommentON As Boolean = False
    Dim lstKom As New ListBox
    Dim lstKomRez As New ListBox
    Dim SelRezIndex As Integer = 0
    Dim SelSubIndex As Integer = 0
    Dim SelIDTerm As Integer = 0

    Private Sub mnuLogin_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuLogin.Click
        frmLogin.ShowDialog()
    End Sub

    Private Sub IzlazToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles IzlazToolStripMenuItem.Click
        End
    End Sub

    Private Sub frmMain_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DentistDataSet.ListPacjenti' table. You can move, or remove it, as needed.
        Me.ListPacjentiTableAdapter.Fill(Me.DentistDataSet.ListPacjenti)
        
        'lstRaspored
        lstRaspored.Columns.Add("Datum", 100, HorizontalAlignment.Center)
        lstRaspored.Columns.Add("08 - 09", 70, HorizontalAlignment.Center)
        lstRaspored.Columns.Add("09 - 10", 70, HorizontalAlignment.Center)
        lstRaspored.Columns.Add("10 - 11", 70, HorizontalAlignment.Center)
        lstRaspored.Columns.Add("11 - 12", 70, HorizontalAlignment.Center)
        lstRaspored.Columns.Add("12 - 13", 70, HorizontalAlignment.Center)
        lstRaspored.Columns.Add("13 - 14", 70, HorizontalAlignment.Center)
        lstRaspored.Columns.Add("14 - 15", 70, HorizontalAlignment.Center)
        lstRaspored.Columns.Add("15 - 16", 70, HorizontalAlignment.Center)

        Me.Enabled = False
        frmLogin.ShowDialog()


    End Sub


    Private Sub ZahvatiToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ZahvatiToolStripMenuItem.Click
        frmZahvati.ShowDialog()
    End Sub

    Private Sub ParticipacijaToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ParticipacijaToolStripMenuItem.Click
        frmPart.ShowDialog()
    End Sub

    Private Sub LjeèniciToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles LjeèniciToolStripMenuItem.Click
        frmDoktori.ShowDialog()
    End Sub

    Private Sub PacjentiToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PacjentiToolStripMenuItem.Click
        Dim Pos As Integer = Me.ListPacjentiBindingSource.Position
        Dim IDpac As Integer = 0
        Try
            IDpac = dbGridPac.SelectedRows(0).Cells(0).Value
            frmPac.SelPac(IDpac)
        Catch
            frmPac.SelPac(0)
        End Try
        Me.ListPacjentiTableAdapter.Fill(DentistDataSet.ListPacjenti)
        Me.ListPacjentiBindingSource.Position = Pos
    End Sub

    Private Sub dbGridPac_SelectionChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dbGridPac.SelectionChanged
        'sdfd
        Try
            txtPacjent.Text = dbGridPac.SelectedRows(0).Cells(1).Value
            txtBroj.Text = dbGridPac.SelectedRows(0).Cells(2).Value.ToString
            lblPart.Text = dbGridPac.SelectedRows(0).Cells(4).Value.ToString
        Catch
        End Try
    End Sub

    Private Sub dbGridPac_CellContentClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles dbGridPac.CellContentClick

    End Sub

    Private Sub btnSearchPac_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSearchPac.Click
        Dim Apac As New dentistDataSetTableAdapters.ListPacjentiTableAdapter
        'Dim TFPac As New dentistDataSet.ListPacjentiDataTable
        Try
            Apac.Fill_Filter_by_ime(DentistDataSet.ListPacjenti, "%" + txtPacjent.Text + "%")
        Catch
            MessageBox.Show("Neispravan unos!", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try

    End Sub

    Private Sub btnSearcBr_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSearcBr.Click
        Dim Apac As New dentistDataSetTableAdapters.ListPacjentiTableAdapter
        Dim TFPac As New dentistDataSet.ListPacjentiDataTable
        Try
            Apac.Fill_filter_by_broj(DentistDataSet.ListPacjenti, txtBroj.Text)
        Catch
            MessageBox.Show("Neispravan unos!", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try
    End Sub

    Private Sub btnRefresh_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnRefresh.Click
        Try
            Me.ListPacjentiTableAdapter.Fill(Me.DentistDataSet.ListPacjenti)
            txtPacjent.Text = ""
            txtBroj.Text = ""
        Catch
            MessageBox.Show("Pogreska prilikom citanja baze podatka!", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try
    End Sub

    Private Sub lstLjecZahv(ByVal ljecnik As String)
        Dim ALjec As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim ALjecZah As New dentistDataSetTableAdapters.LjecnikoviZahvatiTableAdapter
        Dim TLjecZah As New dentistDataSet.LjecnikoviZahvatiDataTable
        Dim NumZ As Integer = 0
        Dim IDljec As Integer = 0
        IDljec = ALjec.Get_IDljec(ljecnik)
        ALjecZah.Fill_Zah_by_IDljec(TLjecZah, IDljec)
        lstLjecZah.Items.Clear()
        lstKom.Items.Clear()
        If TLjecZah.Rows.Count > 0 Then
            For NumZ = 0 To TLjecZah.Rows.Count - 1
                Try
                    lstLjecZah.Items.Add(TLjecZah.Rows(NumZ).Item("zahvat").ToString, False)
                    lstKom.Items.Add("")
                Catch
                End Try
            Next NumZ
        Else
            lstLjecZah.Text = "Ljecnik nema prijavljenih zahvata"
        End If

    End Sub

    Private Sub statDoktor_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles statDoktor.TextChanged
        Call lstLjecZahv(statDoktor.Text)
    End Sub

    Private Sub frmMain_Resize(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Resize
        lstLjecZah.Height = grpKomentar.Top - 15
    End Sub

    Private Sub grpKomentar_MouseCaptureChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles grpKomentar.MouseCaptureChanged
        Select Case CommentON
            Case False 'otvara se
                CommentON = True
                grpKomentar.Height = 75
                grpKomentar.Top = Label1.Top - 80
                lstLjecZah.Height = grpKomentar.Top - 15
            Case True ' zatvara se
                CommentON = False
                grpKomentar.Height = 15
                grpKomentar.Top = Label1.Top - 25
                lstLjecZah.Height = grpKomentar.Top - 15
        End Select
    End Sub

    Private Sub lstLjecZah_ItemCheck(ByVal sender As System.Object, ByVal e As System.Windows.Forms.ItemCheckEventArgs) Handles lstLjecZah.ItemCheck
        Dim ChEl As Integer = 0
        Dim Cost As Decimal = 0
        Dim Sum As Decimal = 0
        Dim AZah As New dentistDataSetTableAdapters.zahvatiTableAdapter
        ChEl = e.Index
        Sum = Convert.ToDecimal(lblSum.Text)
        Cost = AZah.GetCijena(lstLjecZah.Items(ChEl).ToString)

        If e.CurrentValue = CheckState.Checked Then
            Sum = (Sum - Cost)
        End If
        If e.CurrentValue = CheckState.Unchecked Then
            Sum = Sum + Cost
        End If
        lblSum.Text = Format(Sum, "####0.00##")

        'brisanje komentara
        Dim SelZ As Integer = 0
        SelZ = lstLjecZah.SelectedIndex
        If lstLjecZah.GetItemCheckState(SelZ) = CheckState.Checked Then
            lstKom.Items.RemoveAt(SelZ)
            lstKom.Items.Insert(SelZ, "")
            txtComent.Text = ""
        End If
    End Sub

    Private Sub lblSum_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblSum.TextChanged, lblPart.TextChanged
        'racunanje cijene
        Dim Sum As Decimal = 0
        Dim Part As Decimal = 0
        Dim Cost As Decimal = 0
        Try
            Sum = Convert.ToDecimal(lblSum.Text)
            Part = Convert.ToDecimal(lblPart.Text)
            Part = Part / 100
            Cost = Sum * Part
            lblCijena.Text = Format(Cost, "####0.00##")
        Catch
            lblCijena.Text = "00.00"
        End Try
    End Sub


    Private Sub btnKarton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnKarton.Click
        Dim IDpac As Integer = 0
        Dim pos As Integer = 0
        Try
            pos = Me.ListPacjentiBindingSource.Position
            IDpac = dbGridPac.SelectedRows(0).Cells(0).Value
            frmPac.SelPac(IDpac)
        Catch
            MessageBox.Show("Odaberite pacjenta!", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Information)
        End Try
        Me.ListPacjentiTableAdapter.Fill(DentistDataSet.ListPacjenti)
        Me.ListPacjentiBindingSource.Position = Pos
    End Sub

    Private Sub lstLjecZah_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lstLjecZah.SelectedIndexChanged
        Dim SelZ As Integer = 0
        Try
            SelZ = lstLjecZah.SelectedIndex
            txtComent.Text = lstKom.Items(SelZ).ToString
        Catch
            txtComent.Text = ""
        End Try

    End Sub

    Private Sub txtComent_Leave(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtComent.Leave
        Dim SelZ As Integer = 0
        Try
            SelZ = lstLjecZah.SelectedIndex
            If lstLjecZah.GetItemCheckState(SelZ) = CheckState.Checked Then
                lstKom.Items.RemoveAt(SelZ)
                lstKom.Items.Insert(SelZ, txtComent.Text)
            End If
        Catch

        End Try
    End Sub

    Private Sub Kalendar_DateChanged(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DateRangeEventArgs) Handles Kalendar.DateChanged

    End Sub

    Private Sub Kalendar_DateSelected(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DateRangeEventArgs) Handles Kalendar.DateSelected
        Dim date1 As Date
        Dim date2 As Date

        If Kalendar.SelectionStart.Date = Kalendar.SelectionEnd.Date Then
            date1 = Kalendar.SelectionStart.Date
            date2 = Kalendar.SelectionStart.Date
        Else
            date1 = Kalendar.SelectionStart.Date
            date2 = Kalendar.SelectionEnd.Date
        End If
        MakeCalendarTable(date1, date2)

    End Sub

    Public Sub MakeCalendarTable(ByVal date1 As Date, ByVal date2 As Date)

        Dim DA1 As String = ""
        Dim DA2 As String = ""
        Dim TempDat As String = ""
        Dim NewDat As String = ""
        Dim NewSat As String = ""
        Dim Sat As String = ""
        Dim Min As String = ""
        Dim N As Integer = 0
        Dim N2 As Integer = 0
        Dim Termin As Integer = 0
        Dim idx As Integer = 0
        Dim FirstDay As System.DateTime
        Dim BuffDay As String = ""
        Dim LastDay As System.DateTime
        Dim NextDay As System.DateTime


        Dim map(0 To 8) As Integer
        Dim NumMap As Integer = 0


        For N = 0 To 8
            map(N) = -1
        Next N

        Dim ALjec As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim ALRasp As New dentistDataSetTableAdapters.Det_RasporedTableAdapter
        Dim TLRasp As New dentistDataSet.Det_RasporedDataTable
        Dim ALRaspV As New dentistDataSetTableAdapters.Det_Raspored_ViewTableAdapter
        Dim TLRaspV As New dentistDataSet.Det_Raspored_ViewDataTable
        Dim IDljec As Integer = 0
        If date1 = date2 Then
            GBRaspored.Text = "Raspored  -  " + date1
        Else
            GBRaspored.Text = "Raspored  -  " + date1 + " - " + date2
        End If

        IDljec = ALjec.Get_IDljec(statDoktor.Text)

        DA1 = date1.Day.ToString + "." + date1.Month.ToString + "." + date1.Year.ToString + " 8:00:00"
        DA2 = date2.Day.ToString + "." + date2.Month.ToString + "." + date2.Year.ToString + " 16:00:00"
        ALRasp.Fill(TLRasp, DA1, DA2, IDljec)

        DA1 = date1.Day.ToString + "." + date1.Month.ToString + "." + date1.Year.ToString + " 0:00:00"
        DA2 = date2.Day.ToString + "." + date2.Month.ToString + "." + date2.Year.ToString + " 0:00:00"

        FirstDay = date1 'Date.Parse(DA1)
        LastDay = date2 'Date.Parse(DA2)

        lstRaspored.Items.Clear()

        Do While ((FirstDay <= LastDay))
            BuffDay = FirstDay.ToString("dd.MM.yyyy")
            '            lstRaspored.Items.Add(BuffDay)
            NextDay = FirstDay.AddDays(1)
            FirstDay = NextDay


            For N = 0 To TLRasp.Rows.Count - 1
                NewDat = TLRasp.Rows(N).Item("datum")
                If (NewDat = BuffDay) Then
                    Sat = TLRasp.Rows(N).Item("hour")
                    Min = TLRasp.Rows(N).Item("minute")
                    Termin = TLRasp.Rows(N).Item("id_term")

                    If Not (NewDat = TempDat) Then
                        TempDat = NewDat ' u slucaju promjene datuma
                        'kreiraju se nova polja u listi
                        idx = lstRaspored.Items.Count
                        NumMap = ALRaspV.BrSati(TempDat, IDljec)

                        Call Create_Rez_Row(TempDat, idx)
                        For N2 = 1 To NumMap - 1
                            Call Create_Rez_Row("  -Dolazak", idx + N2)
                        Next N2

                        For N2 = 0 To 8
                            map(N2) = -1
                        Next N2
                    End If

                    If Sat = "8" Then
                        map(0) = map(0) + 1
                        lstRaspored.Items(idx + map(0)).SubItems(1).Text = (Termin.ToString)
                    End If
                    If Sat = "9" Then
                        map(1) = map(1) + 1
                        lstRaspored.Items(idx + map(1)).SubItems(2).Text = (Termin.ToString)
                    End If
                    If Sat = "10" Then
                        map(2) = map(2) + 1
                        lstRaspored.Items(idx + map(2)).SubItems(3).Text = (Termin.ToString)
                    End If
                    If Sat = "11" Then
                        map(3) = map(3) + 1
                        lstRaspored.Items(idx + map(3)).SubItems(4).Text = (Termin.ToString)
                    End If
                    If Sat = "12" Then
                        map(4) = map(4) + 1
                        lstRaspored.Items(idx + map(4)).SubItems(5).Text = (Termin.ToString)
                    End If
                    If Sat = "13" Then
                        map(5) = map(5) + 1
                        lstRaspored.Items(idx + map(5)).SubItems(6).Text = (Termin.ToString)
                    End If
                    If Sat = "14" Then
                        map(6) = map(6) + 1
                        lstRaspored.Items(idx + map(6)).SubItems(7).Text = (Termin.ToString)
                    End If
                    If Sat = "15" Then
                        map(7) = map(7) + 1
                        lstRaspored.Items(idx + map(7)).SubItems(8).Text = (Termin.ToString)
                    End If

                End If
            Next N
            If (Not NewDat = BuffDay) Then
                idx = lstRaspored.Items.Count
                Create_Rez_Row(BuffDay, idx)
            End If
        Loop
    End Sub

    Private Sub Create_Rez_Row(ByVal datum As String, ByVal idx As Integer)

        lstRaspored.Items.Add(datum)

        lstRaspored.Items(idx).SubItems.Add("")
        lstRaspored.Items(idx).SubItems.Add("")
        lstRaspored.Items(idx).SubItems.Add("")
        lstRaspored.Items(idx).SubItems.Add("")
        lstRaspored.Items(idx).SubItems.Add("")
        lstRaspored.Items(idx).SubItems.Add("")
        lstRaspored.Items(idx).SubItems.Add("")
        lstRaspored.Items(idx).SubItems.Add("")
    End Sub


    Private Sub btnRezerviraj_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnRezerviraj.Click
        TabControl1.SelectedIndex = 1
        Dim n As Integer = 0
        lblImeRez.Text = txtPacjent.Text
        lblBrojRez.Text = txtBroj.Text
        'prebacivanje liste rezervacija i komentara
        lstRezZah.Items.Clear()
        lstKomRez.Items.Clear()
        For n = 0 To lstLjecZah.Items.Count - 1
            lstRezZah.Items.Add(lstLjecZah.Items(n), lstLjecZah.GetItemCheckState(n))
            lstKomRez.Items.Add(lstKom.Items(n))
        Next n
        lblSumRez.Text = lblSum.Text
        lblPartRez.Text = lblPart.Text
        lblCijenaRez.Text = lblCijena.Text
        Kalendar.Focus()
        MakeCalendarTable(Date.Now.Date, Date.Now.Date)
    End Sub


    Private Sub lstRezZah_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lstRezZah.SelectedIndexChanged
        Dim SelZ As Integer = 0
        Try
            SelZ = lstRezZah.SelectedIndex
            txtKomRez.Text = lstKomRez.Items(SelZ).ToString
        Catch
            txtKomRez.Text = ""
        End Try
    End Sub

    Private Sub lstRezZah_ItemCheck(ByVal sender As System.Object, ByVal e As System.Windows.Forms.ItemCheckEventArgs) Handles lstRezZah.ItemCheck
        Dim ChEl As Integer = 0
        Dim Cost As Decimal = 0
        Dim Sum As Decimal = 0
        Dim AZah As New dentistDataSetTableAdapters.zahvatiTableAdapter
        ChEl = e.Index
        Sum = Convert.ToDecimal(lblSumRez.Text)
        Cost = AZah.GetCijena(lstRezZah.Items(ChEl).ToString)

        If e.CurrentValue = CheckState.Checked Then
            Sum = (Sum - Cost)
        End If
        If e.CurrentValue = CheckState.Unchecked Then
            Sum = Sum + Cost
        End If
        lblSumRez.Text = Format(Sum, "####0.00##")

        'brisanje komentara
        Dim SelZ As Integer = 0
        Try
            SelZ = lstRezZah.SelectedIndex
            If lstRezZah.GetItemCheckState(SelZ) = CheckState.Checked Then
                lstKomRez.Items.RemoveAt(SelZ)
                lstKomRez.Items.Insert(SelZ, "")
                txtKomRez.Text = ""
            End If
        Catch

        End Try
    End Sub


    Private Sub lblSumRez_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblSumRez.TextChanged
        'racunanje cijene
        Dim Sum As Decimal = 0
        Dim Part As Decimal = 0
        Dim Cost As Decimal = 0
        Try
            Sum = Convert.ToDecimal(lblSumRez.Text)
            Part = Convert.ToDecimal(lblPartRez.Text)
            Part = Part / 100
            Cost = Sum * Part
            lblCijenaRez.Text = Format(Cost, "####0.00##")
        Catch
            lblCijenaRez.Text = "00.00"
        End Try
    End Sub

    Private Sub txtKomRez_Leave(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtKomRez.Leave
        Dim SelZ As Integer = 0
        Try
            SelZ = lstRezZah.SelectedIndex
            If lstRezZah.GetItemCheckState(SelZ) = CheckState.Checked Then
                lstKomRez.Items.RemoveAt(SelZ)
                lstKomRez.Items.Insert(SelZ, txtKomRez.Text)
            End If
        Catch

        End Try
    End Sub


    
    
    Private Sub lstRaspored_MouseDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles lstRaspored.MouseDown
        Dim L As ListViewItem
        Dim IDterm As Integer = 0
        Dim n As Integer
        Dim err As Boolean = False
        L = lstRaspored.GetItemAt(e.X, e.Y)
        Try
            n = GetColumnByX(L.Index, e.X)
            SelRezIndex = L.Index
            SelSubIndex = n

            If (lstRaspored.Items(L.Index).SubItems(n).Text = "") Then
                lblTermin.Text = lstRaspored.Columns(n).Text
                IDterm = -1
                err = True 'zato sto taj termin ne postoji
                btnAddRez.Enabled = True
                btnDelRez.Enabled = False
                btnPacChange.Enabled = False
                btnPacDolazak.Enabled = False
            Else
                lblTermin.Text = "Rezervirano"
                IDterm = Convert.ToInt32(lstRaspored.Items(L.Index).SubItems(n).Text)
                err = False
                btnAddRez.Enabled = False
                btnDelRez.Enabled = True
                btnPacChange.Enabled = True
                btnPacDolazak.Enabled = True
            End If

        Catch
            n = 0
            err = True
        End Try

        If err = False Then 'ako nema greske
            'dobavljanje podataka
            SelIDTerm = IDterm
            Call GetDataByIDTerm(IDterm)
        End If
       

    End Sub

    Public Function GetColumnByX(ByVal idx As Integer, ByVal x As Integer) As Integer
        Dim NumCol As Integer
        Dim Col As Integer = 0
        Dim X1 As Integer = 0
        Dim X2 As Integer = 0
        For NumCol = 0 To lstRaspored.Columns.Count - 2
            X1 = lstRaspored.Items(idx).SubItems(NumCol).Bounds.Location.X
            X2 = lstRaspored.Items(idx).SubItems(NumCol + 1).Bounds.Location.X
            If (x >= X1) And (x < X2) Then
                Col = NumCol
            End If
            If (x > X2) Then
                Col = NumCol + 1
            End If
        Next NumCol
        Return Col
    End Function

    Public Sub GetDataByIDTerm(ByVal IDTerm As Integer)
        Dim AZahPac As New dentistDataSetTableAdapters.zah_pacTableAdapter
        Dim TZahPac As New dentistDataSet.zah_pacDataTable
        Dim APac As New dentistDataSetTableAdapters.pacjentTableAdapter
        Dim TPac As New dentistDataSet.pacjentDataTable
        Dim APart As New dentistDataSetTableAdapters.partTableAdapter
        Dim ALjecRasp As New dentistDataSetTableAdapters.ljec_raspTableAdapter
        Dim NZah As Integer = 0
        Dim IDpac As Integer = 0
        Dim participacija As Double = 0
        Dim dolazak As Boolean = False
        Try
            AZahPac.FillBy_Termin(TZahPac, IDTerm)
            IDpac = TZahPac.Rows(0).Item("id_pac")
            APac.FillBy_IDPac(TPac, IDpac)

            lblImeRez.Text = TPac.Rows(0).Item("ime_prez")
            lblBrojRez.Text = TPac.Rows(0).Item("id_osobna")
            lblCijenaRez.Text = "0"
            participacija = APart.GetPart_ByID(TPac.Rows(0).Item("id_part"))
            lblPartRez.Text = participacija.ToString
            'provjerava dali je pacinet obavio dolazak ili nije
            dolazak = ALjecRasp.Get_Dolazak(IDTerm)
            If (dolazak = True) Then
                btnPacDolazak.Enabled = False
                btnPacChange.Enabled = False
                lstRezZah.Enabled = False
            Else
                btnPacDolazak.Enabled = True
                btnPacChange.Enabled = True
                lstRezZah.Enabled = True
            End If
        Catch
        End Try
        'ucitavanje ljecnikovih zahvata
        Call lstLjecZahvRez(statDoktor.Text, IDTerm)


    End Sub

    Private Sub lstLjecZahvRez(ByVal ljecnik As String, ByVal IDterm As Integer)
        Dim ALjec As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim AZahPac As New dentistDataSetTableAdapters.zah_pacTableAdapter
        Dim TZahPac As New dentistDataSet.zah_pacDataTable
        Dim ALjecZah As New dentistDataSetTableAdapters.LjecnikoviZahvatiTableAdapter
        Dim TLjecZah As New dentistDataSet.LjecnikoviZahvatiDataTable
        Dim NumZ As Integer = 0
        Dim NumR As Integer = 0
        Dim IDljec As Integer = 0
        Dim zahvat As Integer = 0
        Dim Rzahvat As Integer = 0
        Dim checked As Integer = 0
        Dim komentar As String = ""

        IDljec = ALjec.Get_IDljec(ljecnik)
        ALjecZah.Fill_Zah_by_IDljec(TLjecZah, IDljec)
        AZahPac.FillBy_Termin(TZahPac, IDterm)


        lstRezZah.Items.Clear()
        lstKomRez.Items.Clear()

        If TLjecZah.Rows.Count > 0 Then
            For NumZ = 0 To TLjecZah.Rows.Count - 1
                Try
                    zahvat = TLjecZah.Rows(NumZ).Item("id_zah")
                    checked = -1
                    For NumR = 0 To TZahPac.Rows.Count - 1
                        Rzahvat = TZahPac.Rows(NumR).Item("id_zah")
                        If (zahvat = Rzahvat) Then
                            checked = zahvat
                            komentar = TZahPac.Rows(NumR).Item("komentar")
                        End If
                    Next NumR
                    If (checked = -1) Then
                        lstRezZah.Items.Add(TLjecZah.Rows(NumZ).Item("zahvat").ToString, False)
                        lstKomRez.Items.Add("")
                    Else
                        lstRezZah.Items.Add(TLjecZah.Rows(NumZ).Item("zahvat").ToString, True)
                        lstKomRez.Items.Add(komentar)
                    End If
                    'dodavanje komentara

                Catch ex As Exception
                    MessageBox.Show(ex.ToString, Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Information)
                End Try
            Next NumZ
        Else
            lstRezZah.Text = "Ljecnik nema prijavljenih zahvata"
        End If

    End Sub

 
    Private Sub btnDelRez_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDelRez.Click
        Dim ALjecRasp As New dentistDataSetTableAdapters.ljec_raspTableAdapter
        Dim IDterm As Integer = 0

        If (MessageBox.Show("Dali sigurno zelize osloboditi navedeni termin?", Me.Text, MessageBoxButtons.YesNo, MessageBoxIcon.Question) = Windows.Forms.DialogResult.Yes) Then
            Try
                IDterm = Convert.ToInt32(lstRaspored.Items(SelRezIndex).SubItems(SelSubIndex).Text)
                If ALjecRasp.Get_IDdolazak(IDterm) = False Then
                    ALjecRasp.Delete(IDterm)
                    lstRaspored.Items(SelRezIndex).SubItems(SelSubIndex).Text = ""
                Else
                    MessageBox.Show("Nemozete obrisati termin na koji je pacijent dosao!", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
                End If
            Catch
                MessageBox.Show("Termin se nemoze obrisati, zato sto je za njega izdan racun", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
            End Try
        End If
    End Sub
    Public Function GetVrijemeByIndex(ByVal idx As Integer) As String
        Dim vrijeme As String = ""
        Select Case (SelSubIndex)
            Case 1
                vrijeme = "8:00"
            Case 2
                vrijeme = "9:00"
            Case 3
                vrijeme = "10:00"
            Case 4
                vrijeme = "11:00"
            Case 5
                vrijeme = "12:00"
            Case 6
                vrijeme = "13:00"
            Case 7
                vrijeme = "14:00"
            Case 8
                vrijeme = "15:00"
        End Select
        Return vrijeme
    End Function


    Private Sub btnAddRez_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAddRez.Click
        Dim ALjecRasp As New dentistDataSetTableAdapters.ljec_raspTableAdapter
        Dim ALjec As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim IDljec As Integer = 0
        Dim IDterm As Integer = 0  
        Dim datum As String = ""
        

        If Not lblImeRez.Text = "" Then

            datum = lstRaspored.Items(SelRezIndex).Text + " " + GetVrijemeByIndex(SelSubIndex)
            IDljec = ALjec.Get_IDljec(statDoktor.Text)
            ALjecRasp.Insert(IDljec, datum, False)
            IDterm = ALjecRasp.GetLast_IDterm(IDljec, datum)
            lstRaspored.Items(SelRezIndex).SubItems(SelSubIndex).Text = IDterm.ToString
            InsertZahPac(IDterm)
            btnPacDolazak.Enabled = True
            btnPacChange.Enabled = True
            'dodavalje novog pacjenta ljecniku

            Add_Ljec_Pac(IDljec, lblImeRez.Text, Convert.ToDecimal(lblBrojRez.Text))
        Else
            MessageBox.Show("Da bi ste rezervirali termin morate odabrati pacjenta.", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If

    End Sub

    Public Sub InsertZahPac(ByVal IDterm As Integer)
        Dim APac As New dentistDataSetTableAdapters.pacjentTableAdapter
        Dim AZah As New dentistDataSetTableAdapters.zahvatiTableAdapter
        Dim AZahPac As New dentistDataSetTableAdapters.zah_pacTableAdapter
        Dim IDzah As Integer = 0
        Dim IDPac As Integer = 0
        Dim NumZah As Integer = 0
        Dim komentar As String = ""


        IDPac = APac.Ged_ID_by_ime_JMBG(lblImeRez.Text, Convert.ToDecimal(lblBrojRez.Text))
        For NumZah = 0 To lstRezZah.Items.Count - 1
            If lstRezZah.GetItemCheckState(NumZah) = CheckState.Checked Then
                IDzah = AZah.Get_IDzah(lstRezZah.Items(NumZah).ToString)
                komentar = lstKomRez.Items(NumZah).ToString
                AZahPac.Insert(IDterm, IDPac, IDzah, komentar)
            End If
        Next NumZah
      
    End Sub

    Public Sub InsertZahPac_2(ByVal IDterm As Integer)
        Dim APac As New dentistDataSetTableAdapters.pacjentTableAdapter
        Dim AZah As New dentistDataSetTableAdapters.zahvatiTableAdapter
        Dim AZahPac As New dentistDataSetTableAdapters.zah_pacTableAdapter
        Dim IDzah As Integer = 0
        Dim IDPac As Integer = 0
        Dim NumZah As Integer = 0
        Dim komentar As String = ""

            IDPac = APac.Ged_ID_by_ime_JMBG(txtPacjent.Text, Convert.ToDecimal(txtBroj.Text))
            For NumZah = 0 To lstLjecZah.Items.Count - 1
                If lstLjecZah.GetItemCheckState(NumZah) = CheckState.Checked Then
                    IDzah = AZah.Get_IDzah(lstLjecZah.Items(NumZah).ToString)
                    komentar = lstKom.Items(NumZah).ToString
                    AZahPac.Insert(IDterm, IDPac, IDzah, komentar)
                End If
            Next NumZah
        
    End Sub
    Private Sub btnPacDolazak_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnPacDolazak.Click
        Dim ALjecRasp As New dentistDataSetTableAdapters.ljec_raspTableAdapter
        'update
        btnPacChange_Click(sender, e)
        'potvrdjivanje dolaska
        ALjecRasp.Update_Dolazak(True, SelIDTerm)
        'izdavanje racuna
        Call IzdavanjeRacuna(lblImeRez.Text, Convert.ToDecimal(lblBrojRez.Text), Convert.ToDouble(lblPartRez.Text), SelIDTerm, lstRezZah, lblCijenaRez.Text)
    End Sub

    Private Sub btnPacChange_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnPacChange.Click
        Dim AZah As New dentistDataSetTableAdapters.zahvatiTableAdapter
        Dim AZahPac As New dentistDataSetTableAdapters.zah_pacTableAdapter
        Dim TZahPac As New dentistDataSet.zah_pacDataTable
        Dim APac As New dentistDataSetTableAdapters.pacjentTableAdapter

        Dim NZah As Integer = 0
        Dim IDzah As Integer = 0
        Dim IDTerm As Integer = 0
        Dim IDPac As Integer = 0
        Dim IsExist As Integer = 0
        Dim IsChk As Integer = 0
        Dim Prov As Integer = 0
        IDTerm = SelIDTerm
        IDPac = APac.Ged_ID_by_ime_JMBG(lblImeRez.Text, lblBrojRez.Text)

        'provjera dali su svi checkirani
        For NZah = 0 To lstRezZah.Items.Count - 1
            Prov = Prov + 1
        Next NZah

        If Prov = 0 Then
            MessageBox.Show("Nemozete uklonit sve zahvate!", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
        Else
            Try
                For NZah = 0 To lstRezZah.Items.Count - 1
                    IDzah = AZah.Get_IDzah(lstRezZah.Items(NZah).ToString)
                    IsChk = lstRezZah.GetItemCheckState(NZah)
                    IsExist = AZahPac.Get_IsExist(IDTerm, IDzah)

                    If (IsChk = 1 And IsExist = 0) Then 'dodaje se novi element u zahvate
                        AZahPac.Insert(IDTerm, IDPac, IDzah, txtKomRez.Text)
                    End If
                    If (IsChk = 1 And IsExist = 1) Then 'radi se UPDATE
                        AZahPac.Update_Komentar(txtKomRez.Text, IDTerm, IDPac)
                    End If
                    If (IsChk = 0 And IsExist = 1) Then 'brise se DELETE
                        AZahPac.Delete_RezZahvat(IDTerm, IDPac, IDzah)
                    End If
                Next NZah
            Catch
                MessageBox.Show("Nemozete napravit promjenu!" + vbCrLf + "Prvo oznacite slobodni termin koji zelite rezervirat!", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Information)
            End Try
        End If
    End Sub


    Public Sub IzdavanjeRacuna(ByVal Pacjent As String, ByVal IDBroj As Decimal, ByVal Participacija As Double, ByVal IDTerm As Integer, ByVal ListZah As CheckedListBox, ByVal UKcijena As String)
        Dim AZahPac As New dentistDataSetTableAdapters.zah_pacTableAdapter
        Dim TZahPac As New dentistDataSet.zah_pacDataTable
        Dim ARacun As New dentistDataSetTableAdapters.racunTableAdapter
        Dim ARacZah As New dentistDataSetTableAdapters.rac_zahvatTableAdapter
        Dim AZahvati As New dentistDataSetTableAdapters.zahvatiTableAdapter
        Dim APac As New dentistDataSetTableAdapters.pacjentTableAdapter
        Dim ALjec As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim IDljec As Integer = 0
        Dim Ljecnik As String = ""
        Dim NZah As Integer = 0
        Dim cijena As Double = 0
        Ljecnik = statDoktor.Text
        IDljec = ALjec.Get_IDljec(Ljecnik)

        Dim D1 As String = Date.Now.Day.ToString + "." + Date.Now.Month.ToString + "." + Date.Now.Year.ToString + " " + Date.Now.Hour.ToString + ":" + Date.Now.Minute.ToString + ":00"
        Dim datum As Date = Date.Parse(D1)

        Dim idrac As Integer = 0
        'dodavanje racuna
        ARacun.Insert(Pacjent, IDBroj, Participacija, datum, IDljec, IDTerm, Ljecnik)
        idrac = ARacun.Get_LastInserted
        'dodavanje zahvata
        For NZah = 0 To ListZah.Items.Count - 1
            If (ListZah.GetItemCheckState(NZah) = CheckState.Checked) Then
                cijena = AZahvati.GetCijena(ListZah.Items(NZah).ToString)
                ARacZah.Insert(idrac, ListZah.Items(NZah).ToString, cijena)
            End If
        Next NZah
        MessageBox.Show("Racun br. " + idrac.ToString + vbCrLf + "Za pacijenta: " + Pacjent + "   (" + IDBroj.ToString + ")" + vbCrLf + "Cijena: " + UKcijena, Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Information)
    End Sub

    Private Sub btnRacun_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnRacun.Click
        Dim ALjecRasp As New dentistDataSetTableAdapters.ljec_raspTableAdapter
        Dim ALjec As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim IDljec As Integer = 0
        Dim IDterm As Integer = 0

        If lstLjecZah.CheckedItems.Count >= 1 Then
            If (Date.Now.Hour >= 8 And Date.Now.Hour <= 15) Then
                Dim datum As String = Date.Now.Day.ToString + "." + Date.Now.Month.ToString + "." + Date.Now.Year.ToString + " " + Date.Now.Hour.ToString + ":" + Date.Now.Minute.ToString + ":00"

                IDljec = ALjec.Get_IDljec(statDoktor.Text)
                ALjecRasp.Insert(IDljec, datum, True) 'potvrdjen dolazak
                IDterm = ALjecRasp.GetLast_IDterm(IDljec, datum)
                'dodavanje zahvata u termin
                InsertZahPac_2(IDterm)
                'dodavanje novog pacjenta ljecniku
                Add_Ljec_Pac(IDljec, txtPacjent.Text, Convert.ToDecimal(txtBroj.Text))
                'izdavanje racuna
                Call IzdavanjeRacuna(txtPacjent.Text, Convert.ToDecimal(txtBroj.Text), Convert.ToDouble(lblPart.Text), IDterm, lstLjecZah, lblCijena.Text)
            Else
                MessageBox.Show("Nemozete izdat racun! Proslo je radno vrijeme!", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Information)
            End If
        Else
            MessageBox.Show("Niste odabrali ni jedan zahvat!", Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning)
        End If
    End Sub

    Private Sub StatistikaToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles StatistikaToolStripMenuItem.Click
        frmStatistic.ShowDialog()
    End Sub

    Private Sub lblSum_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lblSum.Click

    End Sub

    Private Sub OProgramuToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OProgramuToolStripMenuItem.Click
        About.ShowDialog()
    End Sub
    Private Sub Add_Ljec_Pac(ByVal IDljec As Integer, ByVal Pacjent As String, ByVal JMBG As Decimal)
        Dim APac As New dentistDataSetTableAdapters.pacjentTableAdapter
        Dim ALjecPac As New dentistDataSetTableAdapters.ljec_pacTableAdapter
        Dim IDPac As Integer = APac.Ged_ID_by_ime_JMBG(Pacjent, JMBG)


        Dim chk As Integer = ALjecPac.IsExistLjec_Pac(IDljec, IDPac)
        If (chk = 0) Then
            ALjecPac.Insert(IDljec, IDPac)
        End If
    End Sub
 
End Class
