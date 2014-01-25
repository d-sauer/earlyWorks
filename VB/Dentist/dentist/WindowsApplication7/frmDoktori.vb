Public Class frmDoktori
    Dim IDljec As Integer = 0

    Private Sub btnClose_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClose.Click
        Me.LjecnikBindingSource.CancelEdit()
        Me.PacjentBindingSource.CancelEdit()
        Me.ZahvatiBindingSource.CancelEdit()
        Me.Close()
    End Sub

    Private Sub frmDoktori_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DentistDataSet.pacjent' table. You can move, or remove it, as needed.
        'Me.PacjentTableAdapter.Fill(Me.DentistDataSet.pacjent)
        'TODO: This line of code loads data into the 'DentistDataSet.zahvati' table. You can move, or remove it, as needed.
        Me.ZahvatiTableAdapter.Fill(Me.DentistDataSet.zahvati)
        'TODO: This line of code loads data into the 'DentistDataSet.ljecnik' table. You can move, or remove it, as needed.
        Me.LjecnikTableAdapter.Fill(Me.DentistDataSet.ljecnik)

        'administracija
        Call admin()

    End Sub

    Private Sub admin()
        'administracijska prava
        If (frmMain.statDoktor.Text = "Administrator") Then
            btnAdd.Enabled = True
            lstLZ.Enabled = True
            btnDel.Enabled = True
            btnMovePac.Enabled = True
        Else
            btnAdd.Enabled = False
            lstLZ.Enabled = False
            btnDel.Enabled = False

            If (frmMain.statDoktor.Text = txtLjecnik.Text) Then
                btnChange.Enabled = True
                btnMovePac.Enabled = True
            Else
                btnChange.Enabled = False
                btnMovePac.Enabled = False
            End If
        End If
    End Sub

    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        'Me.LjecnikTableAdapter.Fill(Me.DentistDataSet.ljecnik)   
        Me.LjecnikBindingSource.AddNew()
    End Sub

    Private Sub btnDel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDel.Click
        Dim ljec As String = txtLjecnik.Text
        If MessageBox.Show("Dali sigurno zelite obrisati ljecnika?", frmMain.Text, MessageBoxButtons.YesNo, MessageBoxIcon.Question) = Windows.Forms.DialogResult.Yes Then
            If Not txtLjecnik.Text = "Administrator" Then
                Try
                    Me.LjecnikBindingSource.RemoveCurrent()
                    Me.LjecnikBindingSource.EndEdit()
                    Me.LjecnikTableAdapter.Update(DentistDataSet.ljecnik)
                    MessageBox.Show("Ljecnik: " + ljec + " je obrisan!", frmMain.Text, MessageBoxButtons.OK)
                Catch
                    MessageBox.Show("Ljecnik se nemoze obrisati!" + vbCrLf + "Zato što postoje pacijenti koji su kod tog ljecnika", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
                End Try
                Me.LjecnikTableAdapter.Fill(Me.DentistDataSet.ljecnik)
            End If
        Else
            MessageBox.Show("Nemozete obrisati Administratora!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning)
        End If
    End Sub

    Private Sub btnChange_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnChange.Click
        Dim DataRV As DataRowView
        Dim pos As Integer = 0
        Dim IDljec As Integer = 0
        DataRV = Me.LjecnikBindingSource.Current
        IDljec = DataRV.Row.Item("id_ljec") 'Get novododani ID
        DataRV.Row.Item("ime_prez") = txtLjecnik.Text
        pos = Me.LjecnikBindingSource.Position
        Me.LjecnikBindingSource.EndEdit()
        Me.LjecnikTableAdapter.Update(DentistDataSet.ljecnik)
        LjecZahUpdate(IDljec)
        Me.LjecnikTableAdapter.Fill(Me.DentistDataSet.ljecnik)
        Me.LjecnikBindingSource.Position = pos

    End Sub



    Public Sub LjecZahUpdate(ByVal IDljec As Integer)
        Dim ALjec As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim ALjecZah As New dentistDataSetTableAdapters.ljec_zahvatTableAdapter
        Dim TLjecZah As New dentistDataSet.ljec_zahvatDataTable
        Dim AZah As New dentistDataSetTableAdapters.zahvatiTableAdapter
        'Dim IDljec As Integer = 0
        Dim IDzah As Integer = 0
        Dim IsExist As Integer = 0
        Dim IsChk As Integer = 0
        Dim NZah As Integer = 0


        For NZah = 0 To lstLZ.Items.Count - 1
            IDzah = AZah.Get_IDzah(lstLZ.Items(NZah).ToString)
            IsChk = lstLZ.GetItemCheckState(NZah) 'dali je element checkiran u listi
            IsExist = ALjecZah.Check_ljec_zah(IDljec, IDzah)

            If (IsChk = 1 And IsExist = 0) Then 'INSERT
                ALjecZah.Insert(IDljec, IDzah)
            End If
            'If (IsChk = 1 And IsExist = 1) Then 'UPDATE
            'End If
            If (IsChk = 0 And IsExist = 1) Then 'DELETE
                Try
                    ALjecZah.Delete(IDljec, IDzah)
                Catch
                    MessageBox.Show("Zahvat koji zelite uklonit trenutnom doktoru je vjerojatno rezerviran! Prvo uklonite rezervaciju za taj zahvat!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
                End Try
            End If
        Next NZah

    End Sub


    Private Sub btnMovePac_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnMovePac.Click
        Dim UpdateLpac As New dentistDataSetTableAdapters.ljec_pacTableAdapter
        Dim ALjec As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim pacjenti As New dentistDataSetTableAdapters.pacjentTableAdapter
        Dim IDlj As Integer = 0
        Dim IDpac As Integer = 0
        Dim NewIDljec As Integer = 0
        Dim SelIt As Integer = 0
        For SelIt = 0 To dbGridLPac.SelectedRows.Count - 1
            Try
                IDpac = dbGridLPac.SelectedRows(SelIt).Cells(0).Value
                IDlj = ALjec.Get_IDljec(txtLjecnik.Text)
                NewIDljec = ALjec.Get_IDljec(txtNewLjec.Text)
                UpdateLpac.Update_change_ljec(NewIDljec, IDlj, IDpac)
            Catch ex As Exception
                MessageBox.Show("Pogreska prilikom premjestanja pacjenta drugom doktoru!" + vbCrLf + ex.ToString, frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
            End Try
        Next SelIt
        'refresh..
        'ispis pacjenata koje ima taj ljecnik
        dbGridLPac.DataSource = pacjenti.GetData_pacjenti_by_ljec(IDljec)

    End Sub

    Private Sub DataGridView1_SelectionChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles gridLjec.SelectionChanged
        Dim ALjec As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim L_Z As New dentistDataSetTableAdapters.ljec_zahvatTableAdapter
        Dim TZah As DataTable = Me.DentistDataSet.zahvati
        Dim pacjenti As New dentistDataSetTableAdapters.pacjentTableAdapter
        Dim CZah As Integer = 0
        Dim IDzah As Integer = 0
        Dim zahvat As String = ""
        IDljec = ALjec.Get_IDljec(txtLjecnik.Text)
        lblLJecnik.Text = txtLjecnik.Text
        lstLZ.Items.Clear()
        For CZah = 0 To TZah.Rows.Count - 1
            IDzah = TZah.Rows(CZah).Item("id_zah")
            zahvat = TZah.Rows(CZah).Item("zahvat").ToString    'Me.DentistDataSet.zahvati.Rows(1).Item("zahvat").ToString      'Me.DentistDataSet.zahvati.Rows.Count
            If (Convert.ToInt32(L_Z.Check_ljec_zah(IDljec, IDzah)) >= 1) Then
                lstLZ.Items.Add(zahvat, True)
            Else
                lstLZ.Items.Add(zahvat, False)
            End If
        Next CZah
        'ispis pacjenata koje ima taj ljecnik
        'dbGridLPac.DataSource = pacjenti.GetData_pacjenti_by_ljec(IDljec)
        Me.PacjentTableAdapter.Fill_pacjenti_by_ljec(Me.DentistDataSet.pacjent, IDljec)

        Call admin()
    End Sub

    Private Sub tabDoc_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tabDoc.SelectedIndexChanged
        Call admin()
    End Sub
End Class