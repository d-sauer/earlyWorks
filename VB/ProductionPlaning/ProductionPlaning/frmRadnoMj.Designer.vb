<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmRadnoMj
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
        Me.ListBox1 = New System.Windows.Forms.ListBox
        Me.RadnomjestoBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DBDataSet = New ISP_pp.DBDataSet
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.TextBox2 = New System.Windows.Forms.TextBox
        Me.Button1 = New System.Windows.Forms.Button
        Me.Button2 = New System.Windows.Forms.Button
        Me.Button3 = New System.Windows.Forms.Button
        Me.Button4 = New System.Windows.Forms.Button
        Me.Button5 = New System.Windows.Forms.Button
        Me.Radno_mjestoTableAdapter = New ISP_pp.DBDataSetTableAdapters.radno_mjestoTableAdapter
        Me.lbl_IDRm = New System.Windows.Forms.Label
        CType(Me.RadnomjestoBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'ListBox1
        '
        Me.ListBox1.DataSource = Me.RadnomjestoBindingSource
        Me.ListBox1.DisplayMember = "r_mjesto"
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(1, 0)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(121, 160)
        Me.ListBox1.TabIndex = 0
        Me.ListBox1.ValueMember = "id_rm"
        '
        'RadnomjestoBindingSource
        '
        Me.RadnomjestoBindingSource.DataMember = "radno_mjesto"
        Me.RadnomjestoBindingSource.DataSource = Me.DBDataSet
        '
        'DBDataSet
        '
        Me.DBDataSet.DataSetName = "DBDataSet"
        Me.DBDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'TextBox1
        '
        Me.TextBox1.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RadnomjestoBindingSource, "r_mjesto", True))
        Me.TextBox1.Location = New System.Drawing.Point(243, 12)
        Me.TextBox1.MaxLength = 8
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(151, 20)
        Me.TextBox1.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(134, 16)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(106, 13)
        Me.Label1.TabIndex = 2
        Me.Label1.Text = "Naziv radnog mjesta:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(134, 44)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(100, 13)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Opis radnog mjesta:"
        '
        'TextBox2
        '
        Me.TextBox2.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RadnomjestoBindingSource, "opis", True))
        Me.TextBox2.Location = New System.Drawing.Point(146, 66)
        Me.TextBox2.Multiline = True
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(247, 92)
        Me.TextBox2.TabIndex = 4
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(5, 164)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(67, 22)
        Me.Button1.TabIndex = 5
        Me.Button1.Text = "Dodaj"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(222, 164)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(67, 22)
        Me.Button2.TabIndex = 5
        Me.Button2.Text = "Obriši"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(76, 164)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(67, 22)
        Me.Button3.TabIndex = 5
        Me.Button3.Text = "Prihvati"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(326, 164)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(67, 22)
        Me.Button4.TabIndex = 5
        Me.Button4.Text = "Zatvori"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(149, 164)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(67, 22)
        Me.Button5.TabIndex = 5
        Me.Button5.Text = "Odustani"
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Radno_mjestoTableAdapter
        '
        Me.Radno_mjestoTableAdapter.ClearBeforeFill = True
        '
        'lbl_IDRm
        '
        Me.lbl_IDRm.AutoSize = True
        Me.lbl_IDRm.DataBindings.Add(New System.Windows.Forms.Binding("Text", Me.RadnomjestoBindingSource, "id_rm", True))
        Me.lbl_IDRm.Location = New System.Drawing.Point(22, 209)
        Me.lbl_IDRm.Name = "lbl_IDRm"
        Me.lbl_IDRm.Size = New System.Drawing.Size(39, 13)
        Me.lbl_IDRm.TabIndex = 6
        Me.lbl_IDRm.Text = "Label3"
        '
        'frmRadnoMj
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(401, 190)
        Me.Controls.Add(Me.lbl_IDRm)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.TextBox2)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.ListBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmRadnoMj"
        Me.Text = "Radna mjesta"
        CType(Me.RadnomjestoBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents ListBox1 As System.Windows.Forms.ListBox
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents DBDataSet As ISP_pp.DBDataSet
    Friend WithEvents RadnomjestoBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents Radno_mjestoTableAdapter As ISP_pp.DBDataSetTableAdapters.radno_mjestoTableAdapter
    Friend WithEvents lbl_IDRm As System.Windows.Forms.Label
End Class
