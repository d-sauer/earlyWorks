<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmNalozi
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
        Me.ListV = New System.Windows.Forms.ListView
        Me.Button1 = New System.Windows.Forms.Button
        Me.SuspendLayout()
        '
        'ListV
        '
        Me.ListV.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
                    Or System.Windows.Forms.AnchorStyles.Left) _
                    Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ListV.FullRowSelect = True
        Me.ListV.GridLines = True
        Me.ListV.Location = New System.Drawing.Point(0, 0)
        Me.ListV.MultiSelect = False
        Me.ListV.Name = "ListV"
        Me.ListV.Size = New System.Drawing.Size(580, 241)
        Me.ListV.TabIndex = 0
        Me.ListV.UseCompatibleStateImageBehavior = False
        Me.ListV.View = System.Windows.Forms.View.Details
        '
        'Button1
        '
        Me.Button1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.Button1.Location = New System.Drawing.Point(486, 247)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(94, 23)
        Me.Button1.TabIndex = 1
        Me.Button1.Text = "Zatvori"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'frmNalozi
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(580, 273)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.ListV)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow
        Me.Name = "frmNalozi"
        Me.Text = "Otvoreni radni nalozi"
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents ListV As System.Windows.Forms.ListView
    Friend WithEvents Button1 As System.Windows.Forms.Button
End Class
