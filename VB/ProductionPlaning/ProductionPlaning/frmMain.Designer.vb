<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmMain
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmMain))
        Me.OtvoreniNaloziToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.OtvoreneNarudžbeToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.MRPToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.SastavnicaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.StatusStrip1 = New System.Windows.Forms.StatusStrip
        Me.TSProjekt = New System.Windows.Forms.ToolStripStatusLabel
        Me.TSBar = New System.Windows.Forms.ToolStripProgressBar
        Me.GruboPlaniranjeKapacitetaNormativimaRadaRCCPToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.RadnaMjestaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.RCCPToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.GantogramRealizacijeToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.GlavniPlanProizvodnjeGPPToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.PlanPotrebeZaKapacitetimaCRPToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ŠifarnikToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.UpravljanjeProjektimaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.DobavljačiToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ProjektToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.ToolStripMenuItem1 = New System.Windows.Forms.ToolStripSeparator
        Me.IzlazToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip
        Me.VođenjeProjektaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.EvidencijaProizvodaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.PlanProizvodnogProToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.OAutoruToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem
        Me.StatusStrip1.SuspendLayout()
        Me.MenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'OtvoreniNaloziToolStripMenuItem
        '
        Me.OtvoreniNaloziToolStripMenuItem.Name = "OtvoreniNaloziToolStripMenuItem"
        Me.OtvoreniNaloziToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.OtvoreniNaloziToolStripMenuItem.Text = "Otvoreni radni nalozi"
        Me.OtvoreniNaloziToolStripMenuItem.ToolTipText = "Popis artikala koji se već proizvode zajedno sa terminima dospijeća"
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(61, 4)
        '
        'OtvoreneNarudžbeToolStripMenuItem
        '
        Me.OtvoreneNarudžbeToolStripMenuItem.Name = "OtvoreneNarudžbeToolStripMenuItem"
        Me.OtvoreneNarudžbeToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.OtvoreneNarudžbeToolStripMenuItem.Text = "Otvorene narudžbe"
        Me.OtvoreneNarudžbeToolStripMenuItem.ToolTipText = "Popis artikala koji su naručeni, a još nisu stigli u skladište"
        '
        'MRPToolStripMenuItem
        '
        Me.MRPToolStripMenuItem.Name = "MRPToolStripMenuItem"
        Me.MRPToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.MRPToolStripMenuItem.Text = "Plan potreba za materijalom (MRP)"
        Me.MRPToolStripMenuItem.ToolTipText = "Utvrđivanje potrebnih dijelova, sklopova i materijala, za proizvodnju gotovog pro" & _
            "izvoda, njihove količine, te vremena u kojem je te komponente potrebno naručiti/" & _
            "proizvesti kako bi realizirali GPP"
        '
        'SastavnicaToolStripMenuItem
        '
        Me.SastavnicaToolStripMenuItem.Name = "SastavnicaToolStripMenuItem"
        Me.SastavnicaToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.SastavnicaToolStripMenuItem.Text = "Sastavnica"
        '
        'StatusStrip1
        '
        Me.StatusStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.TSProjekt, Me.TSBar})
        Me.StatusStrip1.Location = New System.Drawing.Point(0, 575)
        Me.StatusStrip1.Name = "StatusStrip1"
        Me.StatusStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.ManagerRenderMode
        Me.StatusStrip1.Size = New System.Drawing.Size(749, 22)
        Me.StatusStrip1.TabIndex = 6
        Me.StatusStrip1.Text = "StatusStrip1"
        '
        'TSProjekt
        '
        Me.TSProjekt.Name = "TSProjekt"
        Me.TSProjekt.Size = New System.Drawing.Size(45, 17)
        Me.TSProjekt.Text = "Projekt:"
        '
        'TSBar
        '
        Me.TSBar.Name = "TSBar"
        Me.TSBar.Size = New System.Drawing.Size(200, 16)
        Me.TSBar.Style = System.Windows.Forms.ProgressBarStyle.Continuous
        Me.TSBar.Visible = False
        '
        'GruboPlaniranjeKapacitetaNormativimaRadaRCCPToolStripMenuItem
        '
        Me.GruboPlaniranjeKapacitetaNormativimaRadaRCCPToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.RadnaMjestaToolStripMenuItem, Me.RCCPToolStripMenuItem})
        Me.GruboPlaniranjeKapacitetaNormativimaRadaRCCPToolStripMenuItem.Name = "GruboPlaniranjeKapacitetaNormativimaRadaRCCPToolStripMenuItem"
        Me.GruboPlaniranjeKapacitetaNormativimaRadaRCCPToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.GruboPlaniranjeKapacitetaNormativimaRadaRCCPToolStripMenuItem.Text = "Grubo planiranje kapaciteta normativima rada (RCCP)"
        '
        'RadnaMjestaToolStripMenuItem
        '
        Me.RadnaMjestaToolStripMenuItem.Name = "RadnaMjestaToolStripMenuItem"
        Me.RadnaMjestaToolStripMenuItem.Size = New System.Drawing.Size(140, 22)
        Me.RadnaMjestaToolStripMenuItem.Text = "Radna mjesta"
        '
        'RCCPToolStripMenuItem
        '
        Me.RCCPToolStripMenuItem.Name = "RCCPToolStripMenuItem"
        Me.RCCPToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
        Me.RCCPToolStripMenuItem.Text = "RCCP"
        Me.RCCPToolStripMenuItem.ToolTipText = resources.GetString("RCCPToolStripMenuItem.ToolTipText")
        '
        'GantogramRealizacijeToolStripMenuItem
        '
        Me.GantogramRealizacijeToolStripMenuItem.Name = "GantogramRealizacijeToolStripMenuItem"
        Me.GantogramRealizacijeToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.GantogramRealizacijeToolStripMenuItem.Text = "Gantogram realizacije"
        '
        'GlavniPlanProizvodnjeGPPToolStripMenuItem
        '
        Me.GlavniPlanProizvodnjeGPPToolStripMenuItem.Name = "GlavniPlanProizvodnjeGPPToolStripMenuItem"
        Me.GlavniPlanProizvodnjeGPPToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.GlavniPlanProizvodnjeGPPToolStripMenuItem.Text = "Glavni plan proizvodnje (GPP)"
        Me.GlavniPlanProizvodnjeGPPToolStripMenuItem.ToolTipText = "GPP je osnovni plan taktičke razine i predstavlja temelj sustava planiranja. Odre" & _
            "đuje koje proizvode planiramo proizvoditi, u kojoj količini i u kojem vremenu"
        '
        'PlanPotrebeZaKapacitetimaCRPToolStripMenuItem
        '
        Me.PlanPotrebeZaKapacitetimaCRPToolStripMenuItem.Name = "PlanPotrebeZaKapacitetimaCRPToolStripMenuItem"
        Me.PlanPotrebeZaKapacitetimaCRPToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.PlanPotrebeZaKapacitetimaCRPToolStripMenuItem.Text = "Plan potrebe za kapacitetima (CRP)"
        Me.PlanPotrebeZaKapacitetimaCRPToolStripMenuItem.ToolTipText = resources.GetString("PlanPotrebeZaKapacitetimaCRPToolStripMenuItem.ToolTipText")
        '
        'ŠifarnikToolStripMenuItem
        '
        Me.ŠifarnikToolStripMenuItem.Name = "ŠifarnikToolStripMenuItem"
        Me.ŠifarnikToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.ŠifarnikToolStripMenuItem.Text = "Šifarnik"
        '
        'UpravljanjeProjektimaToolStripMenuItem
        '
        Me.UpravljanjeProjektimaToolStripMenuItem.Name = "UpravljanjeProjektimaToolStripMenuItem"
        Me.UpravljanjeProjektimaToolStripMenuItem.Size = New System.Drawing.Size(182, 22)
        Me.UpravljanjeProjektimaToolStripMenuItem.Text = "Upravljanje projektima"
        '
        'DobavljačiToolStripMenuItem
        '
        Me.DobavljačiToolStripMenuItem.Name = "DobavljačiToolStripMenuItem"
        Me.DobavljačiToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.DobavljačiToolStripMenuItem.Text = "Dobavljači"
        '
        'ProjektToolStripMenuItem
        '
        Me.ProjektToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.UpravljanjeProjektimaToolStripMenuItem, Me.ToolStripMenuItem1, Me.IzlazToolStripMenuItem})
        Me.ProjektToolStripMenuItem.Name = "ProjektToolStripMenuItem"
        Me.ProjektToolStripMenuItem.Size = New System.Drawing.Size(53, 20)
        Me.ProjektToolStripMenuItem.Text = "Projekt"
        '
        'ToolStripMenuItem1
        '
        Me.ToolStripMenuItem1.Name = "ToolStripMenuItem1"
        Me.ToolStripMenuItem1.Size = New System.Drawing.Size(179, 6)
        '
        'IzlazToolStripMenuItem
        '
        Me.IzlazToolStripMenuItem.Name = "IzlazToolStripMenuItem"
        Me.IzlazToolStripMenuItem.Size = New System.Drawing.Size(182, 22)
        Me.IzlazToolStripMenuItem.Text = "Izlaz"
        '
        'MenuStrip1
        '
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ProjektToolStripMenuItem, Me.VođenjeProjektaToolStripMenuItem, Me.OAutoruToolStripMenuItem})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.Size = New System.Drawing.Size(749, 24)
        Me.MenuStrip1.TabIndex = 5
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'VođenjeProjektaToolStripMenuItem
        '
        Me.VođenjeProjektaToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.EvidencijaProizvodaToolStripMenuItem, Me.DobavljačiToolStripMenuItem, Me.ŠifarnikToolStripMenuItem, Me.SastavnicaToolStripMenuItem, Me.PlanProizvodnogProToolStripMenuItem, Me.GlavniPlanProizvodnjeGPPToolStripMenuItem, Me.OtvoreneNarudžbeToolStripMenuItem, Me.OtvoreniNaloziToolStripMenuItem, Me.MRPToolStripMenuItem, Me.GruboPlaniranjeKapacitetaNormativimaRadaRCCPToolStripMenuItem, Me.PlanPotrebeZaKapacitetimaCRPToolStripMenuItem, Me.GantogramRealizacijeToolStripMenuItem})
        Me.VođenjeProjektaToolStripMenuItem.Name = "VođenjeProjektaToolStripMenuItem"
        Me.VođenjeProjektaToolStripMenuItem.Size = New System.Drawing.Size(101, 20)
        Me.VođenjeProjektaToolStripMenuItem.Text = "Vođenje projekta"
        '
        'EvidencijaProizvodaToolStripMenuItem
        '
        Me.EvidencijaProizvodaToolStripMenuItem.Name = "EvidencijaProizvodaToolStripMenuItem"
        Me.EvidencijaProizvodaToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.EvidencijaProizvodaToolStripMenuItem.Text = "Evidencija proizvoda"
        '
        'PlanProizvodnogProToolStripMenuItem
        '
        Me.PlanProizvodnogProToolStripMenuItem.Name = "PlanProizvodnogProToolStripMenuItem"
        Me.PlanProizvodnogProToolStripMenuItem.Size = New System.Drawing.Size(330, 22)
        Me.PlanProizvodnogProToolStripMenuItem.Text = "Plan proizvodnog programa (PPP)"
        Me.PlanProizvodnogProToolStripMenuItem.ToolTipText = "Plan proizvodnog programa prikazuje asortiman i ukupnu količinu proizvoda koji će" & _
            " se proizvoditi u periodu definiranim planskim horizontom."
        '
        'OAutoruToolStripMenuItem
        '
        Me.OAutoruToolStripMenuItem.Name = "OAutoruToolStripMenuItem"
        Me.OAutoruToolStripMenuItem.Size = New System.Drawing.Size(62, 20)
        Me.OAutoruToolStripMenuItem.Text = "O autoru"
        '
        'frmMain
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(749, 597)
        Me.Controls.Add(Me.StatusStrip1)
        Me.Controls.Add(Me.MenuStrip1)
        Me.IsMdiContainer = True
        Me.Name = "frmMain"
        Me.Text = "Informacijski sustav proizvodnje"
        Me.StatusStrip1.ResumeLayout(False)
        Me.StatusStrip1.PerformLayout()
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents OtvoreniNaloziToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents OtvoreneNarudžbeToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MRPToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents SastavnicaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents StatusStrip1 As System.Windows.Forms.StatusStrip
    Friend WithEvents TSProjekt As System.Windows.Forms.ToolStripStatusLabel
    Friend WithEvents GruboPlaniranjeKapacitetaNormativimaRadaRCCPToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents GantogramRealizacijeToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents GlavniPlanProizvodnjeGPPToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PlanPotrebeZaKapacitetimaCRPToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ŠifarnikToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents UpravljanjeProjektimaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents DobavljačiToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ProjektToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ToolStripMenuItem1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents IzlazToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents MenuStrip1 As System.Windows.Forms.MenuStrip
    Friend WithEvents VođenjeProjektaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents EvidencijaProizvodaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents PlanProizvodnogProToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents TSBar As System.Windows.Forms.ToolStripProgressBar
    Friend WithEvents RadnaMjestaToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RCCPToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents OAutoruToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem

End Class
