<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmGant
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
        Me.DBDataSet = New ISP_pp.DBDataSet
        Me.DataGridView1 = New System.Windows.Forms.DataGridView
        Me.IdrmDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.RazdobljeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DanDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T00DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T01DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T02DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T03DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T04DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T05DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T06DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T07DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T10DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T11DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T12DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T13DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T14DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T15DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T16DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.T17DataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.FKgantogramidrm2077C861BindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.RadnomjestoBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.Radno_mjestoTableAdapter = New ISP_pp.DBDataSetTableAdapters.radno_mjestoTableAdapter
        Me.GantogramTableAdapter = New ISP_pp.DBDataSetTableAdapters.gantogramTableAdapter
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.ListBox1 = New System.Windows.Forms.ListBox
        Me.Button1 = New System.Windows.Forms.Button
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.DataGridView2 = New System.Windows.Forms.DataGridView
        Me.IdradnalDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.IdprDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.VrijemezavrDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.VrijemeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.PraznihodDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.PocetakDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.ZavrsetakDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.SkladistenoDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.RokovibyIDrmBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.Rokovi_by_IDrmTableAdapter = New ISP_pp.DBDataSetTableAdapters.rokovi_by_IDrmTableAdapter
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FKgantogramidrm2077C861BindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.RadnomjestoBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.DataGridView2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.RokovibyIDrmBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'DBDataSet
        '
        Me.DBDataSet.DataSetName = "DBDataSet"
        Me.DBDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'DataGridView1
        '
        Me.DataGridView1.AutoGenerateColumns = False
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdrmDataGridViewTextBoxColumn, Me.RazdobljeDataGridViewTextBoxColumn, Me.DanDataGridViewTextBoxColumn, Me.T00DataGridViewTextBoxColumn, Me.T01DataGridViewTextBoxColumn, Me.T02DataGridViewTextBoxColumn, Me.T03DataGridViewTextBoxColumn, Me.T04DataGridViewTextBoxColumn, Me.T05DataGridViewTextBoxColumn, Me.T06DataGridViewTextBoxColumn, Me.T07DataGridViewTextBoxColumn, Me.T10DataGridViewTextBoxColumn, Me.T11DataGridViewTextBoxColumn, Me.T12DataGridViewTextBoxColumn, Me.T13DataGridViewTextBoxColumn, Me.T14DataGridViewTextBoxColumn, Me.T15DataGridViewTextBoxColumn, Me.T16DataGridViewTextBoxColumn, Me.T17DataGridViewTextBoxColumn})
        Me.DataGridView1.DataSource = Me.FKgantogramidrm2077C861BindingSource
        Me.DataGridView1.Location = New System.Drawing.Point(1, 146)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.RowHeadersWidth = 25
        Me.DataGridView1.Size = New System.Drawing.Size(485, 309)
        Me.DataGridView1.TabIndex = 0
        '
        'IdrmDataGridViewTextBoxColumn
        '
        Me.IdrmDataGridViewTextBoxColumn.DataPropertyName = "id_rm"
        Me.IdrmDataGridViewTextBoxColumn.HeaderText = "id_rm"
        Me.IdrmDataGridViewTextBoxColumn.Name = "IdrmDataGridViewTextBoxColumn"
        Me.IdrmDataGridViewTextBoxColumn.ReadOnly = True
        Me.IdrmDataGridViewTextBoxColumn.Visible = False
        '
        'RazdobljeDataGridViewTextBoxColumn
        '
        Me.RazdobljeDataGridViewTextBoxColumn.DataPropertyName = "razdoblje"
        Me.RazdobljeDataGridViewTextBoxColumn.HeaderText = "Razdoblje"
        Me.RazdobljeDataGridViewTextBoxColumn.Name = "RazdobljeDataGridViewTextBoxColumn"
        Me.RazdobljeDataGridViewTextBoxColumn.ReadOnly = True
        Me.RazdobljeDataGridViewTextBoxColumn.Width = 60
        '
        'DanDataGridViewTextBoxColumn
        '
        Me.DanDataGridViewTextBoxColumn.DataPropertyName = "dan"
        Me.DanDataGridViewTextBoxColumn.HeaderText = "Radni dan"
        Me.DanDataGridViewTextBoxColumn.Name = "DanDataGridViewTextBoxColumn"
        Me.DanDataGridViewTextBoxColumn.ReadOnly = True
        Me.DanDataGridViewTextBoxColumn.Width = 40
        '
        'T00DataGridViewTextBoxColumn
        '
        Me.T00DataGridViewTextBoxColumn.DataPropertyName = "t00"
        Me.T00DataGridViewTextBoxColumn.HeaderText = "0"
        Me.T00DataGridViewTextBoxColumn.Name = "T00DataGridViewTextBoxColumn"
        Me.T00DataGridViewTextBoxColumn.ReadOnly = True
        Me.T00DataGridViewTextBoxColumn.Width = 20
        '
        'T01DataGridViewTextBoxColumn
        '
        Me.T01DataGridViewTextBoxColumn.DataPropertyName = "t01"
        Me.T01DataGridViewTextBoxColumn.HeaderText = "1"
        Me.T01DataGridViewTextBoxColumn.Name = "T01DataGridViewTextBoxColumn"
        Me.T01DataGridViewTextBoxColumn.ReadOnly = True
        Me.T01DataGridViewTextBoxColumn.Width = 20
        '
        'T02DataGridViewTextBoxColumn
        '
        Me.T02DataGridViewTextBoxColumn.DataPropertyName = "t02"
        Me.T02DataGridViewTextBoxColumn.HeaderText = "2"
        Me.T02DataGridViewTextBoxColumn.Name = "T02DataGridViewTextBoxColumn"
        Me.T02DataGridViewTextBoxColumn.ReadOnly = True
        Me.T02DataGridViewTextBoxColumn.Width = 20
        '
        'T03DataGridViewTextBoxColumn
        '
        Me.T03DataGridViewTextBoxColumn.DataPropertyName = "t03"
        Me.T03DataGridViewTextBoxColumn.HeaderText = "3"
        Me.T03DataGridViewTextBoxColumn.Name = "T03DataGridViewTextBoxColumn"
        Me.T03DataGridViewTextBoxColumn.ReadOnly = True
        Me.T03DataGridViewTextBoxColumn.Width = 20
        '
        'T04DataGridViewTextBoxColumn
        '
        Me.T04DataGridViewTextBoxColumn.DataPropertyName = "t04"
        Me.T04DataGridViewTextBoxColumn.HeaderText = "4"
        Me.T04DataGridViewTextBoxColumn.Name = "T04DataGridViewTextBoxColumn"
        Me.T04DataGridViewTextBoxColumn.ReadOnly = True
        Me.T04DataGridViewTextBoxColumn.Width = 20
        '
        'T05DataGridViewTextBoxColumn
        '
        Me.T05DataGridViewTextBoxColumn.DataPropertyName = "t05"
        Me.T05DataGridViewTextBoxColumn.HeaderText = "5"
        Me.T05DataGridViewTextBoxColumn.Name = "T05DataGridViewTextBoxColumn"
        Me.T05DataGridViewTextBoxColumn.ReadOnly = True
        Me.T05DataGridViewTextBoxColumn.Width = 20
        '
        'T06DataGridViewTextBoxColumn
        '
        Me.T06DataGridViewTextBoxColumn.DataPropertyName = "t06"
        Me.T06DataGridViewTextBoxColumn.HeaderText = "6"
        Me.T06DataGridViewTextBoxColumn.Name = "T06DataGridViewTextBoxColumn"
        Me.T06DataGridViewTextBoxColumn.ReadOnly = True
        Me.T06DataGridViewTextBoxColumn.Width = 20
        '
        'T07DataGridViewTextBoxColumn
        '
        Me.T07DataGridViewTextBoxColumn.DataPropertyName = "t07"
        Me.T07DataGridViewTextBoxColumn.HeaderText = "7"
        Me.T07DataGridViewTextBoxColumn.Name = "T07DataGridViewTextBoxColumn"
        Me.T07DataGridViewTextBoxColumn.ReadOnly = True
        Me.T07DataGridViewTextBoxColumn.Width = 20
        '
        'T10DataGridViewTextBoxColumn
        '
        Me.T10DataGridViewTextBoxColumn.DataPropertyName = "t10"
        Me.T10DataGridViewTextBoxColumn.HeaderText = "0"
        Me.T10DataGridViewTextBoxColumn.Name = "T10DataGridViewTextBoxColumn"
        Me.T10DataGridViewTextBoxColumn.ReadOnly = True
        Me.T10DataGridViewTextBoxColumn.Width = 20
        '
        'T11DataGridViewTextBoxColumn
        '
        Me.T11DataGridViewTextBoxColumn.DataPropertyName = "t11"
        Me.T11DataGridViewTextBoxColumn.HeaderText = "1"
        Me.T11DataGridViewTextBoxColumn.Name = "T11DataGridViewTextBoxColumn"
        Me.T11DataGridViewTextBoxColumn.ReadOnly = True
        Me.T11DataGridViewTextBoxColumn.Width = 20
        '
        'T12DataGridViewTextBoxColumn
        '
        Me.T12DataGridViewTextBoxColumn.DataPropertyName = "t12"
        Me.T12DataGridViewTextBoxColumn.HeaderText = "2"
        Me.T12DataGridViewTextBoxColumn.Name = "T12DataGridViewTextBoxColumn"
        Me.T12DataGridViewTextBoxColumn.ReadOnly = True
        Me.T12DataGridViewTextBoxColumn.Width = 20
        '
        'T13DataGridViewTextBoxColumn
        '
        Me.T13DataGridViewTextBoxColumn.DataPropertyName = "t13"
        Me.T13DataGridViewTextBoxColumn.HeaderText = "3"
        Me.T13DataGridViewTextBoxColumn.Name = "T13DataGridViewTextBoxColumn"
        Me.T13DataGridViewTextBoxColumn.ReadOnly = True
        Me.T13DataGridViewTextBoxColumn.Width = 20
        '
        'T14DataGridViewTextBoxColumn
        '
        Me.T14DataGridViewTextBoxColumn.DataPropertyName = "t14"
        Me.T14DataGridViewTextBoxColumn.HeaderText = "4"
        Me.T14DataGridViewTextBoxColumn.Name = "T14DataGridViewTextBoxColumn"
        Me.T14DataGridViewTextBoxColumn.ReadOnly = True
        Me.T14DataGridViewTextBoxColumn.Width = 20
        '
        'T15DataGridViewTextBoxColumn
        '
        Me.T15DataGridViewTextBoxColumn.DataPropertyName = "t15"
        Me.T15DataGridViewTextBoxColumn.HeaderText = "5"
        Me.T15DataGridViewTextBoxColumn.Name = "T15DataGridViewTextBoxColumn"
        Me.T15DataGridViewTextBoxColumn.ReadOnly = True
        Me.T15DataGridViewTextBoxColumn.Width = 20
        '
        'T16DataGridViewTextBoxColumn
        '
        Me.T16DataGridViewTextBoxColumn.DataPropertyName = "t16"
        Me.T16DataGridViewTextBoxColumn.HeaderText = "6"
        Me.T16DataGridViewTextBoxColumn.Name = "T16DataGridViewTextBoxColumn"
        Me.T16DataGridViewTextBoxColumn.ReadOnly = True
        Me.T16DataGridViewTextBoxColumn.Width = 20
        '
        'T17DataGridViewTextBoxColumn
        '
        Me.T17DataGridViewTextBoxColumn.DataPropertyName = "t17"
        Me.T17DataGridViewTextBoxColumn.HeaderText = "7"
        Me.T17DataGridViewTextBoxColumn.Name = "T17DataGridViewTextBoxColumn"
        Me.T17DataGridViewTextBoxColumn.ReadOnly = True
        Me.T17DataGridViewTextBoxColumn.Width = 20
        '
        'FKgantogramidrm2077C861BindingSource
        '
        Me.FKgantogramidrm2077C861BindingSource.DataMember = "FK__gantogram__id_rm__2077C861"
        Me.FKgantogramidrm2077C861BindingSource.DataSource = Me.RadnomjestoBindingSource
        '
        'RadnomjestoBindingSource
        '
        Me.RadnomjestoBindingSource.DataMember = "radno_mjesto"
        Me.RadnomjestoBindingSource.DataSource = Me.DBDataSet
        '
        'Radno_mjestoTableAdapter
        '
        Me.Radno_mjestoTableAdapter.ClearBeforeFill = True
        '
        'GantogramTableAdapter
        '
        Me.GantogramTableAdapter.ClearBeforeFill = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.ListBox1)
        Me.GroupBox1.Location = New System.Drawing.Point(1, 1)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(121, 136)
        Me.GroupBox1.TabIndex = 2
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Radno mjesto"
        '
        'ListBox1
        '
        Me.ListBox1.DataSource = Me.RadnomjestoBindingSource
        Me.ListBox1.DisplayMember = "r_mjesto"
        Me.ListBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(3, 16)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(115, 108)
        Me.ListBox1.TabIndex = 2
        Me.ListBox1.ValueMember = "id_rm"
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(396, 461)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(93, 26)
        Me.Button1.TabIndex = 3
        Me.Button1.Text = "Zatvori"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.DataGridView2)
        Me.GroupBox2.Location = New System.Drawing.Point(125, 1)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(364, 139)
        Me.GroupBox2.TabIndex = 4
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Radni nalozi"
        '
        'DataGridView2
        '
        Me.DataGridView2.AllowUserToAddRows = False
        Me.DataGridView2.AllowUserToDeleteRows = False
        Me.DataGridView2.AutoGenerateColumns = False
        Me.DataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView2.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdradnalDataGridViewTextBoxColumn, Me.IdprDataGridViewTextBoxColumn, Me.VrijemezavrDataGridViewTextBoxColumn, Me.VrijemeDataGridViewTextBoxColumn, Me.PraznihodDataGridViewTextBoxColumn, Me.PocetakDataGridViewTextBoxColumn, Me.ZavrsetakDataGridViewTextBoxColumn, Me.SkladistenoDataGridViewTextBoxColumn})
        Me.DataGridView2.DataSource = Me.RokovibyIDrmBindingSource
        Me.DataGridView2.Dock = System.Windows.Forms.DockStyle.Fill
        Me.DataGridView2.Location = New System.Drawing.Point(3, 16)
        Me.DataGridView2.Name = "DataGridView2"
        Me.DataGridView2.ReadOnly = True
        Me.DataGridView2.RowHeadersWidth = 20
        Me.DataGridView2.Size = New System.Drawing.Size(358, 120)
        Me.DataGridView2.TabIndex = 0
        '
        'IdradnalDataGridViewTextBoxColumn
        '
        Me.IdradnalDataGridViewTextBoxColumn.DataPropertyName = "id_rad_nal"
        Me.IdradnalDataGridViewTextBoxColumn.HeaderText = "ID rad naloga"
        Me.IdradnalDataGridViewTextBoxColumn.Name = "IdradnalDataGridViewTextBoxColumn"
        Me.IdradnalDataGridViewTextBoxColumn.ReadOnly = True
        Me.IdradnalDataGridViewTextBoxColumn.Width = 50
        '
        'IdprDataGridViewTextBoxColumn
        '
        Me.IdprDataGridViewTextBoxColumn.DataPropertyName = "id_pr"
        Me.IdprDataGridViewTextBoxColumn.HeaderText = "id_pr"
        Me.IdprDataGridViewTextBoxColumn.Name = "IdprDataGridViewTextBoxColumn"
        Me.IdprDataGridViewTextBoxColumn.ReadOnly = True
        Me.IdprDataGridViewTextBoxColumn.Visible = False
        '
        'VrijemezavrDataGridViewTextBoxColumn
        '
        Me.VrijemezavrDataGridViewTextBoxColumn.DataPropertyName = "vrijeme_zavr"
        Me.VrijemezavrDataGridViewTextBoxColumn.HeaderText = "Vrijeme završetka"
        Me.VrijemezavrDataGridViewTextBoxColumn.Name = "VrijemezavrDataGridViewTextBoxColumn"
        Me.VrijemezavrDataGridViewTextBoxColumn.ReadOnly = True
        Me.VrijemezavrDataGridViewTextBoxColumn.Width = 60
        '
        'VrijemeDataGridViewTextBoxColumn
        '
        Me.VrijemeDataGridViewTextBoxColumn.DataPropertyName = "vrijeme"
        Me.VrijemeDataGridViewTextBoxColumn.HeaderText = "Vrijeme trajanja"
        Me.VrijemeDataGridViewTextBoxColumn.Name = "VrijemeDataGridViewTextBoxColumn"
        Me.VrijemeDataGridViewTextBoxColumn.ReadOnly = True
        Me.VrijemeDataGridViewTextBoxColumn.Width = 50
        '
        'PraznihodDataGridViewTextBoxColumn
        '
        Me.PraznihodDataGridViewTextBoxColumn.DataPropertyName = "prazni_hod"
        Me.PraznihodDataGridViewTextBoxColumn.HeaderText = "Prazni hod"
        Me.PraznihodDataGridViewTextBoxColumn.Name = "PraznihodDataGridViewTextBoxColumn"
        Me.PraznihodDataGridViewTextBoxColumn.ReadOnly = True
        Me.PraznihodDataGridViewTextBoxColumn.Width = 40
        '
        'PocetakDataGridViewTextBoxColumn
        '
        Me.PocetakDataGridViewTextBoxColumn.DataPropertyName = "pocetak"
        Me.PocetakDataGridViewTextBoxColumn.HeaderText = "Pocetak (tjed/dan/sat)"
        Me.PocetakDataGridViewTextBoxColumn.Name = "PocetakDataGridViewTextBoxColumn"
        Me.PocetakDataGridViewTextBoxColumn.ReadOnly = True
        Me.PocetakDataGridViewTextBoxColumn.Width = 80
        '
        'ZavrsetakDataGridViewTextBoxColumn
        '
        Me.ZavrsetakDataGridViewTextBoxColumn.DataPropertyName = "zavrsetak"
        Me.ZavrsetakDataGridViewTextBoxColumn.HeaderText = "Zavrsetak (tjed/dan/sat)"
        Me.ZavrsetakDataGridViewTextBoxColumn.Name = "ZavrsetakDataGridViewTextBoxColumn"
        Me.ZavrsetakDataGridViewTextBoxColumn.ReadOnly = True
        Me.ZavrsetakDataGridViewTextBoxColumn.Width = 80
        '
        'SkladistenoDataGridViewTextBoxColumn
        '
        Me.SkladistenoDataGridViewTextBoxColumn.DataPropertyName = "skladisteno"
        Me.SkladistenoDataGridViewTextBoxColumn.HeaderText = "Skladisteno (tjed/dan/sat)"
        Me.SkladistenoDataGridViewTextBoxColumn.Name = "SkladistenoDataGridViewTextBoxColumn"
        Me.SkladistenoDataGridViewTextBoxColumn.ReadOnly = True
        Me.SkladistenoDataGridViewTextBoxColumn.Width = 80
        '
        'RokovibyIDrmBindingSource
        '
        Me.RokovibyIDrmBindingSource.DataMember = "rokovi_by_IDrm"
        Me.RokovibyIDrmBindingSource.DataSource = Me.DBDataSet
        '
        'Rokovi_by_IDrmTableAdapter
        '
        Me.Rokovi_by_IDrmTableAdapter.ClearBeforeFill = True
        '
        'frmGant
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(493, 489)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.DataGridView1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmGant"
        Me.Text = "Gantogram"
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FKgantogramidrm2077C861BindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.RadnomjestoBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        CType(Me.DataGridView2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.RokovibyIDrmBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents DBDataSet As ISP_pp.DBDataSet
    Friend WithEvents DataGridView1 As System.Windows.Forms.DataGridView
    Friend WithEvents RadnomjestoBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents Radno_mjestoTableAdapter As ISP_pp.DBDataSetTableAdapters.radno_mjestoTableAdapter
    Friend WithEvents FKgantogramidrm2077C861BindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents GantogramTableAdapter As ISP_pp.DBDataSetTableAdapters.gantogramTableAdapter
    Friend WithEvents IdrmDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents RazdobljeDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DanDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T00DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T01DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T02DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T03DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T04DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T05DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T06DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T07DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T10DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T11DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T12DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T13DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T14DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T15DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T16DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents T17DataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents ListBox1 As System.Windows.Forms.ListBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents DataGridView2 As System.Windows.Forms.DataGridView
    Friend WithEvents RokovibyIDrmBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents Rokovi_by_IDrmTableAdapter As ISP_pp.DBDataSetTableAdapters.rokovi_by_IDrmTableAdapter
    Friend WithEvents IdradnalDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents IdprDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents VrijemezavrDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents VrijemeDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents PraznihodDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents PocetakDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ZavrsetakDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents SkladistenoDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
End Class
