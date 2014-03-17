Public Class frmProizvodi


    Private Sub frmProizvodi_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DBDataSet.mjerne_jed' table. You can move, or remove it, as needed.
        Me.Mjerne_jedTableAdapter.Fill(Me.DBDataSet.mjerne_jed)
        'TODO: This line of code loads data into the 'DBDataSet.proizvod' table. You can move, or remove it, as needed.
        Me.ProizvodTableAdapter.Fill(Me.DBDataSet.proizvod)
        'TODO: This line of code loads data into the 'DBDataSet.proizvod' table. You can move, or remove it, as needed.
        Me.ProizvodTableAdapter.FillByProjekt(Me.DBDataSet.proizvod, frmMain.ID_proj)
        Me.Text = frmMain.TSProjekt.Text
    End Sub

    Private Sub Label4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Label6.Click, Label5.Click, Label7.Click, Label9.Click, Label4.Click

    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        ProizvodBindingSource.AddNew()
        TextBox7.Text = frmMain.ID_proj
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim Agpp As New DBDataSetTableAdapters.gpp_analitickiTableAdapter
        Dim proiz As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim zal As Decimal = Convert.ToDecimal(TextBox4.Text)
        Dim IsExist As Integer
        Dim ID_pr As Integer
        Dim ID_proj As Integer = frmMain.ID_proj
        'TextBox7.Text = ID_proj


        ID_pr = Convert.ToInt16(TextBox9.Text)

        ProizvodBindingSource.EndEdit()

        ProizvodTableAdapter.Update(DBDataSet.proizvod)

        If (ID_pr < 0) Then
            ID_pr = Convert.ToInt16(TextBox9.Text)
        End If

        IsExist = Agpp.Query_IsExist(ID_pr)
        'MessageBox.Show("ID pr: " + ID_pr.ToString + " IsExist: " + IsExist.ToString)


        If (IsExist = 0) Then   'da se nebi vise puta inicijaliziralo u slucaju UPDATE-a
            'inicijalizacija polja za proizvod i rokove
            Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
            Dim trajanje As Integer = Aproj.TrajanjeProjekta(ID_proj)
            'tablice koje treba inicijalizirat s razdobljima
            Dim Appp As New DBDataSetTableAdapters.pppTableAdapter
            Dim Agpp_analiticki As New DBDataSetTableAdapters.gpp_analitickiTableAdapter
            Dim Aotvoreni_nal As New DBDataSetTableAdapters.otvoreni_nalTableAdapter
            Dim Amrp_pr As New DBDataSetTableAdapters.mrp_prTableAdapter
            '!!!!!!!!!!
            Dim N As Integer
            For N = 1 To trajanje
                Appp.Inicijalizacija(ID_pr, N, 0)
                Agpp_analiticki.Inicijalizacija(ID_pr, N)
                Aotvoreni_nal.Inicijalizacija(ID_pr, N)
                Amrp_pr.Inicijalizacija(ID_pr, N)
            Next N
            Agpp.Update_poc_zalihe(zal, ID_pr, 1)   'update Pocetne zalihe u GPP analiticki

        Else
            Agpp.Update_poc_zalihe(zal, ID_pr, 1)   'update Pocetne zalihe u GPP analiticki
        End If
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        ProizvodBindingSource.CancelEdit()
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Dim idpr As Integer = ListBox1.SelectedValue
        'brisanje prizvoda iz tablice proizvod
        ProizvodTableAdapter.Delete(idpr)
        Me.ProizvodTableAdapter.FillByProjekt(Me.DBDataSet.proizvod, frmMain.ID_proj)
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Close()
    End Sub

End Class