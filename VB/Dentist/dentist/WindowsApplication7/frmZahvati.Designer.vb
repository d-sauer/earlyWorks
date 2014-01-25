<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmZahvati
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
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
        Me.Label2 = New System.Windows.Forms.Label
        Me.txtCijena = New System.Windows.Forms.TextBox
        Me.ZahvatiBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DentistDataSet = New WindowsApplication7.dentistDataSet
        Me.txtZahvat = New System.Windows.Forms.TextBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.dbGridZahvati = New System.Windows.Forms.DataGridView
        Me.btnClose = New System.Windows.Forms.Button
        Me.btnDel = New System.Windows.Forms.Button
        Me.btnChange = New System.Windows.Forms.Button
        Me.btnAdd = New System.Windows.Forms.Button
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.ZahvatiTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.zahvatiTableAdapter
        Me.IdzahDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.ZahvatDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.CijenaDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.GroupBox1.SuspendLayout()
        CType(Me.ZahvatiBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dbGridZahvati, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.txtCijena)
        Me.GroupBox1.Controls.Add(Me.txtZahvat)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.dbGridZahvati)
        Me.GroupBox1.Location = New System.Drawing.Point(87, -2)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(374, 212)
        Me.GroupBox1.TabIndex = 1
        Me.GroupBox1.TabStop = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(9, 47)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(39, 13)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Cijena:"
        '
        'txtCijena
        '
        Me.txtCijena.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ZahvatiBindingSource, "cijena", True))
        Me.txtCijena.Location = New System.Drawing.Point(56, 44)
        Me.txtCijena.MaxLength = 10
        Me.txtCijena.Name = "txtCijena"
        Me.txtCijena.Size = New System.Drawing.Size(100, 20)
        Me.txtCijena.TabIndex = 4
        '
        'ZahvatiBindingSource
        '
        Me.ZahvatiBindingSource.DataMember = "zahvati"
        Me.ZahvatiBindingSource.DataSource = Me.DentistDataSet
        '
        'DentistDataSet
        '
        Me.DentistDataSet.DataSetName = "dentistDataSet"
        Me.DentistDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'txtZahvat
        '
        Me.txtZahvat.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ZahvatiBindingSource, "zahvat", True))
        Me.txtZahvat.Location = New System.Drawing.Point(56, 13)
        Me.txtZahvat.MaxLength = 30
        Me.txtZahvat.Name = "txtZahvat"
        Me.txtZahvat.Size = New System.Drawing.Size(310, 20)
        Me.txtZahvat.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(6, 16)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(44, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Zahvat:"
        '
        'dbGridZahvati
        '
        Me.dbGridZahvati.AllowUserToAddRows = False
        Me.dbGridZahvati.AllowUserToDeleteRows = False
        Me.dbGridZahvati.AutoGenerateColumns = False
        Me.dbGridZahvati.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dbGridZahvati.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdzahDataGridViewTextBoxColumn, Me.ZahvatDataGridViewTextBoxColumn, Me.CijenaDataGridViewTextBoxColumn})
        Me.dbGridZahvati.DataSource = Me.ZahvatiBindingSource
        Me.dbGridZahvati.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.dbGridZahvati.Location = New System.Drawing.Point(3, 77)
        Me.dbGridZahvati.Margin = New System.Windows.Forms.Padding(10)
        Me.dbGridZahvati.MultiSelect = False
        Me.dbGridZahvati.Name = "dbGridZahvati"
        Me.dbGridZahvati.ReadOnly = True
        Me.dbGridZahvati.RowHeadersWidth = 25
        Me.dbGridZahvati.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dbGridZahvati.Size = New System.Drawing.Size(368, 132)
        Me.dbGridZahvati.TabIndex = 6
        '
        'btnClose
        '
        Me.btnClose.Location = New System.Drawing.Point(375, 216)
        Me.btnClose.Name = "btnClose"
        Me.btnClose.Size = New System.Drawing.Size(86, 25)
        Me.btnClose.TabIndex = 7
        Me.btnClose.Text = "Zatvori"
        Me.btnClose.UseVisualStyleBackColor = True
        '
        'btnDel
        '
        Me.btnDel.Location = New System.Drawing.Point(283, 216)
        Me.btnDel.Name = "btnDel"
        Me.btnDel.Size = New System.Drawing.Size(86, 25)
        Me.btnDel.TabIndex = 5
        Me.btnDel.Text = "Obrisi"
        Me.btnDel.UseVisualStyleBackColor = True
        '
        'btnChange
        '
        Me.btnChange.Location = New System.Drawing.Point(191, 216)
        Me.btnChange.Name = "btnChange"
        Me.btnChange.Size = New System.Drawing.Size(86, 25)
        Me.btnChange.TabIndex = 4
        Me.btnChange.Text = "Prihvati"
        Me.btnChange.UseVisualStyleBackColor = True
        '
        'btnAdd
        '
        Me.btnAdd.Location = New System.Drawing.Point(99, 216)
        Me.btnAdd.Name = "btnAdd"
        Me.btnAdd.Size = New System.Drawing.Size(86, 25)
        Me.btnAdd.TabIndex = 3
        Me.btnAdd.Text = "Novi"
        Me.btnAdd.UseVisualStyleBackColor = True
        '
        'PictureBox1
        '
        Me.PictureBox1.Dock = System.Windows.Forms.DockStyle.Left
        Me.PictureBox1.Image = Global.WindowsApplication7.My.Resources.Resources.zahvati
        Me.PictureBox1.Location = New System.Drawing.Point(0, 0)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(80, 243)
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'ZahvatiTableAdapter
        '
        Me.ZahvatiTableAdapter.ClearBeforeFill = True
        '
        'IdzahDataGridViewTextBoxColumn
        '
        Me.IdzahDataGridViewTextBoxColumn.DataPropertyName = "id_zah"
        Me.IdzahDataGridViewTextBoxColumn.HeaderText = "id_zah"
        Me.IdzahDataGridViewTextBoxColumn.Name = "IdzahDataGridViewTextBoxColumn"
        Me.IdzahDataGridViewTextBoxColumn.ReadOnly = True
        Me.IdzahDataGridViewTextBoxColumn.Visible = False
        '
        'ZahvatDataGridViewTextBoxColumn
        '
        Me.ZahvatDataGridViewTextBoxColumn.DataPropertyName = "zahvat"
        Me.ZahvatDataGridViewTextBoxColumn.HeaderText = "zahvat"
        Me.ZahvatDataGridViewTextBoxColumn.Name = "ZahvatDataGridViewTextBoxColumn"
        Me.ZahvatDataGridViewTextBoxColumn.ReadOnly = True
        '
        'CijenaDataGridViewTextBoxColumn
        '
        Me.CijenaDataGridViewTextBoxColumn.DataPropertyName = "cijena"
        Me.CijenaDataGridViewTextBoxColumn.HeaderText = "cijena"
        Me.CijenaDataGridViewTextBoxColumn.Name = "CijenaDataGridViewTextBoxColumn"
        Me.CijenaDataGridViewTextBoxColumn.ReadOnly = True
        '
        'frmZahvati
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(464, 243)
        Me.Controls.Add(Me.btnAdd)
        Me.Controls.Add(Me.btnChange)
        Me.Controls.Add(Me.btnDel)
        Me.Controls.Add(Me.btnClose)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.PictureBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmZahvati"
        Me.Text = "Ljecnicki zahvati"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.ZahvatiBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dbGridZahvati, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents btnClose As System.Windows.Forms.Button
    Friend WithEvents btnDel As System.Windows.Forms.Button
    Friend WithEvents btnChange As System.Windows.Forms.Button
    Friend WithEvents dbGridZahvati As System.Windows.Forms.DataGridView
    Friend WithEvents DentistDataSet As WindowsApplication7.dentistDataSet
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtCijena As System.Windows.Forms.TextBox
    Friend WithEvents txtZahvat As System.Windows.Forms.TextBox
    Friend WithEvents btnAdd As System.Windows.Forms.Button
    Friend WithEvents ZahvatiBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents ZahvatiTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.zahvatiTableAdapter
    Friend WithEvents IdzahDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ZahvatDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents CijenaDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
End Class
