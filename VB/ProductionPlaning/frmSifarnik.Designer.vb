<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmSifarnik
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
        Me.TextBox8 = New System.Windows.Forms.TextBox
        Me.SifarnikBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DBDataSet = New ISP_pp.DBDataSet
        Me.Label10 = New System.Windows.Forms.Label
        Me.TextBox7 = New System.Windows.Forms.TextBox
        Me.Label9 = New System.Windows.Forms.Label
        Me.TextBox6 = New System.Windows.Forms.TextBox
        Me.TextBox5 = New System.Windows.Forms.TextBox
        Me.TextBox4 = New System.Windows.Forms.TextBox
        Me.Label7 = New System.Windows.Forms.Label
        Me.Label6 = New System.Windows.Forms.Label
        Me.Label8 = New System.Windows.Forms.Label
        Me.Label5 = New System.Windows.Forms.Label
        Me.ComboBox2 = New System.Windows.Forms.ComboBox
        Me.DobavljacBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.ComboBox1 = New System.Windows.Forms.ComboBox
        Me.MjernejedBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.Label4 = New System.Windows.Forms.Label
        Me.TextBox3 = New System.Windows.Forms.TextBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.TextBox2 = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.Button4 = New System.Windows.Forms.Button
        Me.Button3 = New System.Windows.Forms.Button
        Me.Button5 = New System.Windows.Forms.Button
        Me.Button2 = New System.Windows.Forms.Button
        Me.Button1 = New System.Windows.Forms.Button
        Me.ListBox1 = New System.Windows.Forms.ListBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.SifarnikTableAdapter = New ISP_pp.DBDataSetTableAdapters.sifarnikTableAdapter
        Me.Mjerne_jedTableAdapter = New ISP_pp.DBDataSetTableAdapters.mjerne_jedTableAdapter
        Me.DobavljacTableAdapter = New ISP_pp.DBDataSetTableAdapters.dobavljacTableAdapter
        Me.Label11 = New System.Windows.Forms.Label
        Me.Label12 = New System.Windows.Forms.Label
        Me.TextBox9 = New System.Windows.Forms.TextBox
        CType(Me.SifarnikBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DobavljacBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.MjernejedBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TextBox8
        '
        Me.TextBox8.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "opis", True))
        Me.TextBox8.Location = New System.Drawing.Point(202, 231)
        Me.TextBox8.Multiline = True
        Me.TextBox8.Name = "TextBox8"
        Me.TextBox8.Size = New System.Drawing.Size(230, 35)
        Me.TextBox8.TabIndex = 53
        '
        'SifarnikBindingSource
        '
        Me.SifarnikBindingSource.DataMember = "sifarnik"
        Me.SifarnikBindingSource.DataSource = Me.DBDataSet
        '
        'DBDataSet
        '
        Me.DBDataSet.DataSetName = "DBDataSet"
        Me.DBDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(119, 231)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(31, 13)
        Me.Label10.TabIndex = 52
        Me.Label10.Text = "Opis:"
        '
        'TextBox7
        '
        Me.TextBox7.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "lead_time", True))
        Me.TextBox7.Location = New System.Drawing.Point(201, 200)
        Me.TextBox7.Name = "TextBox7"
        Me.TextBox7.Size = New System.Drawing.Size(100, 20)
        Me.TextBox7.TabIndex = 51
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(115, 203)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(60, 13)
        Me.Label9.TabIndex = 50
        Me.Label9.Text = "Lead Time:"
        '
        'TextBox6
        '
        Me.TextBox6.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "min_zalihe", True))
        Me.TextBox6.Location = New System.Drawing.Point(201, 149)
        Me.TextBox6.Name = "TextBox6"
        Me.TextBox6.Size = New System.Drawing.Size(102, 20)
        Me.TextBox6.TabIndex = 47
        '
        'TextBox5
        '
        Me.TextBox5.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "zalihe", True))
        Me.TextBox5.Location = New System.Drawing.Point(201, 123)
        Me.TextBox5.Name = "TextBox5"
        Me.TextBox5.Size = New System.Drawing.Size(102, 20)
        Me.TextBox5.TabIndex = 48
        '
        'TextBox4
        '
        Me.TextBox4.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "vel_serije", True))
        Me.TextBox4.Location = New System.Drawing.Point(201, 97)
        Me.TextBox4.Name = "TextBox4"
        Me.TextBox4.Size = New System.Drawing.Size(102, 20)
        Me.TextBox4.TabIndex = 49
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(115, 152)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(57, 13)
        Me.Label7.TabIndex = 46
        Me.Label7.Text = "Min zalihe:"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(115, 126)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(39, 13)
        Me.Label6.TabIndex = 45
        Me.Label6.Text = "Zalihe:"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(115, 100)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(74, 13)
        Me.Label8.TabIndex = 44
        Me.Label8.Text = "Veličina serije:"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(115, 178)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(58, 13)
        Me.Label5.TabIndex = 43
        Me.Label5.Text = "Dobavljač:"
        '
        'ComboBox2
        '
        Me.ComboBox2.DataBindings.Add(New System.Windows.Forms.Binding("SelectedValue", Me.SifarnikBindingSource, "id_dob", True))
        Me.ComboBox2.DataSource = Me.DobavljacBindingSource
        Me.ComboBox2.DisplayMember = "naziv"
        Me.ComboBox2.FormattingEnabled = True
        Me.ComboBox2.Location = New System.Drawing.Point(201, 175)
        Me.ComboBox2.Name = "ComboBox2"
        Me.ComboBox2.Size = New System.Drawing.Size(102, 21)
        Me.ComboBox2.TabIndex = 41
        Me.ComboBox2.ValueMember = "id_dob"
        '
        'DobavljacBindingSource
        '
        Me.DobavljacBindingSource.DataMember = "dobavljac"
        Me.DobavljacBindingSource.DataSource = Me.DBDataSet
        '
        'ComboBox1
        '
        Me.ComboBox1.DataBindings.Add(New System.Windows.Forms.Binding("SelectedValue", Me.SifarnikBindingSource, "mjer_jed", True))
        Me.ComboBox1.DataSource = Me.MjernejedBindingSource
        Me.ComboBox1.DisplayMember = "naziv"
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Location = New System.Drawing.Point(201, 67)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(102, 21)
        Me.ComboBox1.TabIndex = 42
        Me.ComboBox1.ValueMember = "mjer_jed"
        '
        'MjernejedBindingSource
        '
        Me.MjernejedBindingSource.DataMember = "mjerne_jed"
        Me.MjernejedBindingSource.DataSource = Me.DBDataSet
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(114, 70)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(81, 13)
        Me.Label4.TabIndex = 40
        Me.Label4.Text = "Mjerna jedinica:"
        '
        'TextBox3
        '
        Me.TextBox3.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "naziv", True))
        Me.TextBox3.Location = New System.Drawing.Point(191, 41)
        Me.TextBox3.MaxLength = 30
        Me.TextBox3.Name = "TextBox3"
        Me.TextBox3.Size = New System.Drawing.Size(241, 20)
        Me.TextBox3.TabIndex = 39
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(114, 44)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(68, 13)
        Me.Label3.TabIndex = 38
        Me.Label3.Text = "Naziv artikla:"
        '
        'TextBox2
        '
        Me.TextBox2.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "sif_art", True))
        Me.TextBox2.Location = New System.Drawing.Point(175, 13)
        Me.TextBox2.MaxLength = 8
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(89, 20)
        Me.TextBox2.TabIndex = 37
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(107, 16)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(62, 13)
        Me.Label2.TabIndex = 36
        Me.Label2.Text = "Šifra artikla:"
        '
        'TextBox1
        '
        Me.TextBox1.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "id_proj", True))
        Me.TextBox1.Location = New System.Drawing.Point(407, 323)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(22, 20)
        Me.TextBox1.TabIndex = 35
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(8, 279)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(124, 20)
        Me.Button4.TabIndex = 33
        Me.Button4.Text = "Dodaj novi artikal"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(138, 279)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(70, 20)
        Me.Button3.TabIndex = 34
        Me.Button3.Text = "Prihvati"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(291, 279)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(70, 20)
        Me.Button5.TabIndex = 32
        Me.Button5.Text = "Obriši"
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(215, 279)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(70, 20)
        Me.Button2.TabIndex = 30
        Me.Button2.Text = "Odustani"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(367, 279)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(70, 20)
        Me.Button1.TabIndex = 31
        Me.Button1.Text = "Zatvori"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'ListBox1
        '
        Me.ListBox1.DataSource = Me.SifarnikBindingSource
        Me.ListBox1.DisplayMember = "sif_art"
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(10, 16)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(91, 251)
        Me.ListBox1.TabIndex = 29
        Me.ListBox1.ValueMember = "id_art"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(0, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(59, 13)
        Me.Label1.TabIndex = 28
        Me.Label1.Text = "Sifra artikla"
        '
        'SifarnikTableAdapter
        '
        Me.SifarnikTableAdapter.ClearBeforeFill = True
        '
        'Mjerne_jedTableAdapter
        '
        Me.Mjerne_jedTableAdapter.ClearBeforeFill = True
        '
        'DobavljacTableAdapter
        '
        Me.DobavljacTableAdapter.ClearBeforeFill = True
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(315, 178)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(31, 13)
        Me.Label11.TabIndex = 54
        Me.Label11.Text = "Šifra:"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.DobavljacBindingSource, "sifra", True))
        Me.Label12.Location = New System.Drawing.Point(352, 178)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(21, 13)
        Me.Label12.TabIndex = 55
        Me.Label12.Text = "XX"
        '
        'TextBox9
        '
        Me.TextBox9.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.SifarnikBindingSource, "id_art", True))
        Me.TextBox9.Location = New System.Drawing.Point(367, 323)
        Me.TextBox9.Name = "TextBox9"
        Me.TextBox9.Size = New System.Drawing.Size(28, 20)
        Me.TextBox9.TabIndex = 56
        '
        'frmSifarnik
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(441, 304)
        Me.Controls.Add(Me.TextBox9)
        Me.Controls.Add(Me.Label12)
        Me.Controls.Add(Me.Label11)
        Me.Controls.Add(Me.TextBox8)
        Me.Controls.Add(Me.Label10)
        Me.Controls.Add(Me.TextBox7)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.TextBox6)
        Me.Controls.Add(Me.TextBox5)
        Me.Controls.Add(Me.TextBox4)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.ComboBox2)
        Me.Controls.Add(Me.ComboBox1)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.TextBox3)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.TextBox2)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.Label1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmSifarnik"
        Me.Text = "Šifarnik"
        CType(Me.SifarnikBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DobavljacBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.MjernejedBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TextBox8 As System.Windows.Forms.TextBox
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents TextBox7 As System.Windows.Forms.TextBox
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents TextBox6 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox5 As System.Windows.Forms.TextBox
    Friend WithEvents TextBox4 As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents ComboBox2 As System.Windows.Forms.ComboBox
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents TextBox3 As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents ListBox1 As System.Windows.Forms.ListBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents DBDataSet As ISP_pp.DBDataSet
    Friend WithEvents SifarnikBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents SifarnikTableAdapter As ISP_pp.DBDataSetTableAdapters.sifarnikTableAdapter
    Friend WithEvents MjernejedBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents Mjerne_jedTableAdapter As ISP_pp.DBDataSetTableAdapters.mjerne_jedTableAdapter
    Friend WithEvents DobavljacBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents DobavljacTableAdapter As ISP_pp.DBDataSetTableAdapters.dobavljacTableAdapter
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents TextBox9 As System.Windows.Forms.TextBox
End Class
