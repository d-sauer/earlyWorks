Public Class frmLogin

    Private Sub frmLogin_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DentistDataSet.ljecnik' table. You can move, or remove it, as needed.
        Me.LjecnikTableAdapter.Fill(Me.DentistDataSet.ljecnik)

    End Sub


    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        End
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click  
        Dim da As New dentistDataSetTableAdapters.ljecnikTableAdapter
        Dim IDljec As Integer = 0
        Dim Acc As Integer = 0
        Dim pass As String = ""

        Acc = da.CheckAcc(txtLogAcc.Text)
        If Not Acc = 0 Then
            IDljec = da.Get_IDljec(txtLogAcc.Text)
            pass = da.CheckPass(IDljec)

            If txtPass.Text = pass Then
                frmMain.Enabled = True
                frmMain.statConnect.Text = "Baza: Connected!"
                frmMain.statDoktor.Text = txtLogAcc.Text
                Me.Close()
                frmMain.Show()
            Else
                MessageBox.Show("Unjeli ste neispravnu lozinku!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Warning)
                txtPass.Text = ""
                txtPass.Focus()
            End If
        Else
            MessageBox.Show("Nepostojece korisnicko ime!", frmMain.Text, MessageBoxButtons.OK, MessageBoxIcon.Error)
            txtLogAcc.Focus()
        End If


    End Sub

End Class