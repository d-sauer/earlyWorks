Public Class frmSastavnica
    Dim id_Node As Integer

    Private Sub frmSastavnica_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DBDataSet.sifarnik' table. You can move, or remove it, as needed.
        Me.SifarnikTableAdapter.FillByProjekt(Me.DBDataSet.sifarnik, frmMain.ID_proj)
        'TODO: This line of code loads data into the 'DBDataSet.proizvod' table. You can move, or remove it, as needed.
        Me.ProizvodTableAdapter.FillByProjekt(Me.DBDataSet.proizvod, frmMain.ID_proj)
    End Sub



    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        'dodaje Proizvod
        Dim ASas As New DBDataSetTableAdapters.sastavnicaTableAdapter
        Dim N_data As New TreeNode
        Dim idpr As Integer = Convert.ToInt16(id_pr.Text)
        id_Node = 0     'postavlja ID elemenata stabla na nulu
        N_data.Name = id_Node 'rood ID
        N_data.Text = sif_pr.Text
        N_data.Tag = id_pr.Text

        Tree.Nodes.Add(N_data)
        Tree.Focus()
    End Sub

    Private Sub Tree_AfterSelect(ByVal sender As System.Object, ByVal e As System.Windows.Forms.TreeViewEventArgs) Handles Tree.AfterSelect
        'razina
        Dim Asif As New DBDataSetTableAdapters.sifarnikTableAdapter
        Dim ASas As New DBDataSetTableAdapters.sastavnicaTableAdapter
        Dim SelN As TreeNode
        SelN = Tree.SelectedNode

        Dim idpr As Integer = Convert.ToInt16(id_pr.Text)
        Dim idNart As Integer = Convert.ToInt16(SelN.Name)
        Dim idart As Integer = Convert.ToInt16(SelN.Tag)
        Dim SifArt As String = Asif.GetSifArt_byID(idart)

        If SelN.Name <> 0 Then
            Try
                txtart_kol.Text = ASas.Get_Kolicina(idpr, idNart)
            Catch ex As Exception

            End Try
        End If

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Dodaje artikle u sastavnicu
        Dim N As TreeNode
        Dim N_data As New TreeNode
        Dim N_parent As Integer
        Dim razina As Integer
        Dim ASas As New DBDataSetTableAdapters.sastavnicaTableAdapter

        Dim idart As Integer = Convert.ToInt16(id_art.Text)
        Dim idpr As Integer = Convert.ToInt16(id_pr.Text)
        Dim kol As Decimal
        Try
            kol = Convert.ToDecimal(TextBox1.Text)
        Catch ex As Exception
            kol = 0
        End Try

        Dim idart_parent As Integer


        id_Node = id_Node + 1

        N_data.Name = id_Node ' ID djeteta
        N_data.Text = sif_art.Text
        N_data.Tag = id_art.Text

        N = Tree.SelectedNode   'Cvor u koji se dodaje
        N_parent = Convert.ToInt16(N.Name)

        If (N.Name = 0) Then 'znaci da je root
            idart_parent = idart
        Else
            idart_parent = Convert.ToInt16(N.Tag.ToString) 'roditelj,N cvor
        End If

        N.Nodes.Add(N_data)  'Vrijednost koja se dodaje
        razina = N.Level
        'MessageBox.Show("Id pr:" + idpr.ToString + " id_art:" + idart_parent.ToString + " ID sas art:" + idart.ToString)
        ASas.Insert(idpr, idart_parent, idart, kol, N_parent, id_Node, razina)
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim ASas As New DBDataSetTableAdapters.sastavnicaTableAdapter
        Dim SelN As TreeNode = Tree.SelectedNode
        Dim idart As Integer = SelN.Name
        Dim idpr As Integer = Convert.ToInt16(id_pr.Text)

        If SelN.Name = 0 Then   'brise se root
            ASas.Delete_Root(idpr)
            SelN.Remove()
        Else
            If (SelN.Nodes.Count > 0) Then
                MessageBox.Show("Element se ne može obrisati, sve dok sadrži druge elemente", "Upozorenje", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            Else
                ASas.Delete_Child(idpr, idart)
                SelN.Remove()
            End If
        End If
     
    End Sub

    Private Sub MakeTree()
        Dim Asif As New DBDataSetTableAdapters.sifarnikTableAdapter
        Dim Apr As New DBDataSetTableAdapters.proizvodTableAdapter
        Dim Asas As New DBDataSetTableAdapters.sastavnicaTableAdapter
        Dim Tsas As New DBDataSet.sastavnicaDataTable

        Dim idpr As Integer = Convert.ToInt16(id_pr.Text)

        If (Asas.DaliPostojiSastavnica_proizvoda(idpr) > 0) Then
            Tree.Nodes.Clear()
            id_Node = Asas.GetLast_NChild(idpr) 'ID zadnje dodanog djeteta
            Tsas = Asas.GetDataBy_Proizvod(idpr)

            Dim N_data As New TreeNode
            Dim N As TreeNode
            Dim Find_N() As TreeNode
            Dim N_root As TreeNode

            Dim BrEl As Integer = Tsas.Count - 1
            Dim nEl As Integer
            Dim SifArt As String
            Dim IDart As Integer
            Dim parent_id As Integer

            'insert root
            IDart = Tsas(0).id_pr   'ID proizvoda
            SifArt = Apr.GetSifPr_byID(IDart)   'Sifra proizvoda
            N_data.Name = 0 'Root ID
            N_data.Text = SifArt
            N_data.Tag = IDart.ToString
            Tree.Nodes.Add(N_data)

            Tree.Focus()
            N_root = Tree.SelectedNode

            Try
                For nEl = 0 To BrEl
                    'umetanje elemenata
                    Dim N_data2 As New TreeNode
                    IDart = Tsas(nEl).id_sas_art    'ID artikla
                    SifArt = Asif.GetSifArt_byID(IDart) 'Sifra artikla
                    parent_id = Tsas(nEl).N_parent

                    N_data2.Name = Tsas(nEl).N_child.ToString
                    N_data2.Text = SifArt
                    N_data2.Tag = IDart.ToString

                    If (parent_id = 0) Then 'dodaju se elementi u root
                        N_root.Nodes.Add(N_data2)
                    Else 'traze se djeca i dodaju se
                        Find_N = Tree.Nodes(0).Nodes.Find(parent_id.ToString, True)
                        N = Find_N(0)
                        N.Nodes.Add(N_data2)
                    End If

                Next nEl
            Catch ex As Exception
                ' MessageBox.Show("Doslo je do pogreske prilikom kreiranja prikaza sastavnice.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
            End Try

            Tree.ExpandAll()
        Else
            Tree.Nodes.Clear()
        End If

    End Sub

   

    Private Sub ListBox1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListBox1.SelectedIndexChanged
        Call MakeTree()
        Me.Kolicinska_sastavnicaTableAdapter.Fill(Me.DBDataSet.kolicinska_sastavnica, Convert.ToInt16(id_pr.Text))
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Me.Dispose()
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        'update kolicina
        Dim Asas As New DBDataSetTableAdapters.sastavnicaTableAdapter
        Dim Nchild As Integer = Convert.ToInt16(Tree.SelectedNode.Name)
        Dim idpr As Integer = Convert.ToInt16(id_pr.Text)

        Asas.Update_kolicina(Convert.ToDecimal(txtart_kol.Text), idpr, Nchild)
        'refresh grid
        Me.Kolicinska_sastavnicaTableAdapter.Fill(Me.DBDataSet.kolicinska_sastavnica, Convert.ToInt16(id_pr.Text))
    End Sub
End Class