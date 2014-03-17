<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmMRP
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
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.ListUK = New System.Windows.Forms.ListView
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.ListV = New System.Windows.Forms.ListView
        Me.Button1 = New System.Windows.Forms.Button
        Me.Button2 = New System.Windows.Forms.Button
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.ListUK)
        Me.GroupBox1.Dock = System.Windows.Forms.DockStyle.Top
        Me.GroupBox1.Location = New System.Drawing.Point(0, 0)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(611, 188)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Planirani nalozi/narudžbe"
        '
        'ListUK
        '
        Me.ListUK.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ListUK.FullRowSelect = True
        Me.ListUK.GridLines = True
        Me.ListUK.Location = New System.Drawing.Point(3, 16)
        Me.ListUK.MultiSelect = False
        Me.ListUK.Name = "ListUK"
        Me.ListUK.Size = New System.Drawing.Size(605, 169)
        Me.ListUK.TabIndex = 0
        Me.ListUK.UseCompatibleStateImageBehavior = False
        Me.ListUK.View = System.Windows.Forms.View.Details
        '
        'GroupBox2
        '
        Me.GroupBox2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox2.Controls.Add(Me.ListV)
        Me.GroupBox2.Location = New System.Drawing.Point(0, 194)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(610, 185)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Plan potreba za materijalom"
        '
        'ListV
        '
        Me.ListV.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ListV.FullRowSelect = True
        Me.ListV.GridLines = True
        Me.ListV.Location = New System.Drawing.Point(3, 16)
        Me.ListV.MultiSelect = False
        Me.ListV.Name = "ListV"
        Me.ListV.ShowItemToolTips = True
        Me.ListV.Size = New System.Drawing.Size(604, 166)
        Me.ListV.TabIndex = 0
        Me.ListV.UseCompatibleStateImageBehavior = False
        Me.ListV.View = System.Windows.Forms.View.Details
        '
        'Button1
        '
        Me.Button1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button1.Location = New System.Drawing.Point(523, 384)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(86, 22)
        Me.Button1.TabIndex = 2
        Me.Button1.Text = "Zatvori"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button2.Location = New System.Drawing.Point(431, 384)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(86, 22)
        Me.Button2.TabIndex = 2
        Me.Button2.Text = "Osvježi"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'frmMRP
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(611, 406)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow
        Me.Name = "frmMRP"
        Me.Text = "Plan potreba za materijalom"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents ListUK As System.Windows.Forms.ListView
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents ListV As System.Windows.Forms.ListView
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
End Class
