<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmDoktori
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
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.btnClose = New System.Windows.Forms.Button
        Me.LjecnikBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DentistDataSet = New WindowsApplication7.dentistDataSet
        Me.ZahvatiBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.btnDel = New System.Windows.Forms.Button
        Me.btnChange = New System.Windows.Forms.Button
        Me.btnAdd = New System.Windows.Forms.Button
        Me.LjecnikTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.ljecnikTableAdapter
        Me.ZahvatiTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.zahvatiTableAdapter
        Me.tabDoc = New System.Windows.Forms.TabControl
        Me.TabPage1 = New System.Windows.Forms.TabPage
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.gridLjec = New System.Windows.Forms.DataGridView
        Me.IdljecDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.ImeprezDataGridViewTextBoxColumn1 = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.txtLjecnik = New System.Windows.Forms.TextBox
        Me.lstLZ = New System.Windows.Forms.CheckedListBox
        Me.Label4 = New System.Windows.Forms.Label
        Me.txtPass = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.TabPage2 = New System.Windows.Forms.TabPage
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.txtNewLjec = New System.Windows.Forms.ComboBox
        Me.LjecnikBindingSource1 = New System.Windows.Forms.BindingSource(Me.components)
        Me.btnMovePac = New System.Windows.Forms.Button
        Me.dbGridLPac = New System.Windows.Forms.DataGridView
        Me.IdpacDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.ImeprezDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.IdosobnaDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.AdresaDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.MailDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.OtvaranjeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn
        Me.PacjentBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.Label5 = New System.Windows.Forms.Label
        Me.lblLJecnik = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.PacjentTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.pacjentTableAdapter
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.LjecnikBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ZahvatiBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.tabDoc.SuspendLayout()
        Me.TabPage1.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        CType(Me.gridLjec, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage2.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.LjecnikBindingSource1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dbGridLPac, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PacjentBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'PictureBox1
        '
        Me.PictureBox1.Dock = System.Windows.Forms.DockStyle.Left
        Me.PictureBox1.Image = Global.WindowsApplication7.My.Resources.Resources.doktori
        Me.PictureBox1.Location = New System.Drawing.Point(0, 0)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(80, 319)
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'btnClose
        '
        Me.btnClose.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btnClose.Location = New System.Drawing.Point(465, 288)
        Me.btnClose.Name = "btnClose"
        Me.btnClose.Size = New System.Drawing.Size(65, 25)
        Me.btnClose.TabIndex = 6
        Me.btnClose.Text = "Zatvori"
        Me.btnClose.UseVisualStyleBackColor = True
        '
        'LjecnikBindingSource
        '
        Me.LjecnikBindingSource.DataMember = "ljecnik"
        Me.LjecnikBindingSource.DataSource = Me.DentistDataSet
        '
        'DentistDataSet
        '
        Me.DentistDataSet.DataSetName = "dentistDataSet"
        Me.DentistDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'ZahvatiBindingSource
        '
        Me.ZahvatiBindingSource.DataMember = "zahvati"
        Me.ZahvatiBindingSource.DataSource = Me.DentistDataSet
        '
        'btnDel
        '
        Me.btnDel.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btnDel.Location = New System.Drawing.Point(394, 288)
        Me.btnDel.Name = "btnDel"
        Me.btnDel.Size = New System.Drawing.Size(65, 25)
        Me.btnDel.TabIndex = 5
        Me.btnDel.Text = "Obrisi"
        Me.btnDel.UseVisualStyleBackColor = True
        '
        'btnChange
        '
        Me.btnChange.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btnChange.Location = New System.Drawing.Point(323, 288)
        Me.btnChange.Name = "btnChange"
        Me.btnChange.Size = New System.Drawing.Size(65, 25)
        Me.btnChange.TabIndex = 4
        Me.btnChange.Text = "Prihvati"
        Me.btnChange.UseVisualStyleBackColor = True
        '
        'btnAdd
        '
        Me.btnAdd.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.btnAdd.Location = New System.Drawing.Point(251, 288)
        Me.btnAdd.Name = "btnAdd"
        Me.btnAdd.Size = New System.Drawing.Size(65, 25)
        Me.btnAdd.TabIndex = 3
        Me.btnAdd.Text = "Novi"
        Me.btnAdd.UseVisualStyleBackColor = True
        '
        'LjecnikTableAdapter
        '
        Me.LjecnikTableAdapter.ClearBeforeFill = True
        '
        'ZahvatiTableAdapter
        '
        Me.ZahvatiTableAdapter.ClearBeforeFill = True
        '
        'tabDoc
        '
        Me.tabDoc.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.tabDoc.Appearance = System.Windows.Forms.TabAppearance.FlatButtons
        Me.tabDoc.Controls.Add(Me.TabPage1)
        Me.tabDoc.Controls.Add(Me.TabPage2)
        Me.tabDoc.Location = New System.Drawing.Point(86, 0)
        Me.tabDoc.Name = "tabDoc"
        Me.tabDoc.SelectedIndex = 0
        Me.tabDoc.Size = New System.Drawing.Size(449, 287)
        Me.tabDoc.TabIndex = 7
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.GroupBox1)
        Me.TabPage1.Location = New System.Drawing.Point(4, 25)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(441, 258)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "Lijecnici"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox1.Controls.Add(Me.gridLjec)
        Me.GroupBox1.Controls.Add(Me.txtLjecnik)
        Me.GroupBox1.Controls.Add(Me.lstLZ)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.txtPass)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(435, 252)
        Me.GroupBox1.TabIndex = 11
        Me.GroupBox1.TabStop = False
        '
        'gridLjec
        '
        Me.gridLjec.AllowUserToAddRows = False
        Me.gridLjec.AllowUserToDeleteRows = False
        Me.gridLjec.AutoGenerateColumns = False
        Me.gridLjec.BackgroundColor = System.Drawing.SystemColors.ActiveCaptionText
        Me.gridLjec.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.gridLjec.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdljecDataGridViewTextBoxColumn, Me.ImeprezDataGridViewTextBoxColumn1})
        Me.gridLjec.DataSource = Me.LjecnikBindingSource
        Me.gridLjec.Location = New System.Drawing.Point(12, 19)
        Me.gridLjec.MultiSelect = False
        Me.gridLjec.Name = "gridLjec"
        Me.gridLjec.ReadOnly = True
        Me.gridLjec.RowHeadersWidth = 15
        Me.gridLjec.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.gridLjec.Size = New System.Drawing.Size(174, 226)
        Me.gridLjec.TabIndex = 7
        '
        'IdljecDataGridViewTextBoxColumn
        '
        Me.IdljecDataGridViewTextBoxColumn.DataPropertyName = "id_ljec"
        Me.IdljecDataGridViewTextBoxColumn.FillWeight = 50.0!
        Me.IdljecDataGridViewTextBoxColumn.HeaderText = "ID"
        Me.IdljecDataGridViewTextBoxColumn.Name = "IdljecDataGridViewTextBoxColumn"
        Me.IdljecDataGridViewTextBoxColumn.ReadOnly = True
        Me.IdljecDataGridViewTextBoxColumn.Width = 30
        '
        'ImeprezDataGridViewTextBoxColumn1
        '
        Me.ImeprezDataGridViewTextBoxColumn1.DataPropertyName = "ime_prez"
        Me.ImeprezDataGridViewTextBoxColumn1.FillWeight = 150.0!
        Me.ImeprezDataGridViewTextBoxColumn1.HeaderText = "Ime, prezime"
        Me.ImeprezDataGridViewTextBoxColumn1.Name = "ImeprezDataGridViewTextBoxColumn1"
        Me.ImeprezDataGridViewTextBoxColumn1.ReadOnly = True
        Me.ImeprezDataGridViewTextBoxColumn1.Width = 120
        '
        'txtLjecnik
        '
        Me.txtLjecnik.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.LjecnikBindingSource, "ime_prez", True))
        Me.txtLjecnik.Location = New System.Drawing.Point(269, 19)
        Me.txtLjecnik.Name = "txtLjecnik"
        Me.txtLjecnik.Size = New System.Drawing.Size(159, 20)
        Me.txtLjecnik.TabIndex = 6
        '
        'lstLZ
        '
        Me.lstLZ.FormattingEnabled = True
        Me.lstLZ.Location = New System.Drawing.Point(197, 92)
        Me.lstLZ.Name = "lstLZ"
        Me.lstLZ.Size = New System.Drawing.Size(231, 154)
        Me.lstLZ.TabIndex = 2
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(193, 76)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(46, 13)
        Me.Label4.TabIndex = 5
        Me.Label4.Text = "Zahvati:"
        '
        'txtPass
        '
        Me.txtPass.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.LjecnikBindingSource, "lozinka", True))
        Me.txtPass.Location = New System.Drawing.Point(245, 45)
        Me.txtPass.MaxLength = 30
        Me.txtPass.Name = "txtPass"
        Me.txtPass.Size = New System.Drawing.Size(183, 20)
        Me.txtPass.TabIndex = 1
        Me.txtPass.UseSystemPasswordChar = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(192, 48)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(47, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Lozinka:"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(192, 22)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(71, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Ime i prezime:"
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.GroupBox2)
        Me.TabPage2.Location = New System.Drawing.Point(4, 25)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(441, 258)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "Kartoteka"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.txtNewLjec)
        Me.GroupBox2.Controls.Add(Me.btnMovePac)
        Me.GroupBox2.Controls.Add(Me.dbGridLPac)
        Me.GroupBox2.Controls.Add(Me.Label5)
        Me.GroupBox2.Controls.Add(Me.lblLJecnik)
        Me.GroupBox2.Controls.Add(Me.Label3)
        Me.GroupBox2.Dock = System.Windows.Forms.DockStyle.Fill
        Me.GroupBox2.Location = New System.Drawing.Point(3, 3)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(435, 252)
        Me.GroupBox2.TabIndex = 0
        Me.GroupBox2.TabStop = False
        '
        'txtNewLjec
        '
        Me.txtNewLjec.DataSource = Me.LjecnikBindingSource1
        Me.txtNewLjec.DisplayMember = "ime_prez"
        Me.txtNewLjec.FormattingEnabled = True
        Me.txtNewLjec.Location = New System.Drawing.Point(180, 214)
        Me.txtNewLjec.Name = "txtNewLjec"
        Me.txtNewLjec.Size = New System.Drawing.Size(249, 21)
        Me.txtNewLjec.TabIndex = 5
        '
        'LjecnikBindingSource1
        '
        Me.LjecnikBindingSource1.DataMember = "ljecnik"
        Me.LjecnikBindingSource1.DataSource = Me.DentistDataSet
        '
        'btnMovePac
        '
        Me.btnMovePac.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnMovePac.Location = New System.Drawing.Point(9, 210)
        Me.btnMovePac.Name = "btnMovePac"
        Me.btnMovePac.Size = New System.Drawing.Size(158, 26)
        Me.btnMovePac.TabIndex = 4
        Me.btnMovePac.Text = "Prenesi pacijente ljecniku ->"
        Me.btnMovePac.UseVisualStyleBackColor = True
        '
        'dbGridLPac
        '
        Me.dbGridLPac.AllowUserToAddRows = False
        Me.dbGridLPac.AllowUserToDeleteRows = False
        Me.dbGridLPac.AutoGenerateColumns = False
        Me.dbGridLPac.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D
        Me.dbGridLPac.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dbGridLPac.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdpacDataGridViewTextBoxColumn, Me.ImeprezDataGridViewTextBoxColumn, Me.IdosobnaDataGridViewTextBoxColumn, Me.AdresaDataGridViewTextBoxColumn, Me.MailDataGridViewTextBoxColumn, Me.OtvaranjeDataGridViewTextBoxColumn})
        Me.dbGridLPac.DataSource = Me.PacjentBindingSource
        Me.dbGridLPac.Location = New System.Drawing.Point(9, 54)
        Me.dbGridLPac.Name = "dbGridLPac"
        Me.dbGridLPac.ReadOnly = True
        Me.dbGridLPac.RowHeadersWidth = 20
        Me.dbGridLPac.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.dbGridLPac.Size = New System.Drawing.Size(420, 138)
        Me.dbGridLPac.TabIndex = 3
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
        Me.ImeprezDataGridViewTextBoxColumn.FillWeight = 50.0!
        Me.ImeprezDataGridViewTextBoxColumn.HeaderText = "Ime, Prezime"
        Me.ImeprezDataGridViewTextBoxColumn.Name = "ImeprezDataGridViewTextBoxColumn"
        Me.ImeprezDataGridViewTextBoxColumn.ReadOnly = True
        Me.ImeprezDataGridViewTextBoxColumn.Width = 120
        '
        'IdosobnaDataGridViewTextBoxColumn
        '
        Me.IdosobnaDataGridViewTextBoxColumn.DataPropertyName = "id_osobna"
        Me.IdosobnaDataGridViewTextBoxColumn.FillWeight = 40.0!
        Me.IdosobnaDataGridViewTextBoxColumn.HeaderText = "Br. kartice"
        Me.IdosobnaDataGridViewTextBoxColumn.Name = "IdosobnaDataGridViewTextBoxColumn"
        Me.IdosobnaDataGridViewTextBoxColumn.ReadOnly = True
        '
        'AdresaDataGridViewTextBoxColumn
        '
        Me.AdresaDataGridViewTextBoxColumn.DataPropertyName = "adresa"
        Me.AdresaDataGridViewTextBoxColumn.FillWeight = 50.0!
        Me.AdresaDataGridViewTextBoxColumn.HeaderText = "Adresa"
        Me.AdresaDataGridViewTextBoxColumn.Name = "AdresaDataGridViewTextBoxColumn"
        Me.AdresaDataGridViewTextBoxColumn.ReadOnly = True
        '
        'MailDataGridViewTextBoxColumn
        '
        Me.MailDataGridViewTextBoxColumn.DataPropertyName = "mail"
        Me.MailDataGridViewTextBoxColumn.FillWeight = 50.0!
        Me.MailDataGridViewTextBoxColumn.HeaderText = "Mail"
        Me.MailDataGridViewTextBoxColumn.Name = "MailDataGridViewTextBoxColumn"
        Me.MailDataGridViewTextBoxColumn.ReadOnly = True
        Me.MailDataGridViewTextBoxColumn.Width = 70
        '
        'OtvaranjeDataGridViewTextBoxColumn
        '
        Me.OtvaranjeDataGridViewTextBoxColumn.DataPropertyName = "otvaranje"
        Me.OtvaranjeDataGridViewTextBoxColumn.FillWeight = 50.0!
        Me.OtvaranjeDataGridViewTextBoxColumn.HeaderText = "Otvaranje"
        Me.OtvaranjeDataGridViewTextBoxColumn.Name = "OtvaranjeDataGridViewTextBoxColumn"
        Me.OtvaranjeDataGridViewTextBoxColumn.ReadOnly = True
        Me.OtvaranjeDataGridViewTextBoxColumn.Width = 50
        '
        'PacjentBindingSource
        '
        Me.PacjentBindingSource.DataMember = "pacjent"
        Me.PacjentBindingSource.DataSource = Me.DentistDataSet
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(6, 38)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(122, 13)
        Me.Label5.TabIndex = 2
        Me.Label5.Text = "Pacijenti koje ima ljecnik"
        '
        'lblLJecnik
        '
        Me.lblLJecnik.AutoSize = True
        Me.lblLJecnik.Location = New System.Drawing.Point(56, 16)
        Me.lblLJecnik.Name = "lblLJecnik"
        Me.lblLJecnik.Size = New System.Drawing.Size(27, 13)
        Me.lblLJecnik.TabIndex = 1
        Me.lblLJecnik.Text = "Dr..."
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(6, 16)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(44, 13)
        Me.Label3.TabIndex = 0
        Me.Label3.Text = "Ljecnik:"
        '
        'PacjentTableAdapter
        '
        Me.PacjentTableAdapter.ClearBeforeFill = True
        '
        'frmDoktori
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(535, 319)
        Me.Controls.Add(Me.tabDoc)
        Me.Controls.Add(Me.btnAdd)
        Me.Controls.Add(Me.btnChange)
        Me.Controls.Add(Me.btnDel)
        Me.Controls.Add(Me.btnClose)
        Me.Controls.Add(Me.PictureBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmDoktori"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Lijecnici"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.LjecnikBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ZahvatiBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.tabDoc.ResumeLayout(False)
        Me.TabPage1.ResumeLayout(False)
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.gridLjec, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage2.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.LjecnikBindingSource1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dbGridLPac, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PacjentBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents btnClose As System.Windows.Forms.Button
    Friend WithEvents btnDel As System.Windows.Forms.Button
    Friend WithEvents btnChange As System.Windows.Forms.Button
    Friend WithEvents btnAdd As System.Windows.Forms.Button
    Friend WithEvents DentistDataSet As WindowsApplication7.dentistDataSet
    Friend WithEvents LjecnikBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents LjecnikTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.ljecnikTableAdapter
    Friend WithEvents ZahvatiBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents ZahvatiTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.zahvatiTableAdapter
    Friend WithEvents tabDoc As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents lstLZ As System.Windows.Forms.CheckedListBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtPass As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents lblLJecnik As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents dbGridLPac As System.Windows.Forms.DataGridView
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents txtNewLjec As System.Windows.Forms.ComboBox
    Friend WithEvents btnMovePac As System.Windows.Forms.Button
    Friend WithEvents PacjentBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents PacjentTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.pacjentTableAdapter
    Friend WithEvents IdpacDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ImeprezDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents IdosobnaDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents AdresaDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents MailDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents OtvaranjeDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents gridLjec As System.Windows.Forms.DataGridView
    Friend WithEvents txtLjecnik As System.Windows.Forms.TextBox
    Friend WithEvents IdljecDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ImeprezDataGridViewTextBoxColumn1 As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents LjecnikBindingSource1 As System.Windows.Forms.BindingSource
End Class
