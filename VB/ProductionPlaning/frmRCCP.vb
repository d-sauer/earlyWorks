Public Class frmRCCP

    Private Sub MakeTable()
        Dim IdProj As Integer = frmMain.ID_proj
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Tpr As New DBDataSet.proizvodDataTable
        Dim Arad As New DBDataSetTableAdapters.radno_mjestoTableAdapter
        Dim Trad As New DBDataSet.radno_mjestoDataTable
        Dim Anorm As New DBDataSetTableAdapters.normeTableAdapter
        Dim Tnorm As New DBDataSet.normeDataTable


        Dim LV As ListViewItem

        Tpr = Apr.GetDataByProjekt(IdProj)
        Trad = Arad.GetData
        Tnorm = Anorm.GetDataBy_IDproj(IdProj)
        ListV.Clear()
        ListV.Columns.Add("Radno mjesto", 90, HorizontalAlignment.Center)

        Dim BrPr As Integer = Tpr.Count
        Dim N As Integer

        For N = 0 To BrPr - 1
            ListV.Columns.Add(Tpr.Item(N).sif_proiz, 60, HorizontalAlignment.Center)
        Next N

        Dim BrRad As Integer = Trad.Count
        Dim M As Integer
        Dim IDpr As Integer
        Dim IDrm As Integer

        For M = 0 To BrRad - 1
            LV = ListV.Items.Add(Trad.Item(M).r_mjesto)
            LV.Tag = Trad.Item(M).id_rm
            IDrm = Trad.Item(M).id_rm
            For N = 0 To BrPr - 1
                IDpr = Tpr.Item(N).id_pr
                Try
                    Tnorm = Anorm.GetDataBy_PR_RM(IDpr, IDrm)
                    LV.SubItems.Add(Tnorm.Item(0).ns)
                Catch ex As Exception
                    LV.SubItems.Add("0")
                End Try
            Next N
        Next M

        'ukupno
        LV = ListV.Items.Add("Ukupno")
        LV.Font = New Font("Arial", 9, FontStyle.Bold)
        Dim sum As Decimal
        For N = 0 To BrPr - 1
            sum = 0
            'For M = 0 To BrRad
            'sum = sum + Convert.ToDecimal(ListV.Items(M).SubItems(N + 1).Text)
            'Next M
            LV.SubItems.Add(sum)
        Next N
    End Sub

    Private Sub frmRCCP_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DBDataSet.radno_mjesto' table. You can move, or remove it, as needed.
        Me.Radno_mjestoTableAdapter.Fill(Me.DBDataSet.radno_mjesto)
        'TODO: This line of code loads data into the 'DBDataSet.proizvod' table. You can move, or remove it, as needed.
        Me.ProizvodTableAdapter.FillByProjekt(Me.DBDataSet.proizvod, frmMain.ID_proj)
        Call MakeTable()
        Call SumaTablice()
        Call RefreshPPK()
        Call SumPPK()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim IDpr As Integer = ListBox1.SelectedValue
        Dim IDrm As Integer = ComboBox1.SelectedValue
        Dim Anorm As New DBDataSetTableAdapters.normeTableAdapter
        Anorm.Delete(ListBox1.SelectedValue)
        Anorm.Insert(IDrm, IDpr, Convert.ToDouble(TextBox2.Text), Convert.ToInt16(TextBox1.Text))
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim Anorm As New DBDataSetTableAdapters.normeTableAdapter
        Anorm.Delete(ListBox1.SelectedValue)
        Me.ProizvodTableAdapter.FillByProjekt(Me.DBDataSet.proizvod, frmMain.ID_proj)
    End Sub

    Private Sub ListBox1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListBox1.SelectedIndexChanged
        Dim Anorm As New DBDataSetTableAdapters.normeTableAdapter
        Dim Tnorm As New DBDataSet.normeDataTable
        Try
            Tnorm = Anorm.GetDataBy_IDpr(ListBox1.SelectedValue)
            TextBox1.Text = Anorm.Query_Operacija_ByPR(ListBox1.SelectedValue)
            TextBox2.Text = Tnorm.Item(0).ns
            ComboBox1.SelectedValue = Tnorm.Item(0).id_rm
        Catch ex As Exception
            TextBox1.Text = ""
            TextBox2.Text = ""
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
        Dim Anorm As New DBDataSetTableAdapters.normeTableAdapter
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Tpr As New DBDataSet.proizvodDataTable
        Dim IDpr As Integer
        Dim L As ListViewItem
        Dim Column As Integer
        Dim id_rm As Integer
        Dim InBox
        Dim sadrzaj As Decimal
        Tpr = Apr.GetDataByProjekt(frmMain.ID_proj)
        Try
            L = ListV.GetItemAt(e.X, e.Y)
            id_rm = Convert.ToInt16(L.Tag)
            If L.Index >= 0 Then
                Column = GetColumnByX(L.Index, e.X)
                IDpr = Tpr.Item(Column - 1).id_pr
                sadrzaj = Convert.ToDecimal(L.SubItems(Column).Text)
                InBox = InputBox("Unesite vrijednost: ", "Unos vrijednosti", sadrzaj)
                If Not (InBox = "") Then
                    L.SubItems(Column).Text = InBox
                    sadrzaj = Convert.ToDecimal(InBox)
                    'provjerit dali postoji, ako da UPDATE, odnosno INSERT
                    Dim EX As Integer
                    EX = Anorm.Query_IsExist_row(id_rm, IDpr)
                    If EX = 0 Then
                        Anorm.Insert(id_rm, IDpr, sadrzaj, 0)
                    Else
                        Anorm.Query_Update(sadrzaj, id_rm, IDpr)
                    End If
                End If
            End If
        Catch ex As Exception
        End Try

        Call SumaTablice()
    End Sub



    Private Sub SumaTablice()
        Dim BrRow As Integer = ListV.Items.Count
        Dim BrCol As Integer = ListV.Columns.Count
        Dim Col As Integer = 1
        Dim Row As Integer = 0

        Dim sum As Decimal
        For Col = 1 To BrCol - 1
            sum = 0
            For Row = 0 To BrRow - 2
                sum = sum + Convert.ToDouble(ListV.Items(Row).SubItems(Col).Text)
            Next Row
            ListV.Items(BrRow - 1).SubItems(Col).Text = Convert.ToString(sum)
        Next Col


    End Sub


    Private Sub RefreshPPK()
        Dim AProj As New DBDataSetTableAdapters.projektTableAdapter
        Dim Razdoblje As Integer = AProj.TrajanjeProjekta(frmMain.ID_proj)
        Dim N As Integer
        Dim str As String
        Dim LV As ListViewItem

        ListA.Columns.Add("Radno mjesto", 85, HorizontalAlignment.Center)
        ListA.Columns.Add("Planirani po rm", 70, HorizontalAlignment.Center)
        ListA.Columns.Add("Planirani % po rm", 70, HorizontalAlignment.Center)
        For N = 1 To Razdoblje
            str = Convert.ToString(N)
            ListA.Columns.Add(str, 40, HorizontalAlignment.Center)
        Next N
        ListA.Columns.Add("Suma NS", 70, HorizontalAlignment.Center)

        Dim Arad As New DBDataSetTableAdapters.radno_mjestoTableAdapter
        Dim Trad As New DBDataSet.radno_mjestoDataTable
        Trad = Arad.GetData
        Dim BrRad As Integer = Trad.Count
        Dim M As Integer
        For N = 0 To BrRad - 1
            LV = ListA.Items.Add(Trad.Item(N).r_mjesto)
            LV.ToolTipText = "Norma sati za radno mjesto * GPP (planirana proizvodnja) * jedinična količina"
            LV.Tag = Trad.Item(N).id_rm
            For M = 1 To ListA.Columns.Count
                LV.SubItems.Add(0)
            Next M
        Next N
        'suma
        LV = ListA.Items.Add("Suma")
        LV.Tag = -1
        LV.Font = New Font("Arial", 9, FontStyle.Bold)
        For M = 1 To ListA.Columns.Count
            LV.SubItems.Add("-")
        Next M

    End Sub

    Private Sub SumPPK()
        Dim Agpp As New DBDataSetTableAdapters.gpp_analitickiTableAdapter
        Dim Tgpp As New DBDataSet.gpp_analitickiDataTable
        Dim Aproj As New DBDataSetTableAdapters.projektTableAdapter
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Tpr As New DBDataSet.proizvodDataTable
        Dim Anorm As New DBDataSetTableAdapters.normeTableAdapter
        Dim Tnorm As New DBDataSet.normeDataTable
        Dim BrPr As Integer = ListV.Columns.Count - 1
        Dim BrRad As Integer = ListA.Columns.Count - 1
        Dim kol As Integer = Aproj.Get_JedinicaMjere(frmMain.ID_proj)
        Dim sum As Decimal
        Dim SumNS As Decimal
        Dim UkupnoNS As Decimal = 0
        Dim MaxRm As Integer = ListA.Items.Count - 2
        Dim NRm As Integer
        Dim IdRm As Integer
        Dim MaxNorm As Integer
        Dim NNorm As Integer
        Dim Norma As Decimal
        Dim GppZ As Decimal
        Dim IDpr As Integer
        Dim MaxRaz As Integer = 12
        Dim NRaz As Integer

        For NRm = 0 To MaxRm
            IdRm = ListA.Items(NRm).Tag
            Tnorm = Anorm.GetDataBy_IDrm(IdRm)
            MaxNorm = Tnorm.Count


            For NRaz = 1 To MaxRaz
                sum = 0
                For NNorm = 0 To MaxNorm - 1
                    Norma = Tnorm.Item(NNorm).ns
                    IDpr = Tnorm.Item(NNorm).id_pr
                    GppZ = Agpp.Query_Zbirno_IDpr_Raz(IDpr, NRaz)

                    sum = sum + (Norma * GppZ * kol)
                    'MessageBox.Show(Norma.ToString + " * " + GppZ.ToString + " * " + kol.ToString + "=" + sum.ToString + "   >IDrm:" + IdRm.ToString + " IDpr:" + IDpr.ToString)
                Next NNorm
                SumNS = SumNS + sum
                ListA.Items(NRm).SubItems(NRaz + 2).Text = sum.ToString(".##;.##;0")
            Next NRaz

            ListA.Items(NRm).SubItems(MaxRaz + 3).Text = SumNS.ToString(".##;.##;0")
            UkupnoNS = UkupnoNS + SumNS
            SumNS = 0
        Next NRm
        'suma NS
        ListA.Items(ListA.Items.Count - 1).SubItems(ListA.Columns.Count - 1).Text = UkupnoNS.ToString(".##;.##;0")

        'postotci
        Dim X As Decimal
        For NRm = 0 To MaxRm
            Try
                X = (Convert.ToDecimal(ListA.Items(NRm).SubItems(ListA.Columns.Count - 1).Text)) / UkupnoNS
            Catch ex As Exception
                X = 0
            End Try

            ListA.Items(NRm).SubItems(1).Text = X.ToString("0.##;0.##;0")
            X = X * 100
            ListA.Items(NRm).SubItems(2).Text = X.ToString(".##;.##;0") + "%"
        Next NRm

        'ukupne potrebe za kapacitetima
        For NRaz = 1 To MaxRaz
            SumNS = 0
            For NRm = 0 To MaxRm
                Try
                    sum = Convert.ToDecimal(ListA.Items(NRm).SubItems(NRaz + 2).Text)
                Catch ex As Exception
                    sum = 0
                End Try
                SumNS = SumNS + sum
            Next NRm
            ListA.Items(MaxRm + 1).SubItems(NRaz + 2).Text = SumNS.ToString
        Next NRaz
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Me.Close()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        ListA.Clear()
        Call RefreshPPK()
        Call SumPPK()
    End Sub
End Class