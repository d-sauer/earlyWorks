<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmLogin
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
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.Button1 = New System.Windows.Forms.Button
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.txtPass = New System.Windows.Forms.TextBox
        Me.Label4 = New System.Windows.Forms.Label
        Me.txtLogAcc = New System.Windows.Forms.ComboBox
        Me.LjecnikBindingSource1 = New System.Windows.Forms.BindingSource(Me.components)
        Me.DentistDataSet = New WindowsApplication7.dentistDataSet
        Me.Label3 = New System.Windows.Forms.Label
        Me.LjecnikBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.Button2 = New System.Windows.Forms.Button
        Me.LjecnikTableAdapter = New WindowsApplication7.dentistDataSetTableAdapters.ljecnikTableAdapter
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox1.SuspendLayout()
        CType(Me.LjecnikBindingSource1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.LjecnikBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'PictureBox1
        '
        Me.PictureBox1.Dock = System.Windows.Forms.DockStyle.Top
        Me.PictureBox1.Image = Global.WindowsApplication7.My.Resources.Resources.traka
        Me.PictureBox1.Location = New System.Drawing.Point(0, 0)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(350, 58)
        Me.PictureBox1.TabIndex = 0
        Me.PictureBox1.TabStop = False
        '
        'Label1
        '
        Me.Label1.BackColor = System.Drawing.Color.FromArgb(CType(CType(50, Byte), Integer), CType(CType(61, Byte), Integer), CType(CType(101, Byte), Integer))
        Me.Label1.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(238, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.White
        Me.Label1.Location = New System.Drawing.Point(59, 1)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(341, 57)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "   Dentist"
        Me.Label1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.Color.FromArgb(CType(CType(50, Byte), Integer), CType(CType(61, Byte), Integer), CType(CType(101, Byte), Integer))
        Me.Label2.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.FontStyle), System.Drawing.GraphicsUnit.Point, CType(238, Byte))
        Me.Label2.ForeColor = System.Drawing.Color.White
        Me.Label2.Location = New System.Drawing.Point(286, 33)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(52, 15)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Ver 1.0"
        Me.Label2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(239, 150)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(99, 25)
        Me.Button1.TabIndex = 6
        Me.Button1.Text = "Logiranje"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.txtPass)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.txtLogAcc)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Location = New System.Drawing.Point(0, 61)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(350, 83)
        Me.GroupBox1.TabIndex = 7
        Me.GroupBox1.TabStop = False
        '
        'txtPass
        '
        Me.txtPass.Location = New System.Drawing.Point(93, 52)
        Me.txtPass.MaxLength = 30
        Me.txtPass.Name = "txtPass"
        Me.txtPass.Size = New System.Drawing.Size(182, 20)
        Me.txtPass.TabIndex = 9
        Me.txtPass.UseSystemPasswordChar = True
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(12, 52)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(47, 13)
        Me.Label4.TabIndex = 8
        Me.Label4.Text = "Lozinka:"
        '
        'txtLogAcc
        '
        Me.txtLogAcc.DataSource = Me.LjecnikBindingSource1
        Me.txtLogAcc.DisplayMember = "ime_prez"
        Me.txtLogAcc.Location = New System.Drawing.Point(93, 14)
        Me.txtLogAcc.MaxLength = 30
        Me.txtLogAcc.Name = "txtLogAcc"
        Me.txtLogAcc.Size = New System.Drawing.Size(182, 21)
        Me.txtLogAcc.TabIndex = 10
        '
        'LjecnikBindingSource1
        '
        Me.LjecnikBindingSource1.DataMember = "ljecnik"
        Me.LjecnikBindingSource1.DataSource = Me.DentistDataSet
        '
        'DentistDataSet
        '
        Me.DentistDataSet.DataSetName = "dentistDataSet"
        Me.DentistDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(11, 17)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(76, 13)
        Me.Label3.TabIndex = 6
        Me.Label3.Text = "Logiraj se kao:"
        '
        'LjecnikBindingSource
        '
        Me.LjecnikBindingSource.DataMember = "ljecnik"
        Me.LjecnikBindingSource.DataSource = Me.DentistDataSet
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(134, 150)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(99, 25)
        Me.Button2.TabIndex = 6
        Me.Button2.Text = "Zatvori program"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'LjecnikTableAdapter
        '
        Me.LjecnikTableAdapter.ClearBeforeFill = True
        '
        'frmLogin
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(350, 183)
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.PictureBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmLogin"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Prijavljivanje na sustav"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.LjecnikBindingSource1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DentistDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.LjecnikBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents txtPass As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtLogAcc As System.Windows.Forms.ComboBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents DentistDataSet As WindowsApplication7.dentistDataSet
    Friend WithEvents LjecnikBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents LjecnikTableAdapter As WindowsApplication7.dentistDataSetTableAdapters.ljecnikTableAdapter
    Friend WithEvents LjecnikBindingSource1 As System.Windows.Forms.BindingSource
End Class
