<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmRCCP
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
        Me.TabControl1 = New System.Windows.Forms.TabControl
        Me.TabPage2 = New System.Windows.Forms.TabPage
        Me.Button3 = New System.Windows.Forms.Button
        Me.Button2 = New System.Windows.Forms.Button
        Me.TextBox2 = New System.Windows.Forms.TextBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.ComboBox1 = New System.Windows.Forms.ComboBox
        Me.RadnomjestoBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DBDataSet = New ISP_pp.DBDataSet
        Me.Label2 = New System.Windows.Forms.Label
        Me.TextBox1 = New System.Windows.Forms.TextBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.ListBox1 = New System.Windows.Forms.ListBox
        Me.ProizvodBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.TabPage1 = New System.Windows.Forms.TabPage
        Me.ListV = New System.Windows.Forms.ListView
        Me.ProizvodTableAdapter = New ISP_pp.DBDataSetTableAdapters.proizvodTableAdapter
        Me.Radno_mjestoTableAdapter = New ISP_pp.DBDataSetTableAdapters.radno_mjestoTableAdapter
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.Button4 = New System.Windows.Forms.Button
        Me.Button1 = New System.Windows.Forms.Button
        Me.ListA = New System.Windows.Forms.ListView
        Me.TabControl1.SuspendLayout()
        Me.TabPage2.SuspendLayout()
        CType(Me.RadnomjestoBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox1.SuspendLayout()
        CType(Me.ProizvodBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.TabPage1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.TabPage2)
        Me.TabControl1.Controls.Add(Me.TabPage1)
        Me.TabControl1.Location = New System.Drawing.Point(1, 1)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(493, 209)
        Me.TabControl1.TabIndex = 0
        '
        'TabPage2
        '
        Me.TabPage2.Controls.Add(Me.Button3)
        Me.TabPage2.Controls.Add(Me.Button2)
        Me.TabPage2.Controls.Add(Me.TextBox2)
        Me.TabPage2.Controls.Add(Me.Label3)
        Me.TabPage2.Controls.Add(Me.ComboBox1)
        Me.TabPage2.Controls.Add(Me.Label2)
        Me.TabPage2.Controls.Add(Me.TextBox1)
        Me.TabPage2.Controls.Add(Me.Label1)
        Me.TabPage2.Controls.Add(Me.GroupBox1)
        Me.TabPage2.Location = New System.Drawing.Point(4, 22)
        Me.TabPage2.Name = "TabPage2"
        Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage2.Size = New System.Drawing.Size(485, 183)
        Me.TabPage2.TabIndex = 1
        Me.TabPage2.Text = "Normativ rada"
        Me.TabPage2.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(238, 151)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(68, 27)
        Me.Button3.TabIndex = 7
        Me.Button3.Text = "Obriši"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(163, 151)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(68, 27)
        Me.Button2.TabIndex = 7
        Me.Button2.Text = "Prihvati"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'TextBox2
        '
        Me.TextBox2.Location = New System.Drawing.Point(274, 84)
        Me.TextBox2.Name = "TextBox2"
        Me.TextBox2.Size = New System.Drawing.Size(49, 20)
        Me.TextBox2.TabIndex = 6
        '
        'Label3
        '
        Me.Label3.Location = New System.Drawing.Point(157, 75)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(111, 39)
        Me.Label3.TabIndex = 5
        Me.Label3.Text = "Normativ rada za pojedine operacije po jedinici proizvoda NS:"
        '
        'ComboBox1
        '
        Me.ComboBox1.DataSource = Me.RadnomjestoBindingSource
        Me.ComboBox1.DisplayMember = "r_mjesto"
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Location = New System.Drawing.Point(238, 40)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(85, 21)
        Me.ComboBox1.TabIndex = 4
        Me.ComboBox1.ValueMember = "id_rm"
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
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(157, 45)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(75, 13)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Radno mjesto:"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(237, 14)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(86, 20)
        Me.TextBox1.TabIndex = 2
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(157, 17)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(74, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Broj operacija:"
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.ListBox1)
        Me.GroupBox1.Location = New System.Drawing.Point(3, 6)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(148, 172)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Proizvod"
        '
        'ListBox1
        '
        Me.ListBox1.DataSource = Me.ProizvodBindingSource
        Me.ListBox1.DisplayMember = "sif_proiz"
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(9, 21)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(133, 147)
        Me.ListBox1.TabIndex = 0
        Me.ListBox1.ValueMember = "id_pr"
        '
        'ProizvodBindingSource
        '
        Me.ProizvodBindingSource.DataMember = "proizvod"
        Me.ProizvodBindingSource.DataSource = Me.DBDataSet
        '
        'TabPage1
        '
        Me.TabPage1.Controls.Add(Me.ListV)
        Me.TabPage1.Location = New System.Drawing.Point(4, 22)
        Me.TabPage1.Name = "TabPage1"
        Me.TabPage1.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPage1.Size = New System.Drawing.Size(485, 183)
        Me.TabPage1.TabIndex = 0
        Me.TabPage1.Text = "Proizvodni postupci"
        Me.TabPage1.UseVisualStyleBackColor = True
        '
        'ListV
        '
        Me.ListV.FullRowSelect = True
        Me.ListV.GridLines = True
        Me.ListV.Location = New System.Drawing.Point(7, 6)
        Me.ListV.MultiSelect = False
        Me.ListV.Name = "ListV"
        Me.ListV.Size = New System.Drawing.Size(472, 171)
        Me.ListV.TabIndex = 1
        Me.ListV.UseCompatibleStateImageBehavior = False
        Me.ListV.View = System.Windows.Forms.View.Details
        '
        'ProizvodTableAdapter
        '
        Me.ProizvodTableAdapter.ClearBeforeFill = True
        '
        'Radno_mjestoTableAdapter
        '
        Me.Radno_mjestoTableAdapter.ClearBeforeFill = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Button4)
        Me.GroupBox2.Controls.Add(Me.Button1)
        Me.GroupBox2.Controls.Add(Me.ListA)
        Me.GroupBox2.Location = New System.Drawing.Point(5, 217)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(488, 201)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "PLAN POTREBNIH KAPACITETA KORIŠTENJEM NORMATIVA RADA"
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(415, 173)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(67, 22)
        Me.Button4.TabIndex = 2
        Me.Button4.Text = "Zatvori"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(335, 173)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(74, 22)
        Me.Button1.TabIndex = 1
        Me.Button1.Text = "Osvježi"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'ListA
        '
        Me.ListA.FullRowSelect = True
        Me.ListA.GridLines = True
        Me.ListA.Location = New System.Drawing.Point(6, 22)
        Me.ListA.MultiSelect = False
        Me.ListA.Name = "ListA"
        Me.ListA.ShowItemToolTips = True
        Me.ListA.Size = New System.Drawing.Size(476, 145)
        Me.ListA.TabIndex = 0
        Me.ListA.UseCompatibleStateImageBehavior = False
        Me.ListA.View = System.Windows.Forms.View.Details
        '
        'frmRCCP
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(496, 420)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.TabControl1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmRCCP"
        Me.Text = "Grubo planiranje kapaciteta normativima rada"
        Me.TabControl1.ResumeLayout(False)
        Me.TabPage2.ResumeLayout(False)
        Me.TabPage2.PerformLayout()
        CType(Me.RadnomjestoBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox1.ResumeLayout(False)
        CType(Me.ProizvodBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.TabPage1.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents TabPage1 As System.Windows.Forms.TabPage
    Friend WithEvents TabPage2 As System.Windows.Forms.TabPage
    Friend WithEvents ListV As System.Windows.Forms.ListView
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents ListBox1 As System.Windows.Forms.ListBox
    Friend WithEvents DBDataSet As ISP_pp.DBDataSet
    Friend WithEvents ProizvodBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents ProizvodTableAdapter As ISP_pp.DBDataSetTableAdapters.proizvodTableAdapter
    Friend WithEvents ComboBox1 As System.Windows.Forms.ComboBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents RadnomjestoBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents Radno_mjestoTableAdapter As ISP_pp.DBDataSetTableAdapters.radno_mjestoTableAdapter
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents TextBox2 As System.Windows.Forms.TextBox
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents ListA As System.Windows.Forms.ListView
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Button4 As System.Windows.Forms.Button
End Class
