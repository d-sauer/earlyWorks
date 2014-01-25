<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmStatistic
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
        Dim ReportDataSource1 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Dim ReportDataSource2 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Dim ReportDataSource3 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Dim ReportDataSource4 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Dim ReportDataSource5 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Dim ReportDataSource6 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Dim ReportDataSource7 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Dim ReportDataSource8 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Dim ReportDataSource9 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Dim ReportDataSource10 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Dim ReportDataSource11 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.TabControl1 = New System.Windows.Forms.TabControl
        Me.TabPage1 = New System.Windows.Forms.TabPage
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.ReportV = New Microsoft.Reporting.WinForms.ReportViewer
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.DataGridView1 = New System.Windows.Forms.DataGridView
        Me.btnShowAll = New System.Windows.Forms.Button
        Me.btnShowDate = New System.Windows.Forms.Button
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.Kal2 = New System.Windows.Forms.DateTimePicker
        Me.Kal1 = New System.Windows.Forms.DateTimePicker
        Me.TabPage2 = New System.Windows.Forms.TabPage
        Me.GroupBox3 = New System.Windows.Forms.GroupBox
        Me.ReportViewer1 = New Microsoft.Reporting.WinForms.ReportViewer
        Me.TabPage3 = New System.Windows.Forms.TabPage
        Me.GroupBox4 = New System.Windows.Forms.GroupBox
        Me.ReportVM = New Microsoft.Reporting.WinForms.ReportViewer
        Me.TabPage4 = New System.Windows.Forms.TabPage
        Me.GroupBox5 = New System.Windows.Forms.GroupBox
        Me.ReportVY = New Microsoft.Reporting.WinForms.ReportViewer
        Me.btnClose = New System.Windows.Forms.Button
        Me.btnRefresh = New System.Windows.Forms.Button
        Me.RacunBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DentistDataSet = New WindowsApplication7.dentistDataSet
        Me.rac_zahvatBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.IdracDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.DatumDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.PacjentDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.LjecnikDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.ZahvatiBindingSource1 = New System.Windows.Forms.BindingSource(Me.components)
        Me.VPacMBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.VBrDolazaMBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.VNarucPMBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.VBrZahvataBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.VBrDolaza_YBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.VNarucP_YBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.VPac_YBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.RacunTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.racunTableAdapter
        Me.rac_zahvatTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.rac_zahvatTableAdapter
        Me.zahvatiBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.zahvatiTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.zahvatiTableAdapter
        Me.VPac_MTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.VPac_MTableAdapter
        Me.VBrDolaza_MTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.VBrDolaza_MTableAdapter
        Me.VNarucP_MTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.VNarucP_MTableAdapter
        Me.VBrDolazaYBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.VBrDolaza_YTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.VBrDolaza_YTableAdapter
        Me.VNarucPYBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.VNarucP_YTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.VNarucP_YTableAdapter
        Me.VPacYBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.VPac_YTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.VPac_YTableAdapter
        Me.VBrZahvataTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.VBrZahvataTableAdapter
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.TabPage3.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        Me.TabPage4.SuspendLayout()
        Me.GroupBox5.SuspendLayout()
        CType(Me.RacunBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.rac_zahvatBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ZahvatiBindingSource1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VPacMBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VBrDolazaMBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VNarucPMBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VBrZahvataBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VBrDolaza_YBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VNarucP_YBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VPac_YBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.zahvatiBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VBrDolazaYBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VNarucPYBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.VPacYBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'PictureBox1
        '
        Me.PictureBox1.Dock = System.Windows.Forms.DockStyle.Left
        Me.PictureBox1.Image = Global.WindowsApplication7.My.Resources.Resources.Statistika
        Me.PictureBox1.Location = New System.Drawing.Point(0, 0)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(80, 380)
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'TabControl1
        '
        Me.TabControl1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TabControl1.Appearance = System.Windows.Forms.TabAppearance.FlatButtons
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Controls.Add(Me.TabPage3)
        Me.TabControl1.Controls.Add(Me.TabPage4)
        Me.TabControl1.Location = New System.Drawing.Point(82, 0)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(750, 354)
        Me.TabControl1.SizeMode = System.Windows.Forms.TabSizeMode.FillToRight
        Me.TabControl1.TabIndex = 1
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.GroupBox2)
        Me.TabPage1.Controls.Add(Me.GroupBox1)
        Me.TabPage1.Location = New System.Drawing.Point(4, 25)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(742, 325)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "Racuni"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox2.Controls.Add(Me.ReportV)
        Me.GroupBox2.Location = New System.Drawing.Point(213, 3)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(526, 319)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        '
        'ReportV
        '
        Me.ReportV.Dock = System.Windows.Forms.DockStyle.Fill
        ReportDataSource1.Name = "dentistDataSet_racun"
        ReportDataSource1.Value = Me.RacunBindingSource
        ReportDataSource2.Name = "dentistDataSet_rac_zahvat"
        ReportDataSource2.Value = Me.rac_zahvatBindingSource
        Me.ReportV.LocalReport.DataSources.Add(ReportDataSource1)
        Me.ReportV.LocalReport.DataSources.Add(ReportDataSource2)
        Me.ReportV.LocalReport.ReportEmbeddedResource = "WindowsApplication7.Report2.rdlc"
        Me.ReportV.Location = New System.Drawing.Point(3, 16)
        Me.ReportV.Name = "ReportV"
        Me.ReportV.Size = New System.Drawing.Size(520, 300)
        Me.ReportV.TabIndex = 0
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.DataGridView1)
        Me.GroupBox1.Controls.Add(Me.btnShowAll)
        Me.GroupBox1.Controls.Add(Me.btnShowDate)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.Kal2)
        Me.GroupBox1.Controls.Add(Me.Kal1)
        Me.GroupBox1.Dock = System.Windows.Forms.DockStyle.Left
        Me.GroupBox1.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(211, 319)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'DataGridView1
        '
        Me.DataGridView1.AllowUserToAddRows = False
        Me.DataGridView1.AllowUserToDeleteRows = False
        Me.DataGridView1.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.DataGridView1.AutoGenerateColumns = False
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdracDataGridViewTextBoxColumn, Me.DatumDataGridViewTextBoxColumn, Me.PacjentDataGridViewTextBoxColumn, Me.LjecnikDataGridViewTextBoxColumn})
        Me.DataGridView1.DataSource = Me.RacunBindingSource
        Me.DataGridView1.Location = New System.Drawing.Point(6, 92)
        Me.DataGridView1.MultiSelect = False
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.ReadOnly = True
        Me.DataGridView1.RowHeadersWidth = 20
        Me.DataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.DataGridView1.Size = New System.Drawing.Size(198, 221)
        Me.DataGridView1.TabIndex = 4
        '
        'btnShowAll
        '
        Me.btnShowAll.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.btnShowAll.Location = New System.Drawing.Point(6, 12)
        Me.btnShowAll.Margin = New System.Windows.Forms.Padding(1)
        Me.btnShowAll.Name = "btnShowAll"
        Me.btnShowAll.Size = New System.Drawing.Size(95, 23)
        Me.btnShowAll.TabIndex = 3
        Me.btnShowAll.Text = "Prikazi sve"
        Me.btnShowAll.UseVisualStyleBackColor = True
        '
        'btnShowDate
        '
        Me.btnShowDate.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.btnShowDate.Location = New System.Drawing.Point(109, 12)
        Me.btnShowDate.Margin = New System.Windows.Forms.Padding(1)
        Me.btnShowDate.Name = "btnShowDate"
        Me.btnShowDate.Size = New System.Drawing.Size(95, 23)
        Me.btnShowDate.TabIndex = 3
        Me.btnShowDate.Text = "Prikazi"
        Me.btnShowDate.UseVisualStyleBackColor = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(61, 66)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(22, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "do:"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(5, 44)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(78, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "U razdoblju od:"
        '
        'Kal2
        '
        Me.Kal2.Location = New System.Drawing.Point(89, 66)
        Me.Kal2.Name = "Kal2"
        Me.Kal2.Size = New System.Drawing.Size(115, 20)
        Me.Kal2.TabIndex = 0
        '
        'Kal1
        '
        Me.Kal1.Location = New System.Drawing.Point(89, 40)
        Me.Kal1.Name = "Kal1"
        Me.Kal1.Size = New System.Drawing.Size(115, 20)
        Me.Kal1.TabIndex = 0
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.GroupBox3)
        Me.TabPage2.Location = New System.Drawing.Point(4, 25)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(742, 325)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "Cjenik usluga"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.ReportViewer1)
        Me.GroupBox3.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox3.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(736, 319)
        Me.GroupBox3.TabIndex = 0
        Me.GroupBox3.TabStop = False
        '
        'ReportViewer1
        '
        Me.ReportViewer1.Dock = System.Windows.Forms.DockStyle.Fill
        ReportDataSource3.Name = "dentistDataSet_zahvati"
        ReportDataSource3.Value = Me.ZahvatiBindingSource1
        Me.ReportViewer1.LocalReport.DataSources.Add(ReportDataSource3)
        Me.ReportViewer1.LocalReport.ReportEmbeddedResource = "WindowsApplication7.Report3.rdlc"
        Me.ReportViewer1.Location = New System.Drawing.Point(3, 16)
        Me.ReportViewer1.Name = "ReportViewer1"
        Me.ReportViewer1.Size = New System.Drawing.Size(730, 300)
        Me.ReportViewer1.TabIndex = 0
        '
        'TabPage3
        '
        Me.TabPage3.Controls.Add(Me.GroupBox4)
        Me.TabPage3.Location = New System.Drawing.Point(4, 25)
        Me.TabPage3.Name = "TabPage3"
        Me.TabPage3.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage3.Size = New System.Drawing.Size(742, 325)
        Me.TabPage3.TabIndex = 2
        Me.TabPage3.Text = "Statistika po mjesecima"
        Me.TabPage3.UseVisualStyleBackColor = True
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.ReportVM)
        Me.GroupBox4.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox4.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(736, 319)
        Me.GroupBox4.TabIndex = 0
        Me.GroupBox4.TabStop = False
        '
        'ReportVM
        '
        Me.ReportVM.Dock = System.Windows.Forms.DockStyle.Fill
        ReportDataSource4.Name = "dentistDataSet_VPac_M"
        ReportDataSource4.Value = Me.VPacMBindingSource
        ReportDataSource5.Name = "dentistDataSet_VBrDolaza_M"
        ReportDataSource5.Value = Me.VBrDolazaMBindingSource
        ReportDataSource6.Name = "dentistDataSet_VNarucP_M"
        ReportDataSource6.Value = Me.VNarucPMBindingSource
        ReportDataSource7.Name = "dentistDataSet_VBrZahvata"
        ReportDataSource7.Value = Me.VBrZahvataBindingSource
        Me.ReportVM.LocalReport.DataSources.Add(ReportDataSource4)
        Me.ReportVM.LocalReport.DataSources.Add(ReportDataSource5)
        Me.ReportVM.LocalReport.DataSources.Add(ReportDataSource6)
        Me.ReportVM.LocalReport.DataSources.Add(ReportDataSource7)
        Me.ReportVM.LocalReport.ReportEmbeddedResource = "WindowsApplication7.Report_M.rdlc"
        Me.ReportVM.Location = New System.Drawing.Point(3, 16)
        Me.ReportVM.Name = "ReportVM"
        Me.ReportVM.Size = New System.Drawing.Size(730, 300)
        Me.ReportVM.TabIndex = 0
        '
        'TabPage4
        '
        Me.TabPage4.Controls.Add(Me.GroupBox5)
        Me.TabPage4.Location = New System.Drawing.Point(4, 25)
        Me.TabPage4.Name = "TabPage4"
        Me.TabPage4.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage4.Size = New System.Drawing.Size(742, 325)
        Me.TabPage4.TabIndex = 3
        Me.TabPage4.Text = "Statistika po godinama"
        Me.TabPage4.UseVisualStyleBackColor = True
        '
        'GroupBox5
        '
        Me.GroupBox5.Controls.Add(Me.ReportVY)
        Me.GroupBox5.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox5.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox5.Name = "GroupBox5"
        Me.GroupBox5.Size = New System.Drawing.Size(736, 319)
        Me.GroupBox5.TabIndex = 0
        Me.GroupBox5.TabStop = False
        '
        'ReportVY
        '
        Me.ReportVY.Dock = System.Windows.Forms.DockStyle.Fill
        ReportDataSource8.Name = "dentistDataSet_VBrDolaza_Y"
        ReportDataSource8.Value = Me.VBrDolaza_YBindingSource
        ReportDataSource9.Name = "dentistDataSet_VNarucP_Y"
        ReportDataSource9.Value = Me.VNarucP_YBindingSource
        ReportDataSource10.Name = "dentistDataSet_VPac_Y"
        ReportDataSource10.Value = Me.VPac_YBindingSource
        ReportDataSource11.Name = "dentistDataSet_VBrZahvata"
        ReportDataSource11.Value = Me.VBrZahvataBindingSource
        Me.ReportVY.LocalReport.DataSources.Add(ReportDataSource8)
        Me.ReportVY.LocalReport.DataSources.Add(ReportDataSource9)
        Me.ReportVY.LocalReport.DataSources.Add(ReportDataSource10)
        Me.ReportVY.LocalReport.DataSources.Add(ReportDataSource11)
        Me.ReportVY.LocalReport.ReportEmbeddedResource = "WindowsApplication7.Report_Y.rdlc"
        Me.ReportVY.Location = New System.Drawing.Point(3, 16)
        Me.ReportVY.Name = "ReportVY"
        Me.ReportVY.Size = New System.Drawing.Size(730, 300)
        Me.ReportVY.TabIndex = 0
        '
        'btnClose
        '
        Me.btnClose.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btnClose.Location = New System.Drawing.Point(739, 351)
        Me.btnClose.Name = "btnClose"
        Me.btnClose.Size = New System.Drawing.Size(86, 25)
        Me.btnClose.TabIndex = 13
        Me.btnClose.Text = "Zatvori"
        Me.btnClose.UseVisualStyleBackColor = True
        '
        'btnRefresh
        '
        Me.btnRefresh.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btnRefresh.Location = New System.Drawing.Point(636, 351)
        Me.btnRefresh.Name = "btnRefresh"
        Me.btnRefresh.Size = New System.Drawing.Size(86, 25)
        Me.btnRefresh.TabIndex = 13
        Me.btnRefresh.Text = "Prikazi"
        Me.btnRefresh.UseVisualStyleBackColor = True
        '
        'RacunBindingSource
        '
        Me.RacunBindingSource.DataMember = "racun"
        Me.RacunBindingSource.DataSource = Me.DentistDataSet
        '
        'DentistDataSet
        '
        Me.DentistDataSet.DataSetName = "dentistDataSet"
        Me.DentistDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'rac_zahvatBindingSource
        '
        Me.rac_zahvatBindingSource.DataMember = "rac_zahvat"
        Me.rac_zahvatBindingSource.DataSource = Me.DentistDataSet
        '
        'IdracDataGridViewTextBoxColumn
        '
        Me.IdracDataGridViewTextBoxColumn.DataPropertyName = "id_rac"
        Me.IdracDataGridViewTextBoxColumn.FillWeight = 50.0!
        Me.IdracDataGridViewTextBoxColumn.HeaderText = "ID"
        Me.IdracDataGridViewTextBoxColumn.Name = "IdracDataGridViewTextBoxColumn"
        Me.IdracDataGridViewTextBoxColumn.ReadOnly = True
        Me.IdracDataGridViewTextBoxColumn.Width = 30
        '
        'DatumDataGridViewTextBoxColumn
        '
        Me.DatumDataGridViewTextBoxColumn.DataPropertyName = "datum"
        Me.DatumDataGridViewTextBoxColumn.FillWeight = 70.0!
        Me.DatumDataGridViewTextBoxColumn.HeaderText = "Datum"
        Me.DatumDataGridViewTextBoxColumn.Name = "DatumDataGridViewTextBoxColumn"
        Me.DatumDataGridViewTextBoxColumn.ReadOnly = True
        Me.DatumDataGridViewTextBoxColumn.Width = 80
        '
        'PacjentDataGridViewTextBoxColumn
        '
        Me.PacjentDataGridViewTextBoxColumn.DataPropertyName = "pacjent"
        Me.PacjentDataGridViewTextBoxColumn.FillWeight = 80.0!
        Me.PacjentDataGridViewTextBoxColumn.HeaderText = "Pacjent"
        Me.PacjentDataGridViewTextBoxColumn.Name = "PacjentDataGridViewTextBoxColumn"
        Me.PacjentDataGridViewTextBoxColumn.ReadOnly = True
        Me.PacjentDataGridViewTextBoxColumn.Width = 80
        '
        'LjecnikDataGridViewTextBoxColumn
        '
        Me.LjecnikDataGridViewTextBoxColumn.DataPropertyName = "ljecnik"
        Me.LjecnikDataGridViewTextBoxColumn.FillWeight = 80.0!
        Me.LjecnikDataGridViewTextBoxColumn.HeaderText = "Ljecnik"
        Me.LjecnikDataGridViewTextBoxColumn.Name = "LjecnikDataGridViewTextBoxColumn"
        Me.LjecnikDataGridViewTextBoxColumn.ReadOnly = True
        Me.LjecnikDataGridViewTextBoxColumn.Width = 80
        '
        'ZahvatiBindingSource1
        '
        Me.ZahvatiBindingSource1.DataMember = "zahvati"
        Me.ZahvatiBindingSource1.DataSource = Me.DentistDataSet
        '
        'VPacMBindingSource
        '
        Me.VPacMBindingSource.DataMember = "VPac_M"
        Me.VPacMBindingSource.DataSource = Me.DentistDataSet
        '
        'VBrDolazaMBindingSource
        '
        Me.VBrDolazaMBindingSource.DataMember = "VBrDolaza_M"
        Me.VBrDolazaMBindingSource.DataSource = Me.DentistDataSet
        '
        'VNarucPMBindingSource
        '
        Me.VNarucPMBindingSource.DataMember = "VNarucP_M"
        Me.VNarucPMBindingSource.DataSource = Me.DentistDataSet
        '
        'VBrZahvataBindingSource
        '
        Me.VBrZahvataBindingSource.DataMember = "VBrZahvata"
        Me.VBrZahvataBindingSource.DataSource = Me.DentistDataSet
        '
        'VBrDolaza_YBindingSource
        '
        Me.VBrDolaza_YBindingSource.DataMember = "VBrDolaza_Y"
        Me.VBrDolaza_YBindingSource.DataSource = Me.DentistDataSet
        '
        'VNarucP_YBindingSource
        '
        Me.VNarucP_YBindingSource.DataMember = "VNarucP_Y"
        Me.VNarucP_YBindingSource.DataSource = Me.DentistDataSet
        '
        'VPac_YBindingSource
        '
        Me.VPac_YBindingSource.DataMember = "VPac_Y"
        Me.VPac_YBindingSource.DataSource = Me.DentistDataSet
        '
        'RacunTableAdapter
        '
        Me.RacunTableAdapter.ClearBeforeFill = True
        '
        'rac_zahvatTableAdapter
        '
        Me.rac_zahvatTableAdapter.ClearBeforeFill = True
        '
        'zahvatiBindingSource
        '
        Me.zahvatiBindingSource.DataMember = "zahvati"
        Me.zahvatiBindingSource.DataSource = Me.DentistDataSet
        '
        'zahvatiTableAdapter
        '
        Me.zahvatiTableAdapter.ClearBeforeFill = True
        '
        'VPac_MTableAdapter
        '
        Me.VPac_MTableAdapter.ClearBeforeFill = True
        '
        'VBrDolaza_MTableAdapter
        '
        Me.VBrDolaza_MTableAdapter.ClearBeforeFill = True
        '
        'VNarucP_MTableAdapter
        '
        Me.VNarucP_MTableAdapter.ClearBeforeFill = True
        '
        'VBrDolazaYBindingSource
        '
        Me.VBrDolazaYBindingSource.DataMember = "VBrDolaza_Y"
        Me.VBrDolazaYBindingSource.DataSource = Me.DentistDataSet
        '
        'VBrDolaza_YTableAdapter
        '
        Me.VBrDolaza_YTableAdapter.ClearBeforeFill = True
        '
        'VNarucPYBindingSource
        '
        Me.VNarucPYBindingSource.DataMember = "VNarucP_Y"
        Me.VNarucPYBindingSource.DataSource = Me.DentistDataSet
        '
        'VNarucP_YTableAdapter
        '
        Me.VNarucP_YTableAdapter.ClearBeforeFill = True
        '
        'VPacYBindingSource
        '
        Me.VPacYBindingSource.DataMember = "VPac_Y"
        Me.VPacYBindingSource.DataSource = Me.DentistDataSet
        '
        'VPac_YTableAdapter
        '
        Me.VPac_YTableAdapter.ClearBeforeFill = True
        '
        'VBrZahvataTableAdapter
        '
        Me.VBrZahvataTableAdapter.ClearBeforeFill = True
        '
        'frmStatistic
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(837, 380)
        Me.Controls.Add(Me.btnRefresh)
        Me.Controls.Add(Me.btnClose)
        Me.Controls.Add(Me.TabControl1)
        Me.Controls.Add(Me.PictureBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow
        Me.MaximumSize = New System.Drawing.Size(1000, 500)
        Me.Name = "frmStatistic"
        Me.Text = "Statistika"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage2.ResumeLayout(False)
        Me.GroupBox3.ResumeLayout(False)
        Me.TabPage3.ResumeLayout(False)
        Me.GroupBox4.ResumeLayout(False)
        Me.TabPage4.ResumeLayout(False)
        Me.GroupBox5.ResumeLayout(False)
        CType(Me.RacunBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.rac_zahvatBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ZahvatiBindingSource1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VPacMBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VBrDolazaMBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VNarucPMBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VBrZahvataBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VBrDolaza_YBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VNarucP_YBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VPac_YBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.zahvatiBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VBrDolazaYBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VNarucPYBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.VPacYBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents btnClose As System.Windows.Forms.Button
    Friend WithEvents TabPage3 As System.Windows.Forms.TabPage
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Kal2 As System.Windows.Forms.DateTimePicker
    Friend WithEvents Kal1 As System.Windows.Forms.DateTimePicker
    Friend WithEvents btnShowAll As System.Windows.Forms.Button
    Friend WithEvents btnShowDate As System.Windows.Forms.Button
    Friend WithEvents DataGridView1 As System.Windows.Forms.DataGridView
    Friend WithEvents DentistDataSet As WindowsApplication7.dentistDataSet
    Friend WithEvents RacunBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents RacunTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.racunTableAdapter
    Friend WithEvents IdracDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DatumDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents PacjentDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents LjecnikDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents ReportV As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents rac_zahvatBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents rac_zahvatTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.rac_zahvatTableAdapter
    Friend WithEvents btnRefresh As System.Windows.Forms.Button
    Friend WithEvents ReportViewer1 As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents zahvatiBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents zahvatiTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.zahvatiTableAdapter
    Friend WithEvents ZahvatiBindingSource1 As System.Windows.Forms.BindingSource
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents ReportVM As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents TabPage4 As System.Windows.Forms.TabPage
    Friend WithEvents GroupBox5 As System.Windows.Forms.GroupBox
    Friend WithEvents ReportVY As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents VPacMBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents VPac_MTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.VPac_MTableAdapter
    Friend WithEvents VBrDolazaMBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents VBrDolaza_MTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.VBrDolaza_MTableAdapter
    Friend WithEvents VNarucPMBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents VNarucP_MTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.VNarucP_MTableAdapter
    Friend WithEvents VBrDolazaYBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents VBrDolaza_YTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.VBrDolaza_YTableAdapter
    Friend WithEvents VNarucPYBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents VNarucP_YTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.VNarucP_YTableAdapter
    Friend WithEvents VPacYBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents VPac_YTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.VPac_YTableAdapter
    Friend WithEvents VBrDolaza_YBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents VNarucP_YBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents VPac_YBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents VBrZahvataBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents VBrZahvataTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.VBrZahvataTableAdapter
End Class
