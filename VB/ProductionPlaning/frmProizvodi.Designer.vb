<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmProizvodi
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
        Me.TextBox7 = New System.Windows.Forms.TextBox
        Me.ProizvodBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DBDataSet = New ISP_pp.DBDataSet
        Me.Button4 = New System.Windows.Forms.Button
        Me.Button3 = New System.Windows.Forms.Button
        Me.Button5 = New System.Windows.Forms.Button
        Me.Button2 = New System.Windows.Forms.Button
        Me.Button1 = New System.Windows.Forms.Button
        Me.TextBox2 = New System.Windows.Forms.TextBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.TextBox5 = New System.Windows.Forms.TextBox
        Me.Label7 = New System.Windows.Forms.Label
        Me.TextBox4 = New System.Windows.Forms.TextBox
        Me.Label6 = New System.Windows.Forms.Label
        Me.TextBox3 = New System.Windows.Forms.TextBox
        Me.Label5 = New System.Windows.Forms.Label
        Me.TextBox6 = New System.Windows.Forms.TextBox
        Me.Label8 = New System.Windows.Forms.Label
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.ListBox1 = New System.Windows.Forms.ListBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.ProizvodTableAdapter = New ISP_pp.DBDataSetTableAdapters.proizvodTableAdapter
        Me.Label4 = New System.Windows.Forms.Label
        Me.TextBox8 = New System.Windows.Forms.TextBox
        Me.Label9 = New System.Windows.Forms.Label
        Me.ComboBox1 = New System.Windows.Forms.ComboBox
        Me.MjernejedBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.Mjerne_jedTableAdapter = New ISP_pp.DBDataSetTableAdapters.mjerne_jedTableAdapter
        Me.TextBox9 = New System.Windows.Forms.TextBox
        CType(Me.ProizvodBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.MjernejedBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TextBox7
        '
        Me.TextBox7.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "id_proj", True))
        Me.TextBox7.Location = New System.Drawing.Point(393, 307)
        Me.TextBox7.Name = "TextBox7"
        Me.TextBox7.Size = New System.Drawing.Size(37, 20)
        Me.TextBox7.TabIndex = 27
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
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(1, 273)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(124, 20)
        Me.Button4.TabIndex = 22
        Me.Button4.Text = "Dodaj novi proizvod"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(131, 273)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(70, 20)
        Me.Button3.TabIndex = 23
        Me.Button3.Text = "Prihvati"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(284, 273)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(70, 20)
        Me.Button5.TabIndex = 26
        Me.Button5.Text = "Obriši"
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(208, 273)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(70, 20)
        Me.Button2.TabIndex = 25
        Me.Button2.Text = "Odustani"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(360, 273)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(70, 20)
        Me.Button1.TabIndex = 24
        Me.Button1.Text = "Zatvori"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'TextBox2
        '
        Me.TextBox2.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "opis", True))
        Me.TextBox2.Location = New System.Drawing.Point(208, 83)
        Me.TextBox2.Multiline = True
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(217, 50)
        Me.TextBox2.TabIndex = 21
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(121, 81)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(77, 13)
        Me.Label3.TabIndex = 20
        Me.Label3.Text = "Opis proizvoda"
        '
        'TextBox5
        '
        Me.TextBox5.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "min_zalihe", True))
        Me.TextBox5.Location = New System.Drawing.Point(206, 194)
        Me.TextBox5.MaxLength = 20
        Me.TextBox5.Name = "TextBox5"
        Me.TextBox5.Size = New System.Drawing.Size(119, 20)
        Me.TextBox5.TabIndex = 19
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(122, 197)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(54, 13)
        Me.Label7.TabIndex = 11
        Me.Label7.Text = "Min zalihe"
        '
        'TextBox4
        '
        Me.TextBox4.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "zalihe", True))
        Me.TextBox4.Location = New System.Drawing.Point(206, 168)
        Me.TextBox4.MaxLength = 20
        Me.TextBox4.Name = "TextBox4"
        Me.TextBox4.Size = New System.Drawing.Size(119, 20)
        Me.TextBox4.TabIndex = 15
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(122, 171)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(36, 13)
        Me.Label6.TabIndex = 10
        Me.Label6.Text = "Zalihe"
        '
        'TextBox3
        '
        Me.TextBox3.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "vel_serije", True))
        Me.TextBox3.Location = New System.Drawing.Point(206, 142)
        Me.TextBox3.MaxLength = 20
        Me.TextBox3.Name = "TextBox3"
        Me.TextBox3.Size = New System.Drawing.Size(119, 20)
        Me.TextBox3.TabIndex = 16
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(122, 145)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(71, 13)
        Me.Label5.TabIndex = 12
        Me.Label5.Text = "Veličina serije"
        '
        'TextBox6
        '
        Me.TextBox6.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "sif_proiz", True))
        Me.TextBox6.Location = New System.Drawing.Point(206, 23)
        Me.TextBox6.MaxLength = 8
        Me.TextBox6.Name = "TextBox6"
        Me.TextBox6.Size = New System.Drawing.Size(118, 20)
        Me.TextBox6.TabIndex = 17
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(121, 26)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(77, 13)
        Me.Label8.TabIndex = 14
        Me.Label8.Text = "Sifra proizvoda"
        '
        'TextBox1
        '
        Me.TextBox1.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "naziv", True))
        Me.TextBox1.Location = New System.Drawing.Point(206, 49)
        Me.TextBox1.MaxLength = 20
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(224, 20)
        Me.TextBox1.TabIndex = 18
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(121, 52)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(83, 13)
        Me.Label2.TabIndex = 13
        Me.Label2.Text = "Naziv proizvoda"
        '
        'ListBox1
        '
        Me.ListBox1.DataSource = Me.ProizvodBindingSource
        Me.ListBox1.DisplayMember = "sif_proiz"
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(3, 21)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(99, 238)
        Me.ListBox1.TabIndex = 9
        Me.ListBox1.ValueMember = "id_pr"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(-2, 2)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(82, 13)
        Me.Label1.TabIndex = 8
        Me.Label1.Text = "Popis proizvoda"
        '
        'ProizvodTableAdapter
        '
        Me.ProizvodTableAdapter.ClearBeforeFill = True
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(121, 223)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(57, 13)
        Me.Label4.TabIndex = 11
        Me.Label4.Text = "Lead Time"
        '
        'TextBox8
        '
        Me.TextBox8.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "lead_time", True))
        Me.TextBox8.Location = New System.Drawing.Point(205, 220)
        Me.TextBox8.MaxLength = 20
        Me.TextBox8.Name = "TextBox8"
        Me.TextBox8.Size = New System.Drawing.Size(119, 20)
        Me.TextBox8.TabIndex = 19
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(121, 249)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(78, 13)
        Me.Label9.TabIndex = 11
        Me.Label9.Text = "Mjerna jedinica"
        '
        'ComboBox1
        '
        Me.ComboBox1.DataBindings.Add(New System.Windows.Forms.Binding("SelectedValue", Me.ProizvodBindingSource, "mjer_jed", True))
        Me.ComboBox1.DataSource = Me.MjernejedBindingSource
        Me.ComboBox1.DisplayMember = "naziv"
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Location = New System.Drawing.Point(205, 246)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(120, 21)
        Me.ComboBox1.TabIndex = 28
        Me.ComboBox1.ValueMember = "mjer_jed"
        '
        'MjernejedBindingSource
        '
        Me.MjernejedBindingSource.DataMember = "mjerne_jed"
        Me.MjernejedBindingSource.DataSource = Me.DBDataSet
        '
        'Mjerne_jedTableAdapter
        '
        Me.Mjerne_jedTableAdapter.ClearBeforeFill = True
        '
        'TextBox9
        '
        Me.TextBox9.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.ProizvodBindingSource, "id_pr", True))
        Me.TextBox9.Location = New System.Drawing.Point(315, 307)
        Me.TextBox9.Name = "TextBox9"
        Me.TextBox9.Size = New System.Drawing.Size(39, 20)
        Me.TextBox9.TabIndex = 29
        '
        'frmProizvodi
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(432, 296)
        Me.Controls.Add(Me.TextBox9)
        Me.Controls.Add(Me.ComboBox1)
        Me.Controls.Add(Me.TextBox7)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.TextBox2)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.TextBox8)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.TextBox5)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.TextBox4)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.TextBox3)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.TextBox6)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.Label1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmProizvodi"
        Me.Text = "Proizvodni asortiman"
        CType(Me.ProizvodBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.MjernejedBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TextBox7 As System.Windows.Forms.TextBox
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents TextBox5 As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents TextBox4 As System.Windows.Forms.TextBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents TextBox3 As System.Windows.Forms.TextBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents TextBox6 As System.Windows.Forms.TextBox
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents ListBox1 As System.Windows.Forms.ListBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents DBDataSet As ISP_pp.DBDataSet
    Friend WithEvents ProizvodBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents ProizvodTableAdapter As ISP_pp.DBDataSetTableAdapters.proizvodTableAdapter
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents TextBox8 As System.Windows.Forms.TextBox
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents MjernejedBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents Mjerne_jedTableAdapter As ISP_pp.DBDataSetTableAdapters.mjerne_jedTableAdapter
    Friend WithEvents TextBox9 As System.Windows.Forms.TextBox
End Class
