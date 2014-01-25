<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmPac
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
        Me.ListPacjentiBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DentistDataSet = New WindowsApplication7.dentistDataSet
        Me.ListZahvatibyDateBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.tabIzvjestaj = New System.Windows.Forms.TabControl
        Me.tabPac = New System.Windows.Forms.TabPage
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.lstPacLjec = New System.Windows.Forms.ListBox
        Me.dbGridPac = New System.Windows.Forms.DataGridView
        Me.IdpacDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.ImeprezDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.IdosobnaDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.StatusDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.PartDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.AdresaDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.MailDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.OtvaranjeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.txtParticipacija = New System.Windows.Forms.ComboBox
        Me.PartBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.txtMail = New System.Windows.Forms.TextBox
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.txtJMBG = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.txtAdresa = New System.Windows.Forms.TextBox
        Me.txtIme = New System.Windows.Forms.TextBox
        Me.Label4 = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.TabPage2 = New System.Windows.Forms.TabPage
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.Report = New Microsoft.Reporting.WinForms.ReportViewer
        Me.btnClose = New System.Windows.Forms.Button
        Me.btnAdd = New System.Windows.Forms.Button
        Me.btnChange = New System.Windows.Forms.Button
        Me.btnDel = New System.Windows.Forms.Button
        Me.ListPacjentiTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.ListPacjentiTableAdapter
        Me.PartTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.partTableAdapter
        Me.PacjentTableAdapter1 = New WindowsApplication7.dentistDataSetTableAdapters.pacjentTableAdapter
        Me.btnRefresh = New System.Windows.Forms.Button
        Me.pacjentBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.pacjentTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.pacjentTableAdapter
        Me.ListZahvati_byDateTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.ListZahvati_byDateTableAdapter
        CType(Me.ListPacjentiBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ListZahvatibyDateBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.tabIzvjestaj.SuspendLayout()
        Me.tabPac.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        CType(Me.dbGridPac, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PartBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage2.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.pacjentBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'ListPacjentiBindingSource
        '
        Me.ListPacjentiBindingSource.DataMember = "ListPacjenti"
        Me.ListPacjentiBindingSource.DataSource = Me.DentistDataSet
        '
        'DentistDataSet
        '
        Me.DentistDataSet.DataSetName = "dentistDataSet"
        Me.DentistDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'ListZahvatibyDateBindingSource
        '
        Me.ListZahvatibyDateBindingSource.DataMember = "ListZahvati_byDate"
        Me.ListZahvatibyDateBindingSource.DataSource = Me.DentistDataSet
        '
        'PictureBox1
        '
        Me.PictureBox1.Dock = System.Windows.Forms.DockStyle.Left
        Me.PictureBox1.Image = Global.WindowsApplication7.My.Resources.Resources.pacjenti
        Me.PictureBox1.Location = New System.Drawing.Point(0, 0)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(80, 374)
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'tabIzvjestaj
        '
        Me.tabIzvjestaj.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.tabIzvjestaj.Appearance = System.Windows.Forms.TabAppearance.FlatButtons
        Me.tabIzvjestaj.Controls.Add(Me.tabPac)
        Me.tabIzvjestaj.Controls.Add(Me.TabPage2)
        Me.tabIzvjestaj.ItemSize = New System.Drawing.Size(120, 21)
        Me.tabIzvjestaj.Location = New System.Drawing.Point(82, 0)
        Me.tabIzvjestaj.Multiline = True
        Me.tabIzvjestaj.Name = "tabIzvjestaj"
        Me.tabIzvjestaj.SelectedIndex = 0
        Me.tabIzvjestaj.Size = New System.Drawing.Size(513, 350)
        Me.tabIzvjestaj.SizeMode = System.Windows.Forms.TabSizeMode.Fixed
        Me.tabIzvjestaj.TabIndex = 1
        '
        'tabPac
        '
        Me.tabPac.Controls.Add(Me.GroupBox1)
        Me.tabPac.Location = New System.Drawing.Point(4, 25)
        Me.tabPac.Name = "tabPac"
        Me.tabPac.Padding = New System.Windows.Forms.Padding(3)
        Me.tabPac.Size = New System.Drawing.Size(505, 321)
        Me.tabPac.TabIndex = 0
        Me.tabPac.Text = "Pacijent"
        Me.tabPac.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.lstPacLjec)
        Me.GroupBox1.Controls.Add(Me.dbGridPac)
        Me.GroupBox1.Controls.Add(Me.txtParticipacija)
        Me.GroupBox1.Controls.Add(Me.txtMail)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.txtJMBG)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.txtAdresa)
        Me.GroupBox1.Controls.Add(Me.txtIme)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox1.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(499, 315)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'lstPacLjec
        '
        Me.lstPacLjec.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.lstPacLjec.FormattingEnabled = True
        Me.lstPacLjec.Location = New System.Drawing.Point(331, 38)
        Me.lstPacLjec.Name = "lstPacLjec"
        Me.lstPacLjec.Size = New System.Drawing.Size(162, 95)
        Me.lstPacLjec.TabIndex = 18
        '
        'dbGridPac
        '
        Me.dbGridPac.AllowUserToAddRows = False
        Me.dbGridPac.AllowUserToDeleteRows = False
        Me.dbGridPac.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.dbGridPac.AutoGenerateColumns = False
        Me.dbGridPac.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.dbGridPac.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dbGridPac.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdpacDataGridViewTextBoxColumn, Me.ImeprezDataGridViewTextBoxColumn, Me.IdosobnaDataGridViewTextBoxColumn, Me.StatusDataGridViewTextBoxColumn, Me.PartDataGridViewTextBoxColumn, Me.AdresaDataGridViewTextBoxColumn, Me.MailDataGridViewTextBoxColumn, Me.OtvaranjeDataGridViewTextBoxColumn})
        Me.dbGridPac.DataSource = Me.ListPacjentiBindingSource
        Me.dbGridPac.Location = New System.Drawing.Point(6, 150)
        Me.dbGridPac.MultiSelect = False
        Me.dbGridPac.Name = "dbGridPac"
        Me.dbGridPac.ReadOnly = True
        Me.dbGridPac.RowHeadersWidth = 20
        Me.dbGridPac.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dbGridPac.Size = New System.Drawing.Size(487, 159)
        Me.dbGridPac.TabIndex = 11
        '
        'IdpacDataGridViewTextBoxColumn
        '
        Me.IdpacDataGridViewTextBoxColumn.DataPropertyName = "id_pac"
        Me.IdpacDataGridViewTextBoxColumn.FillWeight = 50.0!
        Me.IdpacDataGridViewTextBoxColumn.HeaderText = "ID"
        Me.IdpacDataGridViewTextBoxColumn.Name = "IdpacDataGridViewTextBoxColumn"
        Me.IdpacDataGridViewTextBoxColumn.ReadOnly = True
        Me.IdpacDataGridViewTextBoxColumn.Width = 30
        '
        'ImeprezDataGridViewTextBoxColumn
        '
        Me.ImeprezDataGridViewTextBoxColumn.DataPropertyName = "ime_prez"
        Me.ImeprezDataGridViewTextBoxColumn.HeaderText = "Ime, Prezime"
        Me.ImeprezDataGridViewTextBoxColumn.Name = "ImeprezDataGridViewTextBoxColumn"
        Me.ImeprezDataGridViewTextBoxColumn.ReadOnly = True
        Me.ImeprezDataGridViewTextBoxColumn.Width = 120
        '
        'IdosobnaDataGridViewTextBoxColumn
        '
        Me.IdosobnaDataGridViewTextBoxColumn.DataPropertyName = "id_osobna"
        Me.IdosobnaDataGridViewTextBoxColumn.FillWeight = 50.0!
        Me.IdosobnaDataGridViewTextBoxColumn.HeaderText = "Br. Iskaznice"
        Me.IdosobnaDataGridViewTextBoxColumn.Name = "IdosobnaDataGridViewTextBoxColumn"
        Me.IdosobnaDataGridViewTextBoxColumn.ReadOnly = True
        '
        'StatusDataGridViewTextBoxColumn
        '
        Me.StatusDataGridViewTextBoxColumn.DataPropertyName = "status"
        Me.StatusDataGridViewTextBoxColumn.FillWeight = 50.0!
        Me.StatusDataGridViewTextBoxColumn.HeaderText = "Participacija"
        Me.StatusDataGridViewTextBoxColumn.Name = "StatusDataGridViewTextBoxColumn"
        Me.StatusDataGridViewTextBoxColumn.ReadOnly = True
        Me.StatusDataGridViewTextBoxColumn.Width = 80
        '
        'PartDataGridViewTextBoxColumn
        '
        Me.PartDataGridViewTextBoxColumn.DataPropertyName = "part"
        Me.PartDataGridViewTextBoxColumn.FillWeight = 50.0!
        Me.PartDataGridViewTextBoxColumn.HeaderText = "Part"
        Me.PartDataGridViewTextBoxColumn.Name = "PartDataGridViewTextBoxColumn"
        Me.PartDataGridViewTextBoxColumn.ReadOnly = True
        Me.PartDataGridViewTextBoxColumn.Width = 50
        '
        'AdresaDataGridViewTextBoxColumn
        '
        Me.AdresaDataGridViewTextBoxColumn.DataPropertyName = "adresa"
        Me.AdresaDataGridViewTextBoxColumn.HeaderText = "Adresa"
        Me.AdresaDataGridViewTextBoxColumn.Name = "AdresaDataGridViewTextBoxColumn"
        Me.AdresaDataGridViewTextBoxColumn.ReadOnly = True
        '
        'MailDataGridViewTextBoxColumn
        '
        Me.MailDataGridViewTextBoxColumn.DataPropertyName = "mail"
        Me.MailDataGridViewTextBoxColumn.HeaderText = "e-mail"
        Me.MailDataGridViewTextBoxColumn.Name = "MailDataGridViewTextBoxColumn"
        Me.MailDataGridViewTextBoxColumn.ReadOnly = True
        '
        'OtvaranjeDataGridViewTextBoxColumn
        '
        Me.OtvaranjeDataGridViewTextBoxColumn.DataPropertyName = "otvaranje"
        Me.OtvaranjeDataGridViewTextBoxColumn.HeaderText = "Otvaranje"
        Me.OtvaranjeDataGridViewTextBoxColumn.Name = "OtvaranjeDataGridViewTextBoxColumn"
        Me.OtvaranjeDataGridViewTextBoxColumn.ReadOnly = True
        Me.OtvaranjeDataGridViewTextBoxColumn.ToolTipText = "Otvaranje kartona"
        Me.OtvaranjeDataGridViewTextBoxColumn.Width = 70
        '
        'txtParticipacija
        '
        Me.txtParticipacija.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ListPacjentiBindingSource, "status", True))
        Me.txtParticipacija.DataSource = Me.PartBindingSource
        Me.txtParticipacija.DisplayMember = "status"
        Me.txtParticipacija.FormattingEnabled = True
        Me.txtParticipacija.Location = New System.Drawing.Point(85, 38)
        Me.txtParticipacija.Name = "txtParticipacija"
        Me.txtParticipacija.Size = New System.Drawing.Size(150, 21)
        Me.txtParticipacija.TabIndex = 3
        '
        'PartBindingSource
        '
        Me.PartBindingSource.DataMember = "part"
        Me.PartBindingSource.DataSource = Me.DentistDataSet
        '
        'txtMail
        '
        Me.txtMail.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ListPacjentiBindingSource, "mail", True))
        Me.txtMail.Location = New System.Drawing.Point(86, 115)
        Me.txtMail.MaxLength = 30
        Me.txtMail.Name = "txtMail"
        Me.txtMail.Size = New System.Drawing.Size(149, 20)
        Me.txtMail.TabIndex = 5
        '
        'Label6
        '
        Me.Label6.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(255, 41)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(48, 13)
        Me.Label6.TabIndex = 5
        Me.Label6.Text = "Lijecnici:"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(9, 118)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(39, 13)
        Me.Label5.TabIndex = 6
        Me.Label5.Text = "E-Mail:"
        '
        'txtJMBG
        '
        Me.txtJMBG.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.txtJMBG.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ListPacjentiBindingSource, "id_osobna", True))
        Me.txtJMBG.Location = New System.Drawing.Point(331, 11)
        Me.txtJMBG.MaxLength = 30
        Me.txtJMBG.Name = "txtJMBG"
        Me.txtJMBG.Size = New System.Drawing.Size(162, 20)
        Me.txtJMBG.TabIndex = 2
        '
        'Label2
        '
        Me.Label2.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(255, 14)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(70, 13)
        Me.Label2.TabIndex = 7
        Me.Label2.Text = "Br. iskaznice:"
        '
        'txtAdresa
        '
        Me.txtAdresa.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ListPacjentiBindingSource, "adresa", True))
        Me.txtAdresa.Location = New System.Drawing.Point(86, 65)
        Me.txtAdresa.MaxLength = 80
        Me.txtAdresa.Multiline = True
        Me.txtAdresa.Name = "txtAdresa"
        Me.txtAdresa.Size = New System.Drawing.Size(149, 44)
        Me.txtAdresa.TabIndex = 4
        '
        'txtIme
        '
        Me.txtIme.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ListPacjentiBindingSource, "ime_prez", True))
        Me.txtIme.Location = New System.Drawing.Point(86, 11)
        Me.txtIme.MaxLength = 30
        Me.txtIme.Name = "txtIme"
        Me.txtIme.Size = New System.Drawing.Size(149, 20)
        Me.txtIme.TabIndex = 1
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(9, 68)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(43, 13)
        Me.Label4.TabIndex = 10
        Me.Label4.Text = "Adresa:"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(9, 41)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(67, 13)
        Me.Label3.TabIndex = 8
        Me.Label3.Text = "Participacija:"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(9, 14)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(71, 13)
        Me.Label1.TabIndex = 9
        Me.Label1.Text = "Ime i prezime:"
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.GroupBox2)
        Me.TabPage2.Location = New System.Drawing.Point(4, 25)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(505, 321)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "Izvjestaj o pacijentu"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Report)
        Me.GroupBox2.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox2.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(499, 315)
        Me.GroupBox2.TabIndex = 0
        Me.GroupBox2.TabStop = False
        '
        'Report
        '
        Me.Report.Dock = System.Windows.Forms.DockStyle.Fill
        ReportDataSource1.Name = "dentistDataSet_ListPacjenti"
        ReportDataSource1.Value = Me.ListPacjentiBindingSource
        ReportDataSource2.Name = "dentistDataSet_ListZahvati_byDate"
        ReportDataSource2.Value = Me.ListZahvatibyDateBindingSource
        Me.Report.LocalReport.DataSources.Add(ReportDataSource1)
        Me.Report.LocalReport.DataSources.Add(ReportDataSource2)
        Me.Report.LocalReport.ReportEmbeddedResource = "WindowsApplication7.Report1.rdlc"
        Me.Report.Location = New System.Drawing.Point(3, 16)
        Me.Report.Name = "Report"
        Me.Report.Size = New System.Drawing.Size(493, 296)
        Me.Report.TabIndex = 0
        '
        'btnClose
        '
        Me.btnClose.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btnClose.Location = New System.Drawing.Point(504, 347)
        Me.btnClose.Name = "btnClose"
        Me.btnClose.Size = New System.Drawing.Size(80, 25)
        Me.btnClose.TabIndex = 12
        Me.btnClose.Text = "Zatvori"
        Me.btnClose.UseVisualStyleBackColor = True
        '
        'btnAdd
        '
        Me.btnAdd.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.btnAdd.Location = New System.Drawing.Point(88, 347)
        Me.btnAdd.Name = "btnAdd"
        Me.btnAdd.Size = New System.Drawing.Size(80, 25)
        Me.btnAdd.TabIndex = 6
        Me.btnAdd.Text = "Novi"
        Me.btnAdd.UseVisualStyleBackColor = True
        '
        'btnChange
        '
        Me.btnChange.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.btnChange.Location = New System.Drawing.Point(178, 347)
        Me.btnChange.Name = "btnChange"
        Me.btnChange.Size = New System.Drawing.Size(80, 25)
        Me.btnChange.TabIndex = 7
        Me.btnChange.Text = "Prihvati"
        Me.btnChange.UseVisualStyleBackColor = True
        '
        'btnDel
        '
        Me.btnDel.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.btnDel.Location = New System.Drawing.Point(268, 347)
        Me.btnDel.Name = "btnDel"
        Me.btnDel.Size = New System.Drawing.Size(80, 25)
        Me.btnDel.TabIndex = 8
        Me.btnDel.Text = "Obrisi"
        Me.btnDel.UseVisualStyleBackColor = True
        '
        'ListPacjentiTableAdapter
        '
        Me.ListPacjentiTableAdapter.ClearBeforeFill = True
        '
        'PartTableAdapter
        '
        Me.PartTableAdapter.ClearBeforeFill = True
        '
        'PacjentTableAdapter1
        '
        Me.PacjentTableAdapter1.ClearBeforeFill = True
        '
        'btnRefresh
        '
        Me.btnRefresh.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.btnRefresh.Location = New System.Drawing.Point(358, 347)
        Me.btnRefresh.Name = "btnRefresh"
        Me.btnRefresh.Size = New System.Drawing.Size(80, 25)
        Me.btnRefresh.TabIndex = 8
        Me.btnRefresh.Text = "Osvjezi"
        Me.btnRefresh.UseVisualStyleBackColor = True
        '
        'pacjentBindingSource
        '
        Me.pacjentBindingSource.DataMember = "pacjent"
        Me.pacjentBindingSource.DataSource = Me.DentistDataSet
        '
        'pacjentTableAdapter
        '
        Me.pacjentTableAdapter.ClearBeforeFill = True
        '
        'ListZahvati_byDateTableAdapter
        '
        Me.ListZahvati_byDateTableAdapter.ClearBeforeFill = True
        '
        'frmPac
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(592, 374)
        Me.Controls.Add(Me.btnRefresh)
        Me.Controls.Add(Me.btnDel)
        Me.Controls.Add(Me.btnChange)
        Me.Controls.Add(Me.btnAdd)
        Me.Controls.Add(Me.btnClose)
        Me.Controls.Add(Me.tabIzvjestaj)
        Me.Controls.Add(Me.PictureBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow
        Me.MaximizeBox = False
        Me.MaximumSize = New System.Drawing.Size(900, 430)
        Me.MinimizeBox = False
        Me.MinimumSize = New System.Drawing.Size(600, 400)
        Me.Name = "frmPac"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Pacijenti"
        CType(Me.ListPacjentiBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ListZahvatibyDateBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.tabIzvjestaj.ResumeLayout(False)
        Me.tabPac.ResumeLayout(False)
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.dbGridPac, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PartBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage2.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        CType(Me.pacjentBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents tabIzvjestaj As System.Windows.Forms.TabControl
    Friend WithEvents tabPac As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents btnClose As System.Windows.Forms.Button
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents dbGridPac As System.Windows.Forms.DataGridView
    Friend WithEvents txtParticipacija As System.Windows.Forms.ComboBox
    Friend WithEvents txtMail As System.Windows.Forms.TextBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents txtJMBG As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtAdresa As System.Windows.Forms.TextBox
    Friend WithEvents txtIme As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents btnAdd As System.Windows.Forms.Button
    Friend WithEvents btnChange As System.Windows.Forms.Button
    Friend WithEvents btnDel As System.Windows.Forms.Button
    Friend WithEvents DentistDataSet As WindowsApplication7.dentistDataSet
    Friend WithEvents ListPacjentiBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents ListPacjentiTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.ListPacjentiTableAdapter
    Friend WithEvents IdpacDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ImeprezDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents IdosobnaDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents StatusDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents PartDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents AdresaDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents MailDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents OtvaranjeDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents PartBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents PartTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.partTableAdapter
    Friend WithEvents lstPacLjec As System.Windows.Forms.ListBox
    Friend WithEvents Report As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents PacjentTableAdapter1 As WindowsApplication7.dentistDataSetTableAdapters.pacjentTableAdapter
    Friend WithEvents btnRefresh As System.Windows.Forms.Button
    Friend WithEvents pacjentBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents pacjentTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.pacjentTableAdapter
    Friend WithEvents ListZahvatibyDateBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents ListZahvati_byDateTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.ListZahvati_byDateTableAdapter
End Class
