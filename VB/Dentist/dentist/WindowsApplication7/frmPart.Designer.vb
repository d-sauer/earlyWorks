<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmPart
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
        Me.btnAdd = New System.Windows.Forms.Button
        Me.btnChange = New System.Windows.Forms.Button
        Me.btnDel = New System.Windows.Forms.Button
        Me.btnClose = New System.Windows.Forms.Button
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.txtPart = New System.Windows.Forms.TextBox
        Me.PartBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DentistDataSet = New WindowsApplication7.dentistDataSet
        Me.txtStatus = New System.Windows.Forms.TextBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.dbGridPart = New System.Windows.Forms.DataGridView
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.PartTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.partTableAdapter
        Me.IdpartDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.StatusDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.PartDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.GroupBox1.SuspendLayout()
        CType(Me.PartBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dbGridPart, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'btnAdd
        '
        Me.btnAdd.Location = New System.Drawing.Point(98, 218)
        Me.btnAdd.Name = "btnAdd"
        Me.btnAdd.Size = New System.Drawing.Size(86, 25)
        Me.btnAdd.TabIndex = 9
        Me.btnAdd.Text = "Novi"
        Me.btnAdd.UseVisualStyleBackColor = True
        '
        'btnChange
        '
        Me.btnChange.Location = New System.Drawing.Point(190, 218)
        Me.btnChange.Name = "btnChange"
        Me.btnChange.Size = New System.Drawing.Size(86, 25)
        Me.btnChange.TabIndex = 10
        Me.btnChange.Text = "Prihvati"
        Me.btnChange.UseVisualStyleBackColor = True
        '
        'btnDel
        '
        Me.btnDel.Location = New System.Drawing.Point(282, 218)
        Me.btnDel.Name = "btnDel"
        Me.btnDel.Size = New System.Drawing.Size(86, 25)
        Me.btnDel.TabIndex = 11
        Me.btnDel.Text = "Obrisi"
        Me.btnDel.UseVisualStyleBackColor = True
        '
        'btnClose
        '
        Me.btnClose.Location = New System.Drawing.Point(374, 218)
        Me.btnClose.Name = "btnClose"
        Me.btnClose.Size = New System.Drawing.Size(86, 25)
        Me.btnClose.TabIndex = 12
        Me.btnClose.Text = "Zatvori"
        Me.btnClose.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.txtPart)
        Me.GroupBox1.Controls.Add(Me.txtStatus)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.dbGridPart)
        Me.GroupBox1.Location = New System.Drawing.Point(86, 0)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(374, 212)
        Me.GroupBox1.TabIndex = 8
        Me.GroupBox1.TabStop = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(9, 47)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(114, 13)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Postotak participacije: "
        '
        'txtPart
        '
        Me.txtPart.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.PartBindingSource, "part", True))
        Me.txtPart.Location = New System.Drawing.Point(129, 44)
        Me.txtPart.MaxLength = 10
        Me.txtPart.Name = "txtPart"
        Me.txtPart.Size = New System.Drawing.Size(100, 20)
        Me.txtPart.TabIndex = 4
        '
        'PartBindingSource
        '
        Me.PartBindingSource.DataMember = "part"
        Me.PartBindingSource.DataSource = Me.DentistDataSet
        '
        'DentistDataSet
        '
        Me.DentistDataSet.DataSetName = "dentistDataSet"
        Me.DentistDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'txtStatus
        '
        Me.txtStatus.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.PartBindingSource, "status", True))
        Me.txtStatus.Location = New System.Drawing.Point(77, 13)
        Me.txtStatus.MaxLength = 30
        Me.txtStatus.Name = "txtStatus"
        Me.txtStatus.Size = New System.Drawing.Size(289, 20)
        Me.txtStatus.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(6, 16)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(70, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Participacija: "
        '
        'dbGridPart
        '
        Me.dbGridPart.AllowUserToAddRows = False
        Me.dbGridPart.AllowUserToDeleteRows = False
        Me.dbGridPart.AutoGenerateColumns = False
        Me.dbGridPart.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dbGridPart.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdpartDataGridViewTextBoxColumn, Me.StatusDataGridViewTextBoxColumn, Me.PartDataGridViewTextBoxColumn})
        Me.dbGridPart.DataSource = Me.PartBindingSource
        Me.dbGridPart.Dock = System.Windows.Forms.DockStyle.Bottom
        Me.dbGridPart.Location = New System.Drawing.Point(3, 77)
        Me.dbGridPart.Margin = New System.Windows.Forms.Padding(10)
        Me.dbGridPart.MultiSelect = False
        Me.dbGridPart.Name = "dbGridPart"
        Me.dbGridPart.ReadOnly = True
        Me.dbGridPart.RowHeadersWidth = 25
        Me.dbGridPart.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dbGridPart.Size = New System.Drawing.Size(368, 132)
        Me.dbGridPart.TabIndex = 6
        '
        'PictureBox1
        '
        Me.PictureBox1.Dock = System.Windows.Forms.DockStyle.Left
        Me.PictureBox1.Image = Global.WindowsApplication7.My.Resources.Resources.participacija
        Me.PictureBox1.Location = New System.Drawing.Point(0, 0)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(80, 243)
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'PartTableAdapter
        '
        Me.PartTableAdapter.ClearBeforeFill = True
        '
        'IdpartDataGridViewTextBoxColumn
        '
        Me.IdpartDataGridViewTextBoxColumn.DataPropertyName = "id_part"
        Me.IdpartDataGridViewTextBoxColumn.HeaderText = "ID"
        Me.IdpartDataGridViewTextBoxColumn.Name = "IdpartDataGridViewTextBoxColumn"
        Me.IdpartDataGridViewTextBoxColumn.ReadOnly = True
        Me.IdpartDataGridViewTextBoxColumn.Visible = False
        '
        'StatusDataGridViewTextBoxColumn
        '
        Me.StatusDataGridViewTextBoxColumn.DataPropertyName = "status"
        Me.StatusDataGridViewTextBoxColumn.HeaderText = "Participacija"
        Me.StatusDataGridViewTextBoxColumn.Name = "StatusDataGridViewTextBoxColumn"
        Me.StatusDataGridViewTextBoxColumn.ReadOnly = True
        Me.StatusDataGridViewTextBoxColumn.Width = 150
        '
        'PartDataGridViewTextBoxColumn
        '
        Me.PartDataGridViewTextBoxColumn.DataPropertyName = "part"
        Me.PartDataGridViewTextBoxColumn.HeaderText = "Postotak"
        Me.PartDataGridViewTextBoxColumn.Name = "PartDataGridViewTextBoxColumn"
        Me.PartDataGridViewTextBoxColumn.ReadOnly = True
        Me.PartDataGridViewTextBoxColumn.Width = 80
        '
        'frmPart
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(462, 243)
        Me.Controls.Add(Me.btnAdd)
        Me.Controls.Add(Me.btnChange)
        Me.Controls.Add(Me.btnDel)
        Me.Controls.Add(Me.btnClose)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.PictureBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmPart"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Participacije"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.PartBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dbGridPart, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents btnAdd As System.Windows.Forms.Button
    Friend WithEvents btnChange As System.Windows.Forms.Button
    Friend WithEvents btnDel As System.Windows.Forms.Button
    Friend WithEvents btnClose As System.Windows.Forms.Button
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtPart As System.Windows.Forms.TextBox
    Friend WithEvents txtStatus As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents dbGridPart As System.Windows.Forms.DataGridView
    Friend WithEvents DentistDataSet As WindowsApplication7.dentistDataSet
    Friend WithEvents PartBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents PartTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.partTableAdapter
    Friend WithEvents IdpartDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents StatusDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents PartDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
End Class
