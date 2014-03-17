<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmSastavnica
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.Button2 = New System.Windows.Forms.Button
        Me.sif_pr = New System.Windows.Forms.Label
        Me.ProizvodBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DBDataSet = New ISP_pp.DBDataSet
        Me.Label5 = New System.Windows.Forms.Label
        Me.ListBox1 = New System.Windows.Forms.ListBox
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.Button4 = New System.Windows.Forms.Button
        Me.txtart_kol = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.Button3 = New System.Windows.Forms.Button
        Me.Tree = New System.Windows.Forms.TreeView
        Me.GroupBox3 = New System.Windows.Forms.GroupBox
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.sif_art = New System.Windows.Forms.Label
        Me.SifarnikBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.Button1 = New System.Windows.Forms.Button
        Me.ListBox2 = New System.Windows.Forms.ListBox
        Me.id_pr = New System.Windows.Forms.Label
        Me.id_art = New System.Windows.Forms.Label
        Me.ProizvodTableAdapter = New ISP_pp.DBDataSetTableAdapters.proizvodTableAdapter
        Me.SifarnikTableAdapter = New ISP_pp.DBDataSetTableAdapters.sifarnikTableAdapter
        Me.GroupBox4 = New System.Windows.Forms.GroupBox
        Me.DataGridView1 = New System.Windows.Forms.DataGridView
        Me.SifartDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.NazivDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.KolicinaDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.MjernaJedinicaDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.KolicinskasastavnicaBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.Kolicinska_sastavnicaTableAdapter = New ISP_pp.DBDataSetTableAdapters.kolicinska_sastavnicaTableAdapter
        Me.Button5 = New System.Windows.Forms.Button
        Me.GroupBox1.SuspendLayout()
        CType(Me.ProizvodBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        CType(Me.SifarnikBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox4.SuspendLayout()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.KolicinskasastavnicaBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Button2)
        Me.GroupBox1.Controls.Add(Me.sif_pr)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.ListBox1)
        Me.GroupBox1.Location = New System.Drawing.Point(1, 0)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(137, 284)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Proizvod"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(6, 254)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(123, 21)
        Me.Button2.TabIndex = 5
        Me.Button2.Text = "Dodaj u sastavnicu >>"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'sif_pr
        '
        Me.sif_pr.AutoSize = True
        Me.sif_pr.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "sif_proiz", True))
        Me.sif_pr.Location = New System.Drawing.Point(48, 232)
        Me.sif_pr.Name = "sif_pr"
        Me.sif_pr.Size = New System.Drawing.Size(21, 13)
        Me.sif_pr.TabIndex = 4
        Me.sif_pr.Text = "XX"
        '
        'ProizvodBindingSource
        '
        Me.ProizvodBindingSource.DataMember = "proizvod"
        Me.ProizvodBindingSource.DataSource = Me.DBDataSet
        '
        'DBDataSet
        '
        Me.DBDataSet.DataSetName = "DBDataSet"
        Me.DBDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(11, 232)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(31, 13)
        Me.Label5.TabIndex = 3
        Me.Label5.Text = "Šifra:"
        '
        'ListBox1
        '
        Me.ListBox1.BackColor = System.Drawing.SystemColors.ScrollBar
        Me.ListBox1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.ListBox1.DataSource = Me.ProizvodBindingSource
        Me.ListBox1.DisplayMember = "naziv"
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(6, 19)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(123, 197)
        Me.ListBox1.TabIndex = 0
        Me.ListBox1.ValueMember = "id_pr"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Button4)
        Me.GroupBox2.Controls.Add(Me.txtart_kol)
        Me.GroupBox2.Controls.Add(Me.Label2)
        Me.GroupBox2.Controls.Add(Me.Button3)
        Me.GroupBox2.Controls.Add(Me.Tree)
        Me.GroupBox2.Location = New System.Drawing.Point(144, 0)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(285, 284)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Sastavnica"
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(132, 252)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(69, 23)
        Me.Button4.TabIndex = 6
        Me.Button4.Text = "Prihvati"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'txtart_kol
        '
        Me.txtart_kol.Location = New System.Drawing.Point(59, 255)
        Me.txtart_kol.Name = "txtart_kol"
        Me.txtart_kol.Size = New System.Drawing.Size(67, 20)
        Me.txtart_kol.TabIndex = 5
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(6, 257)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(47, 13)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Količina:"
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(207, 252)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(69, 23)
        Me.Button3.TabIndex = 1
        Me.Button3.Text = "Obrisi"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Tree
        '
        Me.Tree.Location = New System.Drawing.Point(7, 19)
        Me.Tree.Name = "Tree"
        Me.Tree.Size = New System.Drawing.Size(269, 225)
        Me.Tree.TabIndex = 0
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.TextBox1)
        Me.GroupBox3.Controls.Add(Me.sif_art)
        Me.GroupBox3.Controls.Add(Me.Label3)
        Me.GroupBox3.Controls.Add(Me.Label1)
        Me.GroupBox3.Controls.Add(Me.Button1)
        Me.GroupBox3.Controls.Add(Me.ListBox2)
        Me.GroupBox3.Location = New System.Drawing.Point(435, 0)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(137, 284)
        Me.GroupBox3.TabIndex = 0
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Šifarnik"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(65, 228)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(66, 20)
        Me.TextBox1.TabIndex = 3
        '
        'sif_art
        '
        Me.sif_art.AutoSize = True
        Me.sif_art.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "sif_art", True))
        Me.sif_art.Location = New System.Drawing.Point(49, 211)
        Me.sif_art.Name = "sif_art"
        Me.sif_art.Size = New System.Drawing.Size(21, 13)
        Me.sif_art.TabIndex = 2
        Me.sif_art.Text = "XX"
        '
        'SifarnikBindingSource
        '
        Me.SifarnikBindingSource.DataMember = "sifarnik"
        Me.SifarnikBindingSource.DataSource = Me.DBDataSet
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(12, 231)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(47, 13)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "Količina:"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(12, 211)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(31, 13)
        Me.Label1.TabIndex = 2
        Me.Label1.Text = "Šifra:"
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(8, 253)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(123, 22)
        Me.Button1.TabIndex = 1
        Me.Button1.Text = "<< Dodaj u sastavnicu"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'ListBox2
        '
        Me.ListBox2.BackColor = System.Drawing.SystemColors.ScrollBar
        Me.ListBox2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.ListBox2.DataSource = Me.SifarnikBindingSource
        Me.ListBox2.DisplayMember = "naziv"
        Me.ListBox2.FormattingEnabled = True
        Me.ListBox2.Location = New System.Drawing.Point(8, 19)
        Me.ListBox2.Name = "ListBox2"
        Me.ListBox2.Size = New System.Drawing.Size(123, 184)
        Me.ListBox2.TabIndex = 0
        Me.ListBox2.ValueMember = "id_art"
        '
        'id_pr
        '
        Me.id_pr.AutoSize = True
        Me.id_pr.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "id_pr", True))
        Me.id_pr.Location = New System.Drawing.Point(13, 462)
        Me.id_pr.Name = "id_pr"
        Me.id_pr.Size = New System.Drawing.Size(30, 13)
        Me.id_pr.TabIndex = 2
        Me.id_pr.Text = "id_pr"
        '
        'id_art
        '
        Me.id_art.AutoSize = True
        Me.id_art.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "id_art", True))
        Me.id_art.Location = New System.Drawing.Point(71, 462)
        Me.id_art.Name = "id_art"
        Me.id_art.Size = New System.Drawing.Size(33, 13)
        Me.id_art.TabIndex = 2
        Me.id_art.Text = "id_art"
        '
        'ProizvodTableAdapter
        '
        Me.ProizvodTableAdapter.ClearBeforeFill = True
        '
        'SifarnikTableAdapter
        '
        Me.SifarnikTableAdapter.ClearBeforeFill = True
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.DataGridView1)
        Me.GroupBox4.Location = New System.Drawing.Point(1, 290)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(571, 130)
        Me.GroupBox4.TabIndex = 3
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Količinska sastavnica"
        '
        'DataGridView1
        '
        Me.DataGridView1.AllowUserToAddRows = False
        Me.DataGridView1.AllowUserToDeleteRows = False
        Me.DataGridView1.AutoGenerateColumns = False
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.SifartDataGridViewTextBoxColumn, Me.NazivDataGridViewTextBoxColumn, Me.KolicinaDataGridViewTextBoxColumn, Me.MjernaJedinicaDataGridViewTextBoxColumn})
        Me.DataGridView1.DataSource = Me.KolicinskasastavnicaBindingSource
        Me.DataGridView1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.DataGridView1.Location = New System.Drawing.Point(3, 16)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.ReadOnly = True
        Me.DataGridView1.RowHeadersWidth = 20
        Me.DataGridView1.Size = New System.Drawing.Size(565, 111)
        Me.DataGridView1.TabIndex = 2
        '
        'SifartDataGridViewTextBoxColumn
        '
        Me.SifartDataGridViewTextBoxColumn.DataPropertyName = "sif_art"
        Me.SifartDataGridViewTextBoxColumn.HeaderText = "Sifra artikla"
        Me.SifartDataGridViewTextBoxColumn.Name = "SifartDataGridViewTextBoxColumn"
        Me.SifartDataGridViewTextBoxColumn.ReadOnly = True
        '
        'NazivDataGridViewTextBoxColumn
        '
        Me.NazivDataGridViewTextBoxColumn.DataPropertyName = "naziv"
        Me.NazivDataGridViewTextBoxColumn.HeaderText = "Naziv"
        Me.NazivDataGridViewTextBoxColumn.Name = "NazivDataGridViewTextBoxColumn"
        Me.NazivDataGridViewTextBoxColumn.ReadOnly = True
        Me.NazivDataGridViewTextBoxColumn.Width = 200
        '
        'KolicinaDataGridViewTextBoxColumn
        '
        Me.KolicinaDataGridViewTextBoxColumn.DataPropertyName = "Kolicina"
        Me.KolicinaDataGridViewTextBoxColumn.HeaderText = "Kolicina"
        Me.KolicinaDataGridViewTextBoxColumn.Name = "KolicinaDataGridViewTextBoxColumn"
        Me.KolicinaDataGridViewTextBoxColumn.ReadOnly = True
        Me.KolicinaDataGridViewTextBoxColumn.Width = 70
        '
        'MjernaJedinicaDataGridViewTextBoxColumn
        '
        Me.MjernaJedinicaDataGridViewTextBoxColumn.DataPropertyName = "Mjerna jedinica"
        Me.MjernaJedinicaDataGridViewTextBoxColumn.HeaderText = "Mjerna jedinica"
        Me.MjernaJedinicaDataGridViewTextBoxColumn.Name = "MjernaJedinicaDataGridViewTextBoxColumn"
        Me.MjernaJedinicaDataGridViewTextBoxColumn.ReadOnly = True
        Me.MjernaJedinicaDataGridViewTextBoxColumn.Width = 120
        '
        'KolicinskasastavnicaBindingSource
        '
        Me.KolicinskasastavnicaBindingSource.DataMember = "kolicinska_sastavnica"
        Me.KolicinskasastavnicaBindingSource.DataSource = Me.DBDataSet
        '
        'Kolicinska_sastavnicaTableAdapter
        '
        Me.Kolicinska_sastavnicaTableAdapter.ClearBeforeFill = True
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(454, 426)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(108, 26)
        Me.Button5.TabIndex = 4
        Me.Button5.Text = "Zatvori"
        Me.Button5.UseVisualStyleBackColor = True
        '
        'frmSastavnica
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(574, 455)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.GroupBox4)
        Me.Controls.Add(Me.id_art)
        Me.Controls.Add(Me.id_pr)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.GroupBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmSastavnica"
        Me.Text = "Sastavnica"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.ProizvodBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        CType(Me.SifarnikBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox4.ResumeLayout(False)
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.KolicinskasastavnicaBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents ListBox1 As System.Windows.Forms.ListBox
    Friend WithEvents DBDataSet As ISP_pp.DBDataSet
    Friend WithEvents ProizvodBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents ProizvodTableAdapter As ISP_pp.DBDataSetTableAdapters.proizvodTableAdapter
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents ListBox2 As System.Windows.Forms.ListBox
    Friend WithEvents SifarnikBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents SifarnikTableAdapter As ISP_pp.DBDataSetTableAdapters.sifarnikTableAdapter
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents sif_art As System.Windows.Forms.Label
    Friend WithEvents sif_pr As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Tree As System.Windows.Forms.TreeView
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents id_pr As System.Windows.Forms.Label
    Friend WithEvents id_art As System.Windows.Forms.Label
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents txtart_kol As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents Naziv1DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents KolicinskasastavnicaBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents Kolicinska_sastavnicaTableAdapter As ISP_pp.DBDataSetTableAdapters.kolicinska_sastavnicaTableAdapter
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents DataGridView1 As System.Windows.Forms.DataGridView
    Friend WithEvents SifartDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents NazivDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents KolicinaDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents MjernaJedinicaDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
End Class
