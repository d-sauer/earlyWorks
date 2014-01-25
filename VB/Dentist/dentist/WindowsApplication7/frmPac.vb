Public Class frmPac
    Dim novi As Boolean = False
    Dim pos As Integer = 0
    Private Sub btnClose_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub

 

    Private Sub dbGridPac_SelectionChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dbGridPac.SelectionChanged
        Dim Aljecnik As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim Tljecnik As New dentistDataSet.ljecnikDataTable
        Dim idpac As Integer = 0
        Dim cnt_ljec As Integer = 0
        lstPacLjec.Items.Clear()
        Try
            idpac = dbGridPac.SelectedRows(0).Cells(0).Value
            Tljecnik = Aljecnik.GetData_ljecnici_by_pac(idpac) 'Aljecnik.Fill_ljecnici_by_pac(Me.DentistDataSet.ljecnik, idpac)
            For cnt_ljec = 0 To Tljecnik.Rows.Count - 1
                lstPacLjec.Items.Add(Tljecnik.Rows(cnt_ljec).Item("ime_prez").ToString)
            Next cnt_ljec
        Catch
        End Try
    End Sub

    
    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click
    
        pos = Me.ListPacjentiBindingSource.Position
        txtIme.Text = ""
        txtJMBG.Text = ""
        txtParticipacija.Text = ""
        txtAdresa.Text = ""
        txtMail.Text = ""
        lstPacLjec.Items.Clear()
        novi = True



    End Sub



    Private Sub btnDel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDel.Click
        Dim Apac As New dentistDataSetTableAdapters.pacjentTableAdapter
        Dim IDpac As Integer = 0
        Dim ImePac As String = 0
        If novi = True Then
            novi = False
            btnAdd.Text = "Novi"
            dbGridPac.Focus()
        Else
            Try
                IDpac = dbGridPac.SelectedRows(0).Cells(0).Value
                ImePac = txtIme.Text
                Try
                    Apac.Delete(IDpac)
                    MessageBox.Show("Pacijent " + ImePac + " je uspjesno obrisan." + vbCrLf + "Te su uklonjeni svi zahvati koje je pacijent imao rezervirane.", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Information)
                Catch ex As Exception
                    MessageBox.Show("Nemoguce je obrisati pacjenta!" + vbCrLf + ex.ToString, frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
                End Try
            Catch
                MessageBox.Show("Odaberite pacjenta!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End Try
            'refresh
            Me.ListPacjentiTableAdapter.Fill(Me.DentistDataSet.ListPacjenti)
        End If

    End Sub

    Private Sub btnChange_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnChange.Click
        Dim APart As New dentistDataSetTableAdapters.partTableAdapter
        Dim Apac As New dentistDataSetTableAdapters.pacjentTableAdapter
        Dim Aljec As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim ALjec_Pac As New dentistDataSetTableAdapters.ljec_pacTableAdapter
        Dim IDljec As Integer = 0
        Dim brJMBG As Decimal = 0
        Dim datum As String = ""
        Dim IDpart As Integer = 0
        Dim IDpac As Integer = 0
        Dim imepac As String = ""
        Dim idosobna As Decimal = 0

        Select Case novi
            Case True 'unos novog pacjenta
                If ((txtIme.TextLength > 1) And (txtJMBG.TextLength > 1) And (txtAdresa.TextLength > 1)) Then
                    Try
                        If (MessageBox.Show("Dali zelite da Vas ljecnik bude " + frmMain.statDoktor.Text + " ?" + vbCrLf + " U protivnom Vas ljecnik ce biti prvi kod kojeg se narucite za zahvat.", frmMain.Text, MessageBoxButtons.YesNo, MessageBoxIcon.Question) = Windows.Forms.DialogResult.Yes) Then
                            'dobavljanje IDljecnika
                            IDljec = Aljec.Get_IDljec(frmMain.statDoktor.Text)
                        Else
                            'u protivnom je ID ljecnika 0, tj Adminisrator, koji nemoze imat pacjente
                            IDljec = 0
                        End If
                        'id participacije
                        Try
                            IDpart = APart.Get_IDpart_by_naziv(txtParticipacija.Text)
                        Catch
                            MessageBox.Show("Odaberite participaciju!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning)
                        End Try
                        brJMBG = Convert.ToDecimal(txtJMBG.Text)
                        imepac = txtIme.Text
                        If (IDljec = 0) Then
                            Apac.Insert(txtIme.Text, brJMBG, IDpart, txtAdresa.Text, txtMail.Text, Date.Now)
                        Else 'ako je odabran ljecnik
                            Apac.Insert(txtIme.Text, brJMBG, IDpart, txtAdresa.Text, txtMail.Text, Date.Now)
                            IDpac = Apac.Ged_ID_by_ime_JMBG(imepac, brJMBG)
                            ALjec_Pac.Insert(IDljec, IDpac)
                        End If
                    Catch
                        MessageBox.Show("Pogreska prilikom dodavanja pacijenta", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
                    End Try
                Else
                    MessageBox.Show("Niste popunili sva potrebna polja!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning)
                End If
                'nakon sto je ljecnik dodan
                novi = False
            Case False 'UPDATE
                Try
                    IDpart = APart.Get_IDpart_by_naziv(txtParticipacija.Text)
                    IDpac = dbGridPac.SelectedRows(0).Cells(0).Value
                    Try
                        idosobna = Convert.ToDecimal(txtJMBG.Text)
                    Catch
                        MessageBox.Show("Pogresno unesen broj iskaznice!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
                    End Try
                    Apac.Update(txtIme.Text, idosobna, IDpart, txtAdresa.Text, txtMail.Text, IDpac)
                    MessageBox.Show("Promjena nad pacjnetom " + txtIme.Text + " je uspjesno napravljena.", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Information)
                    Me.ListPacjentiTableAdapter.Fill(Me.DentistDataSet.ListPacjenti)
                Catch
                    MessageBox.Show("Odaberite pacjenta!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning)
                End Try
                'refresh
        End Select
        Me.ListPacjentiTableAdapter.Fill(Me.DentistDataSet.ListPacjenti)
    End Sub
 
    Private Sub btnRefresh_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnRefresh.Click
        txtIme.Text = ""
        txtJMBG.Text = ""
        txtParticipacija.Text = ""
        txtAdresa.Text = ""
        txtMail.Text = ""
        lstPacLjec.Items.Clear()

        Me.ListPacjentiTableAdapter.Fill(Me.DentistDataSet.ListPacjenti)
        dbGridPac.Focus()
    End Sub

    Public Sub SelPac(ByVal pos As Integer)
        Me.PartTableAdapter.Fill(Me.DentistDataSet.part)
        Me.ListPacjentiTableAdapter.Fill(DentistDataSet.ListPacjenti)
        Me.ListPacjentiBindingSource.Position = Me.ListPacjentiBindingSource.Find("id_pac", pos)

        Me.ShowDialog()
    End Sub

    Private Sub frmPac_Activated(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Activated

    End Sub

    Private Sub frmPac_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DentistDataSet.ListZahvati_byDate' table. You can move, or remove it, as needed.
        Me.ListZahvati_byDateTableAdapter.Fill(Me.DentistDataSet.ListZahvati_byDate)
        'TODO: This line of code loads data into the 'DentistDataSet.pacjent' table. You can move, or remove it, as needed.
        Me.pacjentTableAdapter.Fill(Me.DentistDataSet.pacjent)
    End Sub
    Private Sub tabIzvjestaj_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tabIzvjestaj.SelectedIndexChanged
        Dim ALZah As New dentistDataSetTableAdapters.ListZahvati_byDateTableAdapter
        Dim idpac As Integer = 0
        Select Case tabIzvjestaj.SelectedIndex
            Case 0
                Me.ListPacjentiTableAdapter.Fill(Me.DentistDataSet.ListPacjenti)
                Me.ListPacjentiBindingSource.Position = pos
            Case 1
                pos = Me.ListPacjentiBindingSource.Position
                Try
                    idpac = dbGridPac.SelectedRows(0).Cells(0).Value
                Catch
                    MessageBox.Show("Odaberite pacjenta!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning)
                    tabIzvjestaj.SelectTab(0)
                End Try
                Me.ListPacjentiTableAdapter.FillBy_ID(Me.DentistDataSet.ListPacjenti, idpac)
                ALZah.FillBy_IDpac(DentistDataSet.ListZahvati_byDate, idpac)
                Report.RefreshReport()
        End Select
    End Sub
End Class