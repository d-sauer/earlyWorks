<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmCRP
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
        Me.Button1 = New System.Windows.Forms.Button
        Me.TabControl1 = New System.Windows.Forms.TabControl
        Me.TabPage1 = New System.Windows.Forms.TabPage
        Me.ListV = New System.Windows.Forms.ListView
        Me.TabPage2 = New System.Windows.Forms.TabPage
        Me.DataGridView1 = New System.Windows.Forms.DataGridView
        Me.IdradnalDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.id_pr = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.VrijemezavrDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.VrijemeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.PraznihodDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.PocetakDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.ZavrsetakDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.SkladistenoDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.RokoviBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DBDataSet = New ISP_pp.DBDataSet
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.Button3 = New System.Windows.Forms.Button
        Me.Label8 = New System.Windows.Forms.Label
        Me.txt_sat = New System.Windows.Forms.TextBox
        Me.txt_dan = New System.Windows.Forms.TextBox
        Me.txt_tjed = New System.Windows.Forms.TextBox
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label19 = New System.Windows.Forms.Label
        Me.lbl_IDpr = New System.Windows.Forms.Label
        Me.Label18 = New System.Windows.Forms.Label
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.Label20 = New System.Windows.Forms.Label
        Me.Label7 = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label17 = New System.Windows.Forms.Label
        Me.Label16 = New System.Windows.Forms.Label
        Me.Label10 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label12 = New System.Windows.Forms.Label
        Me.Label15 = New System.Windows.Forms.Label
        Me.Label13 = New System.Windows.Forms.Label
        Me.Label11 = New System.Windows.Forms.Label
        Me.Label9 = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.Button2 = New System.Windows.Forms.Button
        Me.Button4 = New System.Windows.Forms.Button
        Me.RokoviTableAdapter = New ISP_pp.DBDataSetTableAdapters.rokoviTableAdapter
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.TabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.RokoviBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(469, 390)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(69, 22)
        Me.Button1.TabIndex = 1
        Me.Button1.Text = "Zatvori"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Location = New System.Drawing.Point(1, 1)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(541, 237)
        Me.TabControl1.TabIndex = 2
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.ListV)
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(533, 211)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "Radni nalozi iz MRP-a"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'ListV
        '
        Me.ListV.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ListV.FullRowSelect = True
        Me.ListV.GridLines = True
        Me.ListV.Location = New System.Drawing.Point(3, 3)
        Me.ListV.MultiSelect = False
        Me.ListV.Name = "ListV"
        Me.ListV.ShowItemToolTips = True
        Me.ListV.Size = New System.Drawing.Size(527, 205)
        Me.ListV.TabIndex = 1
        Me.ListV.UseCompatibleStateImageBehavior = False
        Me.ListV.View = System.Windows.Forms.View.Details
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.DataGridView1)
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(533, 211)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "Kreirani radni nalozi"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'DataGridView1
        '
        Me.DataGridView1.AllowUserToAddRows = False
        Me.DataGridView1.AllowUserToDeleteRows = False
        Me.DataGridView1.AutoGenerateColumns = False
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdradnalDataGridViewTextBoxColumn, Me.id_pr, Me.VrijemezavrDataGridViewTextBoxColumn, Me.VrijemeDataGridViewTextBoxColumn, Me.PraznihodDataGridViewTextBoxColumn, Me.PocetakDataGridViewTextBoxColumn, Me.ZavrsetakDataGridViewTextBoxColumn, Me.SkladistenoDataGridViewTextBoxColumn})
        Me.DataGridView1.DataSource = Me.RokoviBindingSource
        Me.DataGridView1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.DataGridView1.Location = New System.Drawing.Point(3, 3)
        Me.DataGridView1.MultiSelect = False
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.ReadOnly = True
        Me.DataGridView1.RowHeadersWidth = 20
        Me.DataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DataGridView1.Size = New System.Drawing.Size(527, 205)
        Me.DataGridView1.TabIndex = 0
        '
        'IdradnalDataGridViewTextBoxColumn
        '
        Me.IdradnalDataGridViewTextBoxColumn.DataPropertyName = "id_rad_nal"
        Me.IdradnalDataGridViewTextBoxColumn.HeaderText = "ID rad. naloga"
        Me.IdradnalDataGridViewTextBoxColumn.Name = "IdradnalDataGridViewTextBoxColumn"
        Me.IdradnalDataGridViewTextBoxColumn.ReadOnly = True
        '
        'id_pr
        '
        Me.id_pr.DataPropertyName = "id_pr"
        Me.id_pr.HeaderText = "id_pr"
        Me.id_pr.Name = "id_pr"
        Me.id_pr.ReadOnly = True
        Me.id_pr.Visible = False
        '
        'VrijemezavrDataGridViewTextBoxColumn
        '
        Me.VrijemezavrDataGridViewTextBoxColumn.DataPropertyName = "vrijeme_zavr"
        Me.VrijemezavrDataGridViewTextBoxColumn.HeaderText = "Vrijeme završetka"
        Me.VrijemezavrDataGridViewTextBoxColumn.Name = "VrijemezavrDataGridViewTextBoxColumn"
        Me.VrijemezavrDataGridViewTextBoxColumn.ReadOnly = True
        '
        'VrijemeDataGridViewTextBoxColumn
        '
        Me.VrijemeDataGridViewTextBoxColumn.DataPropertyName = "vrijeme"
        Me.VrijemeDataGridViewTextBoxColumn.HeaderText = "Vrijeme trajanja"
        Me.VrijemeDataGridViewTextBoxColumn.Name = "VrijemeDataGridViewTextBoxColumn"
        Me.VrijemeDataGridViewTextBoxColumn.ReadOnly = True
        '
        'PraznihodDataGridViewTextBoxColumn
        '
        Me.PraznihodDataGridViewTextBoxColumn.DataPropertyName = "prazni_hod"
        Me.PraznihodDataGridViewTextBoxColumn.HeaderText = "Prazni hod"
        Me.PraznihodDataGridViewTextBoxColumn.Name = "PraznihodDataGridViewTextBoxColumn"
        Me.PraznihodDataGridViewTextBoxColumn.ReadOnly = True
        '
        'PocetakDataGridViewTextBoxColumn
        '
        Me.PocetakDataGridViewTextBoxColumn.DataPropertyName = "pocetak"
        Me.PocetakDataGridViewTextBoxColumn.HeaderText = "Pocetak (tjedan/dan/sat)"
        Me.PocetakDataGridViewTextBoxColumn.Name = "PocetakDataGridViewTextBoxColumn"
        Me.PocetakDataGridViewTextBoxColumn.ReadOnly = True
        '
        'ZavrsetakDataGridViewTextBoxColumn
        '
        Me.ZavrsetakDataGridViewTextBoxColumn.DataPropertyName = "zavrsetak"
        Me.ZavrsetakDataGridViewTextBoxColumn.HeaderText = "Zavrsetak (tjedan/dan/sat)"
        Me.ZavrsetakDataGridViewTextBoxColumn.Name = "ZavrsetakDataGridViewTextBoxColumn"
        Me.ZavrsetakDataGridViewTextBoxColumn.ReadOnly = True
        '
        'SkladistenoDataGridViewTextBoxColumn
        '
        Me.SkladistenoDataGridViewTextBoxColumn.DataPropertyName = "skladisteno"
        Me.SkladistenoDataGridViewTextBoxColumn.HeaderText = "Skladisteno (tjedan/dan/sat)"
        Me.SkladistenoDataGridViewTextBoxColumn.Name = "SkladistenoDataGridViewTextBoxColumn"
        Me.SkladistenoDataGridViewTextBoxColumn.ReadOnly = True
        '
        'RokoviBindingSource
        '
        Me.RokoviBindingSource.DataMember = "rokovi"
        Me.RokoviBindingSource.DataSource = Me.DBDataSet
        '
        'DBDataSet
        '
        Me.DBDataSet.DataSetName = "DBDataSet"
        Me.DBDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Button3)
        Me.GroupBox1.Controls.Add(Me.Label8)
        Me.GroupBox1.Controls.Add(Me.txt_sat)
        Me.GroupBox1.Controls.Add(Me.txt_dan)
        Me.GroupBox1.Controls.Add(Me.txt_tjed)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.Label19)
        Me.GroupBox1.Controls.Add(Me.lbl_IDpr)
        Me.GroupBox1.Controls.Add(Me.Label18)
        Me.GroupBox1.Controls.Add(Me.TextBox1)
        Me.GroupBox1.Controls.Add(Me.Label20)
        Me.GroupBox1.Controls.Add(Me.Label7)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label17)
        Me.GroupBox1.Controls.Add(Me.Label16)
        Me.GroupBox1.Controls.Add(Me.Label10)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label12)
        Me.GroupBox1.Controls.Add(Me.Label15)
        Me.GroupBox1.Controls.Add(Me.Label13)
        Me.GroupBox1.Controls.Add(Me.Label11)
        Me.GroupBox1.Controls.Add(Me.Label9)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Location = New System.Drawing.Point(1, 244)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(541, 140)
        Me.GroupBox1.TabIndex = 3
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Radni nalog"
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(389, 114)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(62, 24)
        Me.Button3.TabIndex = 15
        Me.Button3.Text = "Izracunaj"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RokoviBindingSource, "skladisteno", True))
        Me.Label8.Location = New System.Drawing.Point(456, 114)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(22, 13)
        Me.Label8.TabIndex = 14
        Me.Label8.Text = "xxx"
        '
        'txt_sat
        '
        Me.txt_sat.Location = New System.Drawing.Point(502, 91)
        Me.txt_sat.MaxLength = 2
        Me.txt_sat.Name = "txt_sat"
        Me.txt_sat.Size = New System.Drawing.Size(22, 20)
        Me.txt_sat.TabIndex = 12
        '
        'txt_dan
        '
        Me.txt_dan.Location = New System.Drawing.Point(479, 91)
        Me.txt_dan.MaxLength = 2
        Me.txt_dan.Name = "txt_dan"
        Me.txt_dan.Size = New System.Drawing.Size(22, 20)
        Me.txt_dan.TabIndex = 11
        '
        'txt_tjed
        '
        Me.txt_tjed.Location = New System.Drawing.Point(456, 91)
        Me.txt_tjed.MaxLength = 2
        Me.txt_tjed.Name = "txt_tjed"
        Me.txt_tjed.Size = New System.Drawing.Size(22, 20)
        Me.txt_tjed.TabIndex = 10
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(141, 94)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(36, 13)
        Me.Label6.TabIndex = 9
        Me.Label6.Text = "tjedan"
        '
        'Label19
        '
        Me.Label19.AutoSize = True
        Me.Label19.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RokoviBindingSource, "vrijeme_zavr", True))
        Me.Label19.Location = New System.Drawing.Point(113, 94)
        Me.Label19.Name = "Label19"
        Me.Label19.Size = New System.Drawing.Size(22, 13)
        Me.Label19.TabIndex = 8
        Me.Label19.Text = "xxx"
        '
        'lbl_IDpr
        '
        Me.lbl_IDpr.AutoSize = True
        Me.lbl_IDpr.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RokoviBindingSource, "id_pr", True))
        Me.lbl_IDpr.Location = New System.Drawing.Point(560, 36)
        Me.lbl_IDpr.Name = "lbl_IDpr"
        Me.lbl_IDpr.Size = New System.Drawing.Size(28, 13)
        Me.lbl_IDpr.TabIndex = 7
        Me.lbl_IDpr.Text = "lblID"
        '
        'Label18
        '
        Me.Label18.AutoSize = True
        Me.Label18.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(238, Byte))
        Me.Label18.Location = New System.Drawing.Point(14, 21)
        Me.Label18.Name = "Label18"
        Me.Label18.Size = New System.Drawing.Size(39, 13)
        Me.Label18.TabIndex = 6
        Me.Label18.Text = "YYYY"
        '
        'TextBox1
        '
        Me.TextBox1.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RokoviBindingSource, "prazni_hod", True))
        Me.TextBox1.Location = New System.Drawing.Point(301, 91)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(45, 20)
        Me.TextBox1.TabIndex = 5
        Me.TextBox1.Text = "1,0"
        '
        'Label20
        '
        Me.Label20.AutoSize = True
        Me.Label20.Location = New System.Drawing.Point(295, 48)
        Me.Label20.Name = "Label20"
        Me.Label20.Size = New System.Drawing.Size(38, 13)
        Me.Label20.TabIndex = 4
        Me.Label20.Text = "xx xxx "
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(212, 48)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(75, 13)
        Me.Label7.TabIndex = 3
        Me.Label7.Text = "Radno mjesto:"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(14, 94)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(93, 13)
        Me.Label5.TabIndex = 3
        Me.Label5.Text = "Vrijeme završetka:"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(113, 71)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(27, 13)
        Me.Label4.TabIndex = 2
        Me.Label4.Text = "xxxx"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(14, 71)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(47, 13)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "Količina:"
        '
        'Label17
        '
        Me.Label17.AutoSize = True
        Me.Label17.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RokoviBindingSource, "pocetak", True))
        Me.Label17.Location = New System.Drawing.Point(455, 48)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(22, 13)
        Me.Label17.TabIndex = 1
        Me.Label17.Text = "xxx"
        '
        'Label16
        '
        Me.Label16.AutoSize = True
        Me.Label16.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RokoviBindingSource, "zavrsetak", True))
        Me.Label16.Location = New System.Drawing.Point(457, 72)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(22, 13)
        Me.Label16.TabIndex = 1
        Me.Label16.Text = "xxx"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RokoviBindingSource, "vrijeme", True))
        Me.Label10.Location = New System.Drawing.Point(295, 71)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(22, 13)
        Me.Label10.TabIndex = 1
        Me.Label10.Text = "xxx"
        Me.ToolTip1.SetToolTip(Me.Label10, "MRP (planirani nalozi) * jedinična mjera")
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RokoviBindingSource, "id_rad_nal", True))
        Me.Label2.Location = New System.Drawing.Point(113, 48)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(22, 13)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "xxx"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(386, 94)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(65, 13)
        Me.Label12.TabIndex = 0
        Me.Label12.Text = "Skladišteno:"
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Location = New System.Drawing.Point(386, 72)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(58, 13)
        Me.Label15.TabIndex = 0
        Me.Label15.Text = "Završetak:"
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(386, 48)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(50, 13)
        Me.Label13.TabIndex = 0
        Me.Label13.Text = "Početak:"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(212, 94)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(60, 13)
        Me.Label11.TabIndex = 0
        Me.Label11.Text = "Prazni hod:"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(212, 71)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(44, 13)
        Me.Label9.TabIndex = 0
        Me.Label9.Text = "Vrijeme:"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(14, 48)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(79, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Radni nalog: br"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(5, 390)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(106, 22)
        Me.Button2.TabIndex = 4
        Me.Button2.Text = "Kreiraj radni nalog"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(117, 390)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(106, 22)
        Me.Button4.TabIndex = 4
        Me.Button4.Text = "Obriši radni nalog"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'RokoviTableAdapter
        '
        Me.RokoviTableAdapter.ClearBeforeFill = True
        '
        'ToolTip1
        '
        Me.ToolTip1.ToolTipTitle = "MRP (planirani nalozi) * jedinična mjera"
        '
        'frmCRP
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(546, 415)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.TabControl1)
        Me.Controls.Add(Me.Button1)
        Me.Name = "frmCRP"
        Me.Text = "frmCRP"
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.TabPage2.ResumeLayout(False)
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.RokoviBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents ListV As System.Windows.Forms.ListView
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label16 As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label15 As System.Windows.Forms.Label
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Label17 As System.Windows.Forms.Label
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents Label18 As System.Windows.Forms.Label
    Friend WithEvents DBDataSet As ISP_pp.DBDataSet
    Friend WithEvents RokoviBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents RokoviTableAdapter As ISP_pp.DBDataSetTableAdapters.rokoviTableAdapter
    Friend WithEvents lbl_IDpr As System.Windows.Forms.Label
    Friend WithEvents Label19 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label20 As System.Windows.Forms.Label
    Friend WithEvents txt_sat As System.Windows.Forms.TextBox
    Friend WithEvents txt_dan As System.Windows.Forms.TextBox
    Friend WithEvents txt_tjed As System.Windows.Forms.TextBox
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents DataGridView1 As System.Windows.Forms.DataGridView
    Friend WithEvents IdradnalDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents id_pr As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents VrijemezavrDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents VrijemeDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents PraznihodDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents PocetakDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ZavrsetakDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents SkladistenoDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
End Class
