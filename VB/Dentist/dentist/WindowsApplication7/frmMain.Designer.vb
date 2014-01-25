<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmMain
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmMain))
        Me.statBar = New System.Windows.Forms.StatusStrip
        Me.statConnect = New System.Windows.Forms.ToolStripStatusLabel
        Me.statDoktor = New System.Windows.Forms.ToolStripStatusLabel
        Me.mnuStrip = New System.Windows.Forms.MenuStrip
        Me.mnuDent = New System.Windows.Forms.ToolStripMenuItem
        Me.mnuLogin = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolStripMenuItem1 = New System.Windows.Forms.ToolStripSeparator
        Me.ZahvatiToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ParticipacijaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.LjeèniciToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolStripMenuItem2 = New System.Windows.Forms.ToolStripSeparator
        Me.PacjentiToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolStripMenuItem3 = New System.Windows.Forms.ToolStripSeparator
        Me.IzlazToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.StatistikaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.PomocToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.OProgramuToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.TabControl1 = New System.Windows.Forms.TabControl
        Me.TabPage1 = New System.Windows.Forms.TabPage
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.dbGridPac = New System.Windows.Forms.DataGridView
        Me.IdpacDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.ImeprezDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.IdosobnaDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.StatusDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.PartDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.AdresaDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.MailDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.OtvaranjeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.ListPacjentiBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DentistDataSet = New WindowsApplication7.dentistDataSet
        Me.Panel1 = New System.Windows.Forms.Panel
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.grpKomentar = New System.Windows.Forms.GroupBox
        Me.txtComent = New System.Windows.Forms.TextBox
        Me.lblPart = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.lblCijena = New System.Windows.Forms.Label
        Me.lblSum = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.btnRacun = New System.Windows.Forms.Button
        Me.btnRezerviraj = New System.Windows.Forms.Button
        Me.lstLjecZah = New System.Windows.Forms.CheckedListBox
        Me.ToolStrip1 = New System.Windows.Forms.ToolStrip
        Me.btnRefresh = New System.Windows.Forms.ToolStripButton
        Me.btnKarton = New System.Windows.Forms.ToolStripButton
        Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator
        Me.ToolStripLabel1 = New System.Windows.Forms.ToolStripLabel
        Me.txtPacjent = New System.Windows.Forms.ToolStripTextBox
        Me.btnSearchPac = New System.Windows.Forms.ToolStripButton
        Me.ToolStripLabel2 = New System.Windows.Forms.ToolStripLabel
        Me.txtBroj = New System.Windows.Forms.ToolStripTextBox
        Me.btnSearcBr = New System.Windows.Forms.ToolStripButton
        Me.TabPage2 = New System.Windows.Forms.TabPage
        Me.GroupBox3 = New System.Windows.Forms.GroupBox
        Me.GroupBox5 = New System.Windows.Forms.GroupBox
        Me.lblCijenaRez = New System.Windows.Forms.Label
        Me.lblPartRez = New System.Windows.Forms.Label
        Me.Label12 = New System.Windows.Forms.Label
        Me.lblSumRez = New System.Windows.Forms.Label
        Me.Label11 = New System.Windows.Forms.Label
        Me.Label10 = New System.Windows.Forms.Label
        Me.txtKomRez = New System.Windows.Forms.TextBox
        Me.Label9 = New System.Windows.Forms.Label
        Me.btnPacChange = New System.Windows.Forms.Button
        Me.btnPacDolazak = New System.Windows.Forms.Button
        Me.lstRezZah = New System.Windows.Forms.CheckedListBox
        Me.Label8 = New System.Windows.Forms.Label
        Me.lblBrojRez = New System.Windows.Forms.Label
        Me.Label6 = New System.Windows.Forms.Label
        Me.lblImeRez = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.GBRaspored = New System.Windows.Forms.GroupBox
        Me.lblTermin = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.lstRaspored = New System.Windows.Forms.ListView
        Me.btnDelRez = New System.Windows.Forms.Button
        Me.btnAddRez = New System.Windows.Forms.Button
        Me.Kalendar = New System.Windows.Forms.MonthCalendar
        Me.DetRasporedBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.ListPacjentiTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.ListPacjentiTableAdapter
        Me.Det_RasporedTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.Det_RasporedTableAdapter
        Me.statBar.SuspendLayout()
        Me.mnuStrip.SuspendLayout()
        Me.TabControl1.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.dbGridPac, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ListPacjentiBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel1.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        Me.grpKomentar.SuspendLayout()
        Me.ToolStrip1.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.GroupBox5.SuspendLayout()
        Me.GBRaspored.SuspendLayout()
        CType(Me.DetRasporedBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'statBar
        '
        Me.statBar.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.statConnect, Me.statDoktor})
        Me.statBar.Location = New System.Drawing.Point(0, 394)
        Me.statBar.Name = "statBar"
        Me.statBar.Size = New System.Drawing.Size(599, 22)
        Me.statBar.TabIndex = 0
        Me.statBar.Text = "StatusStrip"
        '
        'statConnect
        '
        Me.statConnect.AutoSize = False
        Me.statConnect.BorderSides = System.Windows.Forms.ToolStripStatusLabelBorderSides.Right
        Me.statConnect.BorderStyle = System.Windows.Forms.Border3DStyle.Etched
        Me.statConnect.Name = "statConnect"
        Me.statConnect.Size = New System.Drawing.Size(120, 17)
        Me.statConnect.Text = "Server:"
        Me.statConnect.TextDirection = System.Windows.Forms.ToolStripTextDirection.Horizontal
        '
        'statDoktor
        '
        Me.statDoktor.BorderStyle = System.Windows.Forms.Border3DStyle.Etched
        Me.statDoktor.Name = "statDoktor"
        Me.statDoktor.Size = New System.Drawing.Size(43, 17)
        Me.statDoktor.Text = "Doktor:"
        '
        'mnuStrip
        '
        Me.mnuStrip.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuDent, Me.StatistikaToolStripMenuItem, Me.PomocToolStripMenuItem})
        Me.mnuStrip.Location = New System.Drawing.Point(0, 0)
        Me.mnuStrip.Name = "mnuStrip"
        Me.mnuStrip.Size = New System.Drawing.Size(599, 24)
        Me.mnuStrip.TabIndex = 1
        Me.mnuStrip.Text = "MenuStrip1"
        '
        'mnuDent
        '
        Me.mnuDent.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuLogin, Me.ToolStripMenuItem1, Me.ZahvatiToolStripMenuItem, Me.ParticipacijaToolStripMenuItem, Me.LjeèniciToolStripMenuItem, Me.ToolStripMenuItem2, Me.PacjentiToolStripMenuItem, Me.ToolStripMenuItem3, Me.IzlazToolStripMenuItem})
        Me.mnuDent.Name = "mnuDent"
        Me.mnuDent.Size = New System.Drawing.Size(53, 20)
        Me.mnuDent.Text = "&Dentist"
        '
        'mnuLogin
        '
        Me.mnuLogin.Name = "mnuLogin"
        Me.mnuLogin.Size = New System.Drawing.Size(167, 22)
        Me.mnuLogin.Text = "&Logiranje ljecnika"
        '
        'ToolStripMenuItem1
        '
        Me.ToolStripMenuItem1.Name = "ToolStripMenuItem1"
        Me.ToolStripMenuItem1.Size = New System.Drawing.Size(164, 6)
        '
        'ZahvatiToolStripMenuItem
        '
        Me.ZahvatiToolStripMenuItem.Name = "ZahvatiToolStripMenuItem"
        Me.ZahvatiToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.ZahvatiToolStripMenuItem.Text = "&Zahvati"
        '
        'ParticipacijaToolStripMenuItem
        '
        Me.ParticipacijaToolStripMenuItem.Name = "ParticipacijaToolStripMenuItem"
        Me.ParticipacijaToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.ParticipacijaToolStripMenuItem.Text = "&Participacija"
        '
        'LjeèniciToolStripMenuItem
        '
        Me.LjeèniciToolStripMenuItem.Name = "LjeèniciToolStripMenuItem"
        Me.LjeèniciToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.LjeèniciToolStripMenuItem.Text = "&Lijecnici"
        '
        'ToolStripMenuItem2
        '
        Me.ToolStripMenuItem2.Name = "ToolStripMenuItem2"
        Me.ToolStripMenuItem2.Size = New System.Drawing.Size(164, 6)
        '
        'PacjentiToolStripMenuItem
        '
        Me.PacjentiToolStripMenuItem.Name = "PacjentiToolStripMenuItem"
        Me.PacjentiToolStripMenuItem.ShortcutKeys = CType((System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.P), System.Windows.Forms.Keys)
        Me.PacjentiToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.PacjentiToolStripMenuItem.Text = "&Pacijenti"
        '
        'ToolStripMenuItem3
        '
        Me.ToolStripMenuItem3.Name = "ToolStripMenuItem3"
        Me.ToolStripMenuItem3.Size = New System.Drawing.Size(164, 6)
        '
        'IzlazToolStripMenuItem
        '
        Me.IzlazToolStripMenuItem.Name = "IzlazToolStripMenuItem"
        Me.IzlazToolStripMenuItem.ShortcutKeys = CType((System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.X), System.Windows.Forms.Keys)
        Me.IzlazToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.IzlazToolStripMenuItem.Text = "&Izlaz"
        '
        'StatistikaToolStripMenuItem
        '
        Me.StatistikaToolStripMenuItem.Name = "StatistikaToolStripMenuItem"
        Me.StatistikaToolStripMenuItem.Size = New System.Drawing.Size(63, 20)
        Me.StatistikaToolStripMenuItem.Text = "Statistika"
        '
        'PomocToolStripMenuItem
        '
        Me.PomocToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.OProgramuToolStripMenuItem})
        Me.PomocToolStripMenuItem.Name = "PomocToolStripMenuItem"
        Me.PomocToolStripMenuItem.Size = New System.Drawing.Size(50, 20)
        Me.PomocToolStripMenuItem.Text = "Pomoc"
        '
        'OProgramuToolStripMenuItem
        '
        Me.OProgramuToolStripMenuItem.Name = "OProgramuToolStripMenuItem"
        Me.OProgramuToolStripMenuItem.Size = New System.Drawing.Size(142, 22)
        Me.OProgramuToolStripMenuItem.Text = "O programu"
        '
        'TabControl1
        '
        Me.TabControl1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.TabControl1.Appearance = System.Windows.Forms.TabAppearance.FlatButtons
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Location = New System.Drawing.Point(0, 27)
        Me.TabControl1.Multiline = True
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(598, 367)
        Me.TabControl1.TabIndex = 2
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.GroupBox2)
        Me.TabPage1.Controls.Add(Me.Panel1)
        Me.TabPage1.Controls.Add(Me.ToolStrip1)
        Me.TabPage1.Location = New System.Drawing.Point(4, 25)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(590, 338)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "Dolazak pacjenta"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.dbGridPac)
        Me.GroupBox2.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox2.Location = New System.Drawing.Point(3, 28)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(430, 307)
        Me.GroupBox2.TabIndex = 23
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Pacijenti"
        '
        'dbGridPac
        '
        Me.dbGridPac.AllowUserToAddRows = False
        Me.dbGridPac.AllowUserToDeleteRows = False
        Me.dbGridPac.AutoGenerateColumns = False
        Me.dbGridPac.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.dbGridPac.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dbGridPac.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdpacDataGridViewTextBoxColumn, Me.ImeprezDataGridViewTextBoxColumn, Me.IdosobnaDataGridViewTextBoxColumn, Me.StatusDataGridViewTextBoxColumn, Me.PartDataGridViewTextBoxColumn, Me.AdresaDataGridViewTextBoxColumn, Me.MailDataGridViewTextBoxColumn, Me.OtvaranjeDataGridViewTextBoxColumn})
        Me.dbGridPac.DataSource = Me.ListPacjentiBindingSource
        Me.dbGridPac.Dock = System.Windows.Forms.DockStyle.Fill
        Me.dbGridPac.Location = New System.Drawing.Point(3, 16)
        Me.dbGridPac.MultiSelect = False
        Me.dbGridPac.Name = "dbGridPac"
        Me.dbGridPac.ReadOnly = True
        Me.dbGridPac.RowHeadersWidth = 25
        Me.dbGridPac.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dbGridPac.Size = New System.Drawing.Size(424, 288)
        Me.dbGridPac.TabIndex = 0
        '
        'IdpacDataGridViewTextBoxColumn
        '
        Me.IdpacDataGridViewTextBoxColumn.DataPropertyName = "id_pac"
        Me.IdpacDataGridViewTextBoxColumn.FillWeight = 20.0!
        Me.IdpacDataGridViewTextBoxColumn.HeaderText = "ID"
        Me.IdpacDataGridViewTextBoxColumn.Name = "IdpacDataGridViewTextBoxColumn"
        Me.IdpacDataGridViewTextBoxColumn.ReadOnly = True
        Me.IdpacDataGridViewTextBoxColumn.Width = 30
        '
        'ImeprezDataGridViewTextBoxColumn
        '
        Me.ImeprezDataGridViewTextBoxColumn.DataPropertyName = "ime_prez"
        Me.ImeprezDataGridViewTextBoxColumn.HeaderText = "Ime, prezime"
        Me.ImeprezDataGridViewTextBoxColumn.Name = "ImeprezDataGridViewTextBoxColumn"
        Me.ImeprezDataGridViewTextBoxColumn.ReadOnly = True
        '
        'IdosobnaDataGridViewTextBoxColumn
        '
        Me.IdosobnaDataGridViewTextBoxColumn.DataPropertyName = "id_osobna"
        Me.IdosobnaDataGridViewTextBoxColumn.FillWeight = 150.0!
        Me.IdosobnaDataGridViewTextBoxColumn.HeaderText = "Br. osigurane osobe"
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
        '
        'PartDataGridViewTextBoxColumn
        '
        Me.PartDataGridViewTextBoxColumn.DataPropertyName = "part"
        Me.PartDataGridViewTextBoxColumn.HeaderText = "%"
        Me.PartDataGridViewTextBoxColumn.Name = "PartDataGridViewTextBoxColumn"
        Me.PartDataGridViewTextBoxColumn.ReadOnly = True
        Me.PartDataGridViewTextBoxColumn.ToolTipText = "Participacija [%]"
        Me.PartDataGridViewTextBoxColumn.Width = 20
        '
        'AdresaDataGridViewTextBoxColumn
        '
        Me.AdresaDataGridViewTextBoxColumn.DataPropertyName = "adresa"
        Me.AdresaDataGridViewTextBoxColumn.FillWeight = 70.0!
        Me.AdresaDataGridViewTextBoxColumn.HeaderText = "Adresa"
        Me.AdresaDataGridViewTextBoxColumn.Name = "AdresaDataGridViewTextBoxColumn"
        Me.AdresaDataGridViewTextBoxColumn.ReadOnly = True
        '
        'MailDataGridViewTextBoxColumn
        '
        Me.MailDataGridViewTextBoxColumn.DataPropertyName = "mail"
        Me.MailDataGridViewTextBoxColumn.FillWeight = 70.0!
        Me.MailDataGridViewTextBoxColumn.HeaderText = "e-mail"
        Me.MailDataGridViewTextBoxColumn.Name = "MailDataGridViewTextBoxColumn"
        Me.MailDataGridViewTextBoxColumn.ReadOnly = True
        '
        'OtvaranjeDataGridViewTextBoxColumn
        '
        Me.OtvaranjeDataGridViewTextBoxColumn.DataPropertyName = "otvaranje"
        Me.OtvaranjeDataGridViewTextBoxColumn.FillWeight = 70.0!
        Me.OtvaranjeDataGridViewTextBoxColumn.HeaderText = "datum otvaranja"
        Me.OtvaranjeDataGridViewTextBoxColumn.Name = "OtvaranjeDataGridViewTextBoxColumn"
        Me.OtvaranjeDataGridViewTextBoxColumn.ReadOnly = True
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
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.GroupBox1)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Right
        Me.Panel1.Location = New System.Drawing.Point(433, 28)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(154, 307)
        Me.Panel1.TabIndex = 22
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.grpKomentar)
        Me.GroupBox1.Controls.Add(Me.lblPart)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.lblCijena)
        Me.GroupBox1.Controls.Add(Me.lblSum)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.btnRacun)
        Me.GroupBox1.Controls.Add(Me.btnRezerviraj)
        Me.GroupBox1.Controls.Add(Me.lstLjecZah)
        Me.GroupBox1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox1.Location = New System.Drawing.Point(0, 0)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(154, 307)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Odabir zahvata"
        '
        'grpKomentar
        '
        Me.grpKomentar.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.grpKomentar.Controls.Add(Me.txtComent)
        Me.grpKomentar.Location = New System.Drawing.Point(0, 207)
        Me.grpKomentar.Name = "grpKomentar"
        Me.grpKomentar.Size = New System.Drawing.Size(154, 15)
        Me.grpKomentar.TabIndex = 41
        Me.grpKomentar.TabStop = False
        Me.grpKomentar.Text = "Komentar za zahvat"
        '
        'txtComent
        '
        Me.txtComent.Dock = System.Windows.Forms.DockStyle.Fill
        Me.txtComent.Location = New System.Drawing.Point(3, 16)
        Me.txtComent.MaxLength = 1000
        Me.txtComent.Multiline = True
        Me.txtComent.Name = "txtComent"
        Me.txtComent.ScrollBars = System.Windows.Forms.ScrollBars.Horizontal
        Me.txtComent.Size = New System.Drawing.Size(148, 0)
        Me.txtComent.TabIndex = 2
        '
        'lblPart
        '
        Me.lblPart.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.lblPart.Location = New System.Drawing.Point(79, 244)
        Me.lblPart.Name = "lblPart"
        Me.lblPart.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.lblPart.Size = New System.Drawing.Size(69, 13)
        Me.lblPart.TabIndex = 40
        Me.lblPart.Text = "0.00"
        Me.lblPart.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'Label2
        '
        Me.Label2.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(6, 244)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(67, 13)
        Me.Label2.TabIndex = 40
        Me.Label2.Text = "Participacija:"
        '
        'lblCijena
        '
        Me.lblCijena.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.lblCijena.Location = New System.Drawing.Point(82, 262)
        Me.lblCijena.Name = "lblCijena"
        Me.lblCijena.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.lblCijena.Size = New System.Drawing.Size(66, 13)
        Me.lblCijena.TabIndex = 40
        Me.lblCijena.Text = "0.00"
        Me.lblCijena.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'lblSum
        '
        Me.lblSum.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.lblSum.Location = New System.Drawing.Point(77, 231)
        Me.lblSum.Name = "lblSum"
        Me.lblSum.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.lblSum.Size = New System.Drawing.Size(71, 13)
        Me.lblSum.TabIndex = 40
        Me.lblSum.Text = "0.00"
        Me.lblSum.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'Label4
        '
        Me.Label4.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(6, 262)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(39, 13)
        Me.Label4.TabIndex = 40
        Me.Label4.Text = "Cijena:"
        '
        'Label1
        '
        Me.Label1.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(6, 231)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(37, 13)
        Me.Label1.TabIndex = 40
        Me.Label1.Text = "Suma:"
        '
        'btnRacun
        '
        Me.btnRacun.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.btnRacun.Location = New System.Drawing.Point(0, 278)
        Me.btnRacun.Name = "btnRacun"
        Me.btnRacun.Size = New System.Drawing.Size(77, 26)
        Me.btnRacun.TabIndex = 3
        Me.btnRacun.Text = "Izdaj racun"
        Me.btnRacun.UseVisualStyleBackColor = True
        '
        'btnRezerviraj
        '
        Me.btnRezerviraj.Anchor = System.Windows.Forms.AnchorStyles.Bottom
        Me.btnRezerviraj.Location = New System.Drawing.Point(77, 278)
        Me.btnRezerviraj.Name = "btnRezerviraj"
        Me.btnRezerviraj.Size = New System.Drawing.Size(77, 26)
        Me.btnRezerviraj.TabIndex = 4
        Me.btnRezerviraj.Text = "Rezerviraj"
        Me.btnRezerviraj.UseVisualStyleBackColor = True
        '
        'lstLjecZah
        '
        Me.lstLjecZah.Anchor = System.Windows.Forms.AnchorStyles.Top
        Me.lstLjecZah.FormattingEnabled = True
        Me.lstLjecZah.Location = New System.Drawing.Point(0, 17)
        Me.lstLjecZah.Name = "lstLjecZah"
        Me.lstLjecZah.RightToLeft = System.Windows.Forms.RightToLeft.No
        Me.lstLjecZah.Size = New System.Drawing.Size(154, 184)
        Me.lstLjecZah.TabIndex = 1
        '
        'ToolStrip1
        '
        Me.ToolStrip1.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden
        Me.ToolStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.btnRefresh, Me.btnKarton, Me.ToolStripSeparator1, Me.ToolStripLabel1, Me.txtPacjent, Me.btnSearchPac, Me.ToolStripLabel2, Me.txtBroj, Me.btnSearcBr})
        Me.ToolStrip1.LayoutStyle = System.Windows.Forms.ToolStripLayoutStyle.HorizontalStackWithOverflow
        Me.ToolStrip1.Location = New System.Drawing.Point(3, 3)
        Me.ToolStrip1.Name = "ToolStrip1"
        Me.ToolStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.System
        Me.ToolStrip1.Size = New System.Drawing.Size(584, 25)
        Me.ToolStrip1.TabIndex = 21
        Me.ToolStrip1.Text = "ToolStrip1"
        '
        'btnRefresh
        '
        Me.btnRefresh.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.btnRefresh.Image = Global.WindowsApplication7.My.Resources.Resources.reload
        Me.btnRefresh.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnRefresh.Name = "btnRefresh"
        Me.btnRefresh.Size = New System.Drawing.Size(23, 22)
        Me.btnRefresh.Text = "Osvjezi"
        '
        'btnKarton
        '
        Me.btnKarton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.btnKarton.Image = Global.WindowsApplication7.My.Resources.Resources.Users_Folder
        Me.btnKarton.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnKarton.Name = "btnKarton"
        Me.btnKarton.Size = New System.Drawing.Size(23, 22)
        Me.btnKarton.Text = "Karton"
        '
        'ToolStripSeparator1
        '
        Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
        Me.ToolStripSeparator1.Size = New System.Drawing.Size(6, 25)
        '
        'ToolStripLabel1
        '
        Me.ToolStripLabel1.Name = "ToolStripLabel1"
        Me.ToolStripLabel1.Size = New System.Drawing.Size(50, 22)
        Me.ToolStripLabel1.Text = "Pacjent: "
        '
        'txtPacjent
        '
        Me.txtPacjent.Name = "txtPacjent"
        Me.txtPacjent.Size = New System.Drawing.Size(150, 25)
        '
        'btnSearchPac
        '
        Me.btnSearchPac.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.btnSearchPac.Image = Global.WindowsApplication7.My.Resources.Resources.search
        Me.btnSearchPac.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnSearchPac.Name = "btnSearchPac"
        Me.btnSearchPac.Size = New System.Drawing.Size(23, 22)
        Me.btnSearchPac.Text = "Pretrazivanje prema sadrzaju imena/prezimena"
        '
        'ToolStripLabel2
        '
        Me.ToolStripLabel2.Name = "ToolStripLabel2"
        Me.ToolStripLabel2.Size = New System.Drawing.Size(112, 22)
        Me.ToolStripLabel2.Text = "Broj osigurane osobe:"
        '
        'txtBroj
        '
        Me.txtBroj.Name = "txtBroj"
        Me.txtBroj.Size = New System.Drawing.Size(150, 25)
        '
        'btnSearcBr
        '
        Me.btnSearcBr.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.btnSearcBr.Image = Global.WindowsApplication7.My.Resources.Resources.search
        Me.btnSearcBr.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.btnSearcBr.Name = "btnSearcBr"
        Me.btnSearcBr.Size = New System.Drawing.Size(23, 22)
        Me.btnSearcBr.Text = "Pretrazi prema broju osigurane osobe"
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.GroupBox3)
        Me.TabPage2.Location = New System.Drawing.Point(4, 25)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(590, 338)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "Rezervacija"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.GroupBox5)
        Me.GroupBox3.Controls.Add(Me.GBRaspored)
        Me.GroupBox3.Controls.Add(Me.Kalendar)
        Me.GroupBox3.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox3.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(584, 332)
        Me.GroupBox3.TabIndex = 0
        Me.GroupBox3.TabStop = False
        '
        'GroupBox5
        '
        Me.GroupBox5.Anchor = CType(((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox5.Controls.Add(Me.lblCijenaRez)
        Me.GroupBox5.Controls.Add(Me.lblPartRez)
        Me.GroupBox5.Controls.Add(Me.Label12)
        Me.GroupBox5.Controls.Add(Me.lblSumRez)
        Me.GroupBox5.Controls.Add(Me.Label11)
        Me.GroupBox5.Controls.Add(Me.Label10)
        Me.GroupBox5.Controls.Add(Me.txtKomRez)
        Me.GroupBox5.Controls.Add(Me.Label9)
        Me.GroupBox5.Controls.Add(Me.btnPacChange)
        Me.GroupBox5.Controls.Add(Me.btnPacDolazak)
        Me.GroupBox5.Controls.Add(Me.lstRezZah)
        Me.GroupBox5.Controls.Add(Me.Label8)
        Me.GroupBox5.Controls.Add(Me.lblBrojRez)
        Me.GroupBox5.Controls.Add(Me.Label6)
        Me.GroupBox5.Controls.Add(Me.lblImeRez)
        Me.GroupBox5.Controls.Add(Me.Label3)
        Me.GroupBox5.Location = New System.Drawing.Point(172, 137)
        Me.GroupBox5.Name = "GroupBox5"
        Me.GroupBox5.Size = New System.Drawing.Size(412, 195)
        Me.GroupBox5.TabIndex = 1
        Me.GroupBox5.TabStop = False
        Me.GroupBox5.Text = "Pacijent"
        '
        'lblCijenaRez
        '
        Me.lblCijenaRez.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.lblCijenaRez.Location = New System.Drawing.Point(346, 176)
        Me.lblCijenaRez.Name = "lblCijenaRez"
        Me.lblCijenaRez.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.lblCijenaRez.Size = New System.Drawing.Size(60, 13)
        Me.lblCijenaRez.TabIndex = 6
        Me.lblCijenaRez.Text = "00.00"
        '
        'lblPartRez
        '
        Me.lblPartRez.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.lblPartRez.Location = New System.Drawing.Point(339, 160)
        Me.lblPartRez.Name = "lblPartRez"
        Me.lblPartRez.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.lblPartRez.Size = New System.Drawing.Size(67, 13)
        Me.lblPartRez.TabIndex = 6
        Me.lblPartRez.Text = "00.00"
        '
        'Label12
        '
        Me.Label12.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(280, 176)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(39, 13)
        Me.Label12.TabIndex = 6
        Me.Label12.Text = "Cijena:"
        '
        'lblSumRez
        '
        Me.lblSumRez.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.lblSumRez.Location = New System.Drawing.Point(346, 144)
        Me.lblSumRez.Name = "lblSumRez"
        Me.lblSumRez.RightToLeft = System.Windows.Forms.RightToLeft.Yes
        Me.lblSumRez.Size = New System.Drawing.Size(60, 13)
        Me.lblSumRez.TabIndex = 6
        Me.lblSumRez.Text = "00.00"
        '
        'Label11
        '
        Me.Label11.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(280, 160)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(67, 13)
        Me.Label11.TabIndex = 6
        Me.Label11.Text = "Participacija:"
        '
        'Label10
        '
        Me.Label10.Anchor = System.Windows.Forms.AnchorStyles.Right
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(280, 144)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(37, 13)
        Me.Label10.TabIndex = 6
        Me.Label10.Text = "Suma:"
        '
        'txtKomRez
        '
        Me.txtKomRez.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.txtKomRez.Location = New System.Drawing.Point(9, 70)
        Me.txtKomRez.Multiline = True
        Me.txtKomRez.Name = "txtKomRez"
        Me.txtKomRez.ScrollBars = System.Windows.Forms.ScrollBars.Horizontal
        Me.txtKomRez.Size = New System.Drawing.Size(227, 71)
        Me.txtKomRez.TabIndex = 5
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(6, 54)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(93, 13)
        Me.Label9.TabIndex = 4
        Me.Label9.Text = "Komentar zahvata"
        '
        'btnPacChange
        '
        Me.btnPacChange.Location = New System.Drawing.Point(126, 163)
        Me.btnPacChange.Name = "btnPacChange"
        Me.btnPacChange.Size = New System.Drawing.Size(110, 26)
        Me.btnPacChange.TabIndex = 3
        Me.btnPacChange.Text = "Promjena"
        Me.btnPacChange.UseVisualStyleBackColor = True
        '
        'btnPacDolazak
        '
        Me.btnPacDolazak.Location = New System.Drawing.Point(9, 163)
        Me.btnPacDolazak.Name = "btnPacDolazak"
        Me.btnPacDolazak.Size = New System.Drawing.Size(110, 26)
        Me.btnPacDolazak.TabIndex = 3
        Me.btnPacDolazak.Text = "Izdaj racun"
        Me.btnPacDolazak.UseVisualStyleBackColor = True
        '
        'lstRezZah
        '
        Me.lstRezZah.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.lstRezZah.FormattingEnabled = True
        Me.lstRezZah.Location = New System.Drawing.Point(242, 32)
        Me.lstRezZah.Name = "lstRezZah"
        Me.lstRezZah.Size = New System.Drawing.Size(166, 109)
        Me.lstRezZah.TabIndex = 2
        '
        'Label8
        '
        Me.Label8.Anchor = CType((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(306, 16)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(97, 13)
        Me.Label8.TabIndex = 1
        Me.Label8.Text = "Rezervirani zahvati"
        '
        'lblBrojRez
        '
        Me.lblBrojRez.AutoSize = True
        Me.lblBrojRez.Location = New System.Drawing.Point(116, 32)
        Me.lblBrojRez.Name = "lblBrojRez"
        Me.lblBrojRez.Size = New System.Drawing.Size(0, 13)
        Me.lblBrojRez.TabIndex = 0
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(6, 32)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(104, 13)
        Me.Label6.TabIndex = 0
        Me.Label6.Text = "Br. osigurane osobe:"
        '
        'lblImeRez
        '
        Me.lblImeRez.AutoSize = True
        Me.lblImeRez.Location = New System.Drawing.Point(83, 16)
        Me.lblImeRez.Name = "lblImeRez"
        Me.lblImeRez.Size = New System.Drawing.Size(0, 13)
        Me.lblImeRez.TabIndex = 0
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(6, 16)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(71, 13)
        Me.Label3.TabIndex = 0
        Me.Label3.Text = "Ime i prezime:"
        '
        'GBRaspored
        '
        Me.GBRaspored.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GBRaspored.Controls.Add(Me.lblTermin)
        Me.GBRaspored.Controls.Add(Me.Label5)
        Me.GBRaspored.Controls.Add(Me.lstRaspored)
        Me.GBRaspored.Controls.Add(Me.btnDelRez)
        Me.GBRaspored.Controls.Add(Me.btnAddRez)
        Me.GBRaspored.Location = New System.Drawing.Point(172, 3)
        Me.GBRaspored.Name = "GBRaspored"
        Me.GBRaspored.Size = New System.Drawing.Size(412, 128)
        Me.GBRaspored.TabIndex = 1
        Me.GBRaspored.TabStop = False
        Me.GBRaspored.Text = "Raspored"
        '
        'lblTermin
        '
        Me.lblTermin.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.lblTermin.AutoSize = True
        Me.lblTermin.Location = New System.Drawing.Point(96, 103)
        Me.lblTermin.Name = "lblTermin"
        Me.lblTermin.Size = New System.Drawing.Size(34, 13)
        Me.lblTermin.TabIndex = 3
        Me.lblTermin.Text = "08-09"
        '
        'Label5
        '
        Me.Label5.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Left), System.Windows.Forms.AnchorStyles)
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(6, 103)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(84, 13)
        Me.Label5.TabIndex = 2
        Me.Label5.Text = "Odabrani termin:"
        '
        'lstRaspored
        '
        Me.lstRaspored.Activation = System.Windows.Forms.ItemActivation.OneClick
        Me.lstRaspored.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.lstRaspored.AutoArrange = False
        Me.lstRaspored.FullRowSelect = True
        Me.lstRaspored.GridLines = True
        Me.lstRaspored.HeaderStyle = System.Windows.Forms.ColumnHeaderStyle.Nonclickable
        Me.lstRaspored.HideSelection = False
        Me.lstRaspored.LabelWrap = False
        Me.lstRaspored.Location = New System.Drawing.Point(6, 13)
        Me.lstRaspored.MultiSelect = False
        Me.lstRaspored.Name = "lstRaspored"
        Me.lstRaspored.Size = New System.Drawing.Size(402, 78)
        Me.lstRaspored.TabIndex = 1
        Me.lstRaspored.UseCompatibleStateImageBehavior = False
        Me.lstRaspored.View = System.Windows.Forms.View.Details
        '
        'btnDelRez
        '
        Me.btnDelRez.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btnDelRez.Location = New System.Drawing.Point(298, 97)
        Me.btnDelRez.Name = "btnDelRez"
        Me.btnDelRez.Size = New System.Drawing.Size(110, 25)
        Me.btnDelRez.TabIndex = 0
        Me.btnDelRez.Text = "Obrisi rezervaciju"
        Me.btnDelRez.UseVisualStyleBackColor = True
        '
        'btnAddRez
        '
        Me.btnAddRez.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btnAddRez.Enabled = False
        Me.btnAddRez.Location = New System.Drawing.Point(182, 97)
        Me.btnAddRez.Name = "btnAddRez"
        Me.btnAddRez.Size = New System.Drawing.Size(110, 25)
        Me.btnAddRez.TabIndex = 0
        Me.btnAddRez.Text = "Potvrdi rezervaciju"
        Me.btnAddRez.UseVisualStyleBackColor = True
        '
        'Kalendar
        '
        Me.Kalendar.CalendarDimensions = New System.Drawing.Size(1, 2)
        Me.Kalendar.Dock = System.Windows.Forms.DockStyle.Left
        Me.Kalendar.Location = New System.Drawing.Point(3, 16)
        Me.Kalendar.MaxSelectionCount = 356
        Me.Kalendar.Name = "Kalendar"
        Me.Kalendar.ShowWeekNumbers = True
        Me.Kalendar.TabIndex = 0
        '
        'DetRasporedBindingSource
        '
        Me.DetRasporedBindingSource.DataMember = "Det_Raspored"
        Me.DetRasporedBindingSource.DataSource = Me.DentistDataSet
        '
        'ListPacjentiTableAdapter
        '
        Me.ListPacjentiTableAdapter.ClearBeforeFill = True
        '
        'Det_RasporedTableAdapter
        '
        Me.Det_RasporedTableAdapter.ClearBeforeFill = True
        '
        'frmMain
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(599, 416)
        Me.Controls.Add(Me.TabControl1)
        Me.Controls.Add(Me.statBar)
        Me.Controls.Add(Me.mnuStrip)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MainMenuStrip = Me.mnuStrip
        Me.MinimumSize = New System.Drawing.Size(600, 450)
        Me.Name = "frmMain"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Dentist"
        Me.statBar.ResumeLayout(False)
        Me.statBar.PerformLayout()
        Me.mnuStrip.ResumeLayout(False)
        Me.mnuStrip.PerformLayout()
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.TabPage1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        CType(Me.dbGridPac, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ListPacjentiBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel1.ResumeLayout(False)
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.grpKomentar.ResumeLayout(False)
        Me.grpKomentar.PerformLayout()
        Me.ToolStrip1.ResumeLayout(False)
        Me.ToolStrip1.PerformLayout()
        Me.TabPage2.ResumeLayout(False)
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox5.ResumeLayout(False)
        Me.GroupBox5.PerformLayout()
        Me.GBRaspored.ResumeLayout(False)
        Me.GBRaspored.PerformLayout()
        CType(Me.DetRasporedBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents statBar As System.Windows.Forms.StatusStrip
    Friend WithEvents mnuStrip As System.Windows.Forms.MenuStrip
    Friend WithEvents mnuDent As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ZahvatiToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ParticipacijaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents statConnect As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents statDoktor As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents LjeèniciToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents mnuLogin As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents PomocToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents OProgramuToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem2 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents IzlazToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents StatistikaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PacjentiToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem3 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents ToolStripSeparator1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents ToolStripLabel1 As System.Windows.Forms.ToolStripLabel
    Friend WithEvents txtPacjent As System.Windows.Forms.ToolStripTextBox
    Friend WithEvents ToolStripLabel2 As System.Windows.Forms.ToolStripLabel
    Friend WithEvents txtBroj As System.Windows.Forms.ToolStripTextBox
    Friend WithEvents ToolStrip1 As System.Windows.Forms.ToolStrip
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents btnRacun As System.Windows.Forms.Button
    Friend WithEvents btnRezerviraj As System.Windows.Forms.Button
    Friend WithEvents lstLjecZah As System.Windows.Forms.CheckedListBox
    Friend WithEvents lblPart As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents lblCijena As System.Windows.Forms.Label
    Friend WithEvents lblSum As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents dbGridPac As System.Windows.Forms.DataGridView
    Friend WithEvents btnKarton As System.Windows.Forms.ToolStripButton
    Friend WithEvents btnSearchPac As System.Windows.Forms.ToolStripButton
    Friend WithEvents btnSearcBr As System.Windows.Forms.ToolStripButton
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
    Friend WithEvents btnRefresh As System.Windows.Forms.ToolStripButton
    Friend WithEvents grpKomentar As System.Windows.Forms.GroupBox
    Friend WithEvents txtComent As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents Kalendar As System.Windows.Forms.MonthCalendar
    Friend WithEvents GBRaspored As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox5 As System.Windows.Forms.GroupBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents btnAddRez As System.Windows.Forms.Button
    Friend WithEvents lblBrojRez As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents lblImeRez As System.Windows.Forms.Label
    Friend WithEvents btnPacDolazak As System.Windows.Forms.Button
    Friend WithEvents lstRezZah As System.Windows.Forms.CheckedListBox
    Friend WithEvents btnDelRez As System.Windows.Forms.Button
    Friend WithEvents btnPacChange As System.Windows.Forms.Button
    Friend WithEvents txtKomRez As System.Windows.Forms.TextBox
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents lblCijenaRez As System.Windows.Forms.Label
    Friend WithEvents lblPartRez As System.Windows.Forms.Label
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents lblSumRez As System.Windows.Forms.Label
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents lstRaspored As System.Windows.Forms.ListView
    Friend WithEvents ImeprezDataGridViewTextBoxColumn1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DetRasporedBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents Det_RasporedTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.Det_RasporedTableAdapter
    Friend WithEvents lblTermin As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label

End Class
