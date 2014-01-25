Public Class frmMain
    Public ID_proj As Integer

    Private Sub UpravljanjeProjektimaToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles UpravljanjeProjektimaToolStripMenuItem.Click
        frmProjectMg.ShowDialog()
    End Sub

    Private Sub IzlazToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles IzlazToolStripMenuItem.Click
        End
    End Sub

    Private Sub EvidencijaProizvodaToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles EvidencijaProizvodaToolStripMenuItem.Click
        frmProizvodi.MdiParent = Me
        frmProizvodi.Show()
    End Sub

    Private Sub DobavljačiToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DobavljačiToolStripMenuItem.Click
        frmDobavljaci.MdiParent = Me
        frmDobavljaci.Show()
    End Sub

    Private Sub ŠifarnikToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ŠifarnikToolStripMenuItem.Click
        frmSifarnik.MdiParent = Me
        frmSifarnik.Show()
    End Sub

    Private Sub SastavnicaToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SastavnicaToolStripMenuItem.Click
        frmSastavnica.MdiParent = Me
        frmSastavnica.Show()
    End Sub

    Private Sub PlanProizvodnogProToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PlanProizvodnogProToolStripMenuItem.Click
        frmPPP.MdiParent = Me
        frmPPP.Show()
    End Sub

    Private Sub GlavniPlanProizvodnjeGPPToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles GlavniPlanProizvodnjeGPPToolStripMenuItem.Click
        frmGPP.MdiParent = Me
        frmGPP.Show()
    End Sub

    Private Sub OtvoreneNarudžbeToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OtvoreneNarudžbeToolStripMenuItem.Click
        frmNarudzbe.MdiParent = Me
        frmNarudzbe.Show()
    End Sub

    Private Sub OtvoreniNaloziToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OtvoreniNaloziToolStripMenuItem.Click
        frmNalozi.MdiParent = Me
        frmNalozi.Show()
    End Sub

    Private Sub MRPToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MRPToolStripMenuItem.Click
        frmMRP.MdiParent = Me
        frmMRP.Show()
    End Sub

    Private Sub RadnaMjestaToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadnaMjestaToolStripMenuItem.Click
        frmRadnoMj.MdiParent = Me
        frmRadnoMj.Show()
    End Sub

    Private Sub RCCPToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RCCPToolStripMenuItem.Click
        frmRCCP.MdiParent = Me
        frmRCCP.Show()
    End Sub

    Private Sub PlanPotrebeZaKapacitetimaCRPToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PlanPotrebeZaKapacitetimaCRPToolStripMenuItem.Click
        frmCRP.MdiParent = Me
        frmCRP.Show()
    End Sub

    Private Sub GantogramRealizacijeToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles GantogramRealizacijeToolStripMenuItem.Click
        frmGant.MdiParent = Me
        frmGant.Show()
    End Sub

    Private Sub OAutoruToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OAutoruToolStripMenuItem.Click
        frmAutor.ShowDialog()
    End Sub
End Class
