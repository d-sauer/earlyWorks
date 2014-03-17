<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmPPP
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
        Dim ReportDataSource1 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource
        Me.chart_pppBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DBDataSet = New ISP_pp.DBDataSet
        Me.ListV = New System.Windows.Forms.ListView
        Me.Button1 = New System.Windows.Forms.Button
        Me.Button2 = New System.Windows.Forms.Button
        Me.ReportViewer1 = New Microsoft.Reporting.WinForms.ReportViewer
        Me.chart_pppTableAdapter = New ISP_pp.DBDataSetTableAdapters.chart_pppTableAdapter
        CType(Me.chart_pppBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'chart_pppBindingSource
        '
        Me.chart_pppBindingSource.DataMember = "chart_ppp"
        Me.chart_pppBindingSource.DataSource = Me.DBDataSet
        '
        'DBDataSet
        '
        Me.DBDataSet.DataSetName = "DBDataSet"
        Me.DBDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
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
        Me.ListV.Size = New System.Drawing.Size(651, 211)
        Me.ListV.TabIndex = 0
        Me.ListV.UseCompatibleStateImageBehavior = False
        Me.ListV.View = System.Windows.Forms.View.Details
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(509, 409)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(141, 26)
        Me.Button1.TabIndex = 2
        Me.Button1.Text = "Izlaz"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(362, 409)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(141, 26)
        Me.Button2.TabIndex = 2
        Me.Button2.Text = "Osvježi graf"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'ReportViewer1
        '
        ReportDataSource1.Name = "DBDataSet_chart_ppp"
        ReportDataSource1.Value = Me.chart_pppBindingSource
        Me.ReportViewer1.LocalReport.DataSources.Add(ReportDataSource1)
        Me.ReportViewer1.LocalReport.ReportEmbeddedResource = "ISP_pp.Report1.rdlc"
        Me.ReportViewer1.Location = New System.Drawing.Point(3, 217)
        Me.ReportViewer1.Name = "ReportViewer1"
        Me.ReportViewer1.ShowToolBar = False
        Me.ReportViewer1.Size = New System.Drawing.Size(647, 186)
        Me.ReportViewer1.TabIndex = 3
        '
        'chart_pppTableAdapter
        '
        Me.chart_pppTableAdapter.ClearBeforeFill = True
        '
        'frmPPP
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(651, 438)
        Me.Controls.Add(Me.ReportViewer1)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.ListV)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "frmPPP"
        Me.Text = "Plan proizvodnog programa"
        CType(Me.chart_pppBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DBDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents ListV As System.Windows.Forms.ListView
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents ReportViewer1 As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents chart_pppBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents DBDataSet As ISP_pp.DBDataSet
    Friend WithEvents chart_pppTableAdapter As ISP_pp.DBDataSetTableAdapters.chart_pppTableAdapter
End Class
