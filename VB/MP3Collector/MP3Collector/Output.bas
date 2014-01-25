Attribute VB_Name = "Output"
Dim LW As ListItem
Dim d, H, M, s
Dim n, NM
Dim N1
Dim B
Dim A1, STR, STR1
Dim L
Public Function OutText(path As String) ', A1 As String, A2 As String, A3 As String, A4 As String, A5 As String, A6 As String, A7 As String, A8 As String, A9 As String, A10 As String, A11 As String, A12 As String)
On Error Resume Next
'-- Music---------------
LoadTable (Song)
Call LSTArtAlbum
Gen.ProgressBar1.Max = Fix(GLF.Lnk.Recordset.RecordCount / 5)
B = 0
Gen.Text1.Text = ""

Music.Toolbar2.Buttons(5).Value = tbrUnpressed
For n = 1 To Music.Artist.Nodes.Count
 FindMusic1 (Music.Artist.Nodes(n).FullPath)
Gen.Label4.Caption = Music.Artist.Nodes(n).FullPath

If Music.Song.ListItems.Count >= 1 Then
    If Gen.Check1(2).Value = 1 Then
    Gen.Text1 = Gen.Text1 & "Artist: " & FRoot(Music.Artist.Nodes(n).FullPath)
    Gen.List1.AddItem Gen.Text1.Text
    Gen.Text1.Text = ""
    End If

    If Gen.Check1(3).Value = 1 Then
    Gen.Text1 = "Album: " & TRoot(Music.Artist.Nodes(n).FullPath)
    Gen.List1.AddItem Gen.Text1.Text
    Gen.Text1.Text = ""
    End If
End If
    
    For N1 = 0 To Music.Song.ListItems.Count
    If Gen.Check1(0).Value = 1 Then Gen.Text1 = "  " & Music.Song.ListItems(N1).SubItems(13) & ".  "
    
    Gen.Text1 = Gen.Text1 & Music.Song.ListItems(N1).Text
    
    If Gen.Check1(7).Value = 1 Then Gen.Text1 = Gen.Text1 & "  Birate:" & Music.Song.ListItems(N1).SubItems(8)
    If Gen.Check1(6).Value = 1 Then Gen.Text1 = Gen.Text1 & "  Len:" & ToMin6(Music.Song.ListItems(N1).SubItems(7))
    If Gen.Check1(4).Value = 1 Then Gen.Text1 = Gen.Text1 & "  Year:" & Music.Song.ListItems(N1).SubItems(3)
    If Gen.Check1(5).Value = 1 Then Gen.Text1 = Gen.Text1 & "  Genre:" & Music.Song.ListItems(N1).SubItems(4)
    If Gen.Check1(8).Value = 1 Then Gen.Text1 = Gen.Text1 & "  Size:" & Music.Song.ListItems(N1).SubItems(9)
    If Gen.Check1(1).Value = 1 Then Gen.Text1 = Gen.Text1 & "  CD:" & Music.Song.ListItems(N1).SubItems(6)
    If Gen.Check1(9).Value = 1 Then Gen.Text1 = Gen.Text1 & "  ID:" & Music.Song.ListItems(N1).SubItems(10)
    If Gen.Check1(10).Value = 1 Then Gen.Text1 = Gen.Text1 & "  Path:" & Music.Song.ListItems(N1).SubItems(11)
    

    Gen.List1.AddItem Gen.Text1.Text
    Gen.Text1.Text = ""
  B = B + 1
  Gen.ProgressBar1.Value = Fix(B / 5) - 1

    Next N1
    Gen.List1.AddItem Gen.Text1.Text
Next n
Gen.ProgressBar1.Value = 0

'--Save----------------------------------
Open path & ".txt" For Binary As #1
Put #1, 1, Gen.List1.List(0)
L = Len(Gen.List1.List(0)) + 1

For n = 1 To Gen.List1.ListCount
Put #1, L, vbCrLf & Gen.List1.List(n)

L = L + Len(Gen.List1.List(n)) + 2
Next n
Close #1
Gen.ProgressBar1.Value = 0
Gen.Label4 = ""
End Function


Function FRoot(Text As String)
A1 = InStr(1, Text, "\")
Select Case A1
Case 0
FRoot = Mid(Text, 1, Len(Text))
Case Else
FRoot = Mid(Text, 1, A1 - 1)
End Select
End Function

Function TRoot(Text As String)
A1 = InStr(1, Text, "\")
Select Case A1
Case 0
TRoot = "Unknown" 'Mid(Text, 1, Len(Text))
Case Else
TRoot = Mid(Text, A1 + 1, Len(Text))
End Select
End Function

Public Function ColHTML(Co As String)
Dim s, S1, S2
s = Mid(Co, 5, 2)
S1 = Mid(Co, 3, 2)
S2 = Mid(Co, 1, 2)
ColHTML = "#" & s & S1 & S2

End Function


Public Function OutHTML(path As String)
Gen.List1.Clear
Table (path)

Open path & ".htm" For Binary As #1
Put #1, 1, Gen.List1.List(0)
L = Len(Gen.List1.List(0)) + 1

For n = 1 To Gen.List1.ListCount
Put #1, L, vbCrLf & Gen.List1.List(n)

L = L + Len(Gen.List1.List(n)) + 2
Next n
Close #1
Gen.ProgressBar1.Value = 0
End Function


Sub Table(naziv As String)
On Error Resume Next
Dim BackCol, TextCol, NumCol, ArtistCol, AlbumCol, CDCol, BirateCol, LenCol, YCol, GCol, SCol, IDCol, PCol
Dim FCol, GradeCol, SubCol, TypeCol, OSCol, PbCol, LiCol
BackCol = ColHTML(Hex(Gen.Color(17).BackColor)) 'BackColor
TextCol = ColHTML(Hex(Gen.Color(18).BackColor)) 'TextColor
NumCol = ColHTML(Hex(Gen.Color(0).BackColor)) ' Number Color
CDCol = ColHTML(Hex(Gen.Color(1).BackColor)) 'Cd Color
ArtistCol = ColHTML(Hex(Gen.Color(2).BackColor)) 'Artist
AlbumCol = ColHTML(Hex(Gen.Color(3).BackColor)) 'Album
YCol = ColHTML(Hex(Gen.Color(4).BackColor)) ' Year Color
GCol = ColHTML(Hex(Gen.Color(5).BackColor)) 'Genre Color
LenCol = ColHTML(Hex(Gen.Color(6).BackColor)) ' Duration/Leght Color
BirateCol = ColHTML(Hex(Gen.Color(7).BackColor)) 'Brirate Color
SCol = ColHTML(Hex(Gen.Color(8).BackColor)) ' Size Color
IDCol = ColHTML(Hex(Gen.Color(9).BackColor)) ' Cd ID Color
PCol = ColHTML(Hex(Gen.Color(10).BackColor)) ' Path Color
FCol = ColHTML(Hex(Gen.Color(11).BackColor)) 'Format Color
GradeCol = ColHTML(Hex(Gen.Color(12).BackColor)) 'Grade Color
SubCol = ColHTML(Hex(Gen.Color(13).BackColor)) 'Subtitle Color
TypeCol = ColHTML(Hex(Gen.Color(14).BackColor)) 'Type color
OSCol = ColHTML(Hex(Gen.Color(15).BackColor)) 'OS Color
PbCol = ColHTML(Hex(Gen.Color(13).BackColor)) 'Publisher color
LiCol = ColHTML(Hex(Gen.Color(19).BackColor)) 'Licenc

' Music---------------------------------------------------
    Call InfoL
Gen.ProgressBar1.Max = Fix(GLF.Lnk.Recordset.RecordCount / 5)
B = 0
GLF.Lnk.Recordset.Close
LoadTable (Song)

'Head
With Gen.List1
.AddItem "<html>"
.AddItem "<head>"
.AddItem "<title>" & naziv & "</title>"
.AddItem "<meta http-equiv=" & Chr(34) & "Content-Type" & Chr(34) & "content=" & Chr(34) & "text/html; charset=iso-8859-1" & Chr(34) & ">"
.AddItem "</head>"

.AddItem ("<body bgcolor=" & Chr(34) & BackCol & Chr(34) & "  vlink=" & Chr(34) & TextCol & Chr(34) & "  text=" & Chr(34) & TextCol & Chr(34) & " >")
.AddItem "</body>"
.AddItem "</html>"

.AddItem "<table border=" & Chr(34) & "0" & Chr(34) & " cellspacing=" & Chr(34) & "0" & Chr(34) & " cellpadding=" & Chr(34) & "0" & Chr(34) & " width=" & Chr(34) & "98% " & Chr(34) & " >  "
.AddItem " <tr>"
.AddItem "  <td height=" & Chr(34) & "44" & Chr(34) & " ><small><small><font face=" & Chr(34) & "Arial" & Chr(34) & "color=" & Chr(34) & NumCol & Chr(34) & ">" & GLF.Lnk.Recordset.RecordCount & "</font><font color=" & Chr(34) & TextCol & Chr(34) & "face=" & Chr(34) & "Arial" & Chr(34) & ">"
.AddItem "  files in music database</font></small></small><br>"
.AddItem "  <small><small><font color=" & Chr(34) & TextCol & Chr(34) & "face=" & Chr(34) & "Arial" & Chr(34) & ">Length: </font><font face=" & Chr(34) & "Arial" & Chr(34) & "color=" & Chr(34) & NumCol & Chr(34) & ">" & d & "</font><font color=" & Chr(34) & TextCol & Chr(34) & "face=" & Chr(34) & "Arial" & Chr(34) & ">"
.AddItem "  days </font><font face=" & Chr(34) & "Arial" & Chr(34) & "color=" & Chr(34) & NumCol & Chr(34) & ">" & H & "</font><font color=" & Chr(34) & TextCol & Chr(34) & "face=" & Chr(34) & "Arial" & Chr(34) & ">"
.AddItem "  hours </font><font face=" & Chr(34) & "Arial" & Chr(34) & "color=" & Chr(34) & NumCol & Chr(34) & ">" & M & "</font><font color=" & Chr(34) & TextCol & Chr(34) & "face=" & Chr(34) & "Arial" & Chr(34) & ">"
.AddItem "  minutes  </font><font face=" & Chr(34) & "Arial" & Chr(34) & "color=" & Chr(34) & NumCol & Chr(34) & ">" & s & "</font><font color=" & Chr(34) & TextCol & Chr(34) & "face=" & Chr(34) & "Arial" & Chr(34) & "> seconds." & "</small></small></td>"
.AddItem " </tr>"
.AddItem " </table>"
End With
'Legend ----------------------
If Gen.Check1(17).Value = 1 Then
Gen.List1.AddItem "<table width=" & Chr(34) & "100%" & Chr(34) & " border=" & Chr(34) & "1" & Chr(34) & " cellpadding=" & Chr(34) & "0" & Chr(34) & "><tr>"
If Gen.Check1(0).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "2%" & Chr(34) & "><font color=" & Chr(34) & NumCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & "Number" & "</font></td>"
Gen.List1.AddItem "<td width=" & Chr(34) & "35%" & Chr(34) & "><p align=" & Chr(34) & "left" & Chr(34) & "><font color=" & Chr(34) & TextCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & "Song name" & "</font> </p> </td>"
    If Gen.Check1(7).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & BirateCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & "Birate" & "</font></td>"
    If Gen.Check1(6).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & LenCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & "Length" & "</font></td>"
    If Gen.Check1(4).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & YCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & "Year" & "</font></td>"
    If Gen.Check1(5).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & GCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & "Genre" & "</font></td>"
    If Gen.Check1(8).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & SCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & "Size" & "</font></td>"
    If Gen.Check1(1).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & CDCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & "CD Label" & "</font></td>"
    If Gen.Check1(9).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "14%" & Chr(34) & "><font color=" & Chr(34) & IDCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & "Size [bytes]" & "</font></td>"
    If Gen.Check1(10).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & PCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & "Path" & "</font></td>"
Gen.List1.AddItem "</tr></table><p>&nbsp;</p>"
End If
'End Legend ----------------------------
'Table ----------------------------------------------------------------------------------
For n = 1 To Music.Artist.Nodes.Count

 FindMusic1 (Music.Artist.Nodes(n).FullPath)
Gen.Label4.Caption = Music.Artist.Nodes(n).FullPath

If Music.Song.ListItems.Count >= 1 Then
If Gen.Check1(2).Value = 1 Or Gen.Check1(3).Value = 1 Then
    Gen.List1.AddItem "<table border=" & Chr(34) & "0" & Chr(34) & "cellspacing=" & Chr(34) & "0" & Chr(34) & " cellpadding=" & Chr(34) & "0" & Chr(34) & " width=" & Chr(34) & "98%" & Chr(34) & "><tr><td height=" & Chr(34) & "30" & Chr(34) & ">"
End If
    If Gen.Check1(2).Value = 1 Then Gen.List1.AddItem "      <p><small><small><font face=" & Chr(34) & "Arial" & Chr(34) & " color=" & Chr(34) & TextCol & Chr(34) & "> Artist: " & "</font><font face=" & Chr(34) & "Arial" & Chr(34) & "color=" & Chr(34) & ArtistCol & Chr(34) & ">" & FRoot(Music.Artist.Nodes(n).FullPath) & "</font><font color=" & Chr(34) & "#409FFF" & Chr(34) & " face=" & Chr(34) & "Arial" & Chr(34) & ">": Gen.List1.AddItem "        </font></small></small><br>"
    If Gen.Check1(3).Value = 1 Then Gen.List1.AddItem "        <small><small><font color=" & Chr(34) & TextCol & Chr(34) & " face=" & Chr(34) & "Arial" & Chr(34) & ">Album: " & "</font><font face=" & Chr(34) & "Arial" & Chr(34) & "color=" & Chr(34) & ArtistCol & Chr(34) & ">" & TRoot(Music.Artist.Nodes(n).FullPath) & "</font></small></small>"
    
If Gen.Check1(2).Value = 1 Or Gen.Check1(3).Value = 1 Then
    Gen.List1.AddItem "      </p></td></tr></table>"
End If
End If
'Tabela za popis pjesama------
Call LSTArtAlbum

For N1 = 0 To Music.Song.ListItems.Count 'Petlja za citanje pjesama
Gen.List1.AddItem "<table width=" & Chr(34) & "100%" & Chr(34) & " border=" & Chr(34) & "0" & Chr(34) & " cellpadding=" & Chr(34) & "0" & Chr(34) & "><tr>"
    
If Gen.Check1(0).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "2%" & Chr(34) & "><font color=" & Chr(34) & NumCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & Trim(Music.Song.ListItems(N1).SubItems(13)) & "</font></td>"

'Naziv pjesme---------------------------
Gen.List1.AddItem "<td width=" & Chr(34) & "45%" & Chr(34) & "><p align=" & Chr(34) & "left" & Chr(34) & "><font color=" & Chr(34) & TextCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & Trim(Music.Song.ListItems(N1).Text) & "</font> </p> </td>"

'_______________________________________

    If Gen.Check1(7).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "6%" & Chr(34) & "><font color=" & Chr(34) & BirateCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & Trim(Music.Song.ListItems(N1).SubItems(8)) & "</font></td>"
    If Gen.Check1(6).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "6%" & Chr(34) & "><font color=" & Chr(34) & LenCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & Trim(ScToMin(Music.Song.ListItems(N1).SubItems(7))) & "</font></td>"
    If Gen.Check1(4).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & YCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & Trim(Music.Song.ListItems(N1).SubItems(3)) & "</font></td>"
    If Gen.Check1(5).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "6%" & Chr(34) & "><font color=" & Chr(34) & GCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & Trim(Music.Song.ListItems(N1).SubItems(4)) & "</font></td>"
    If Gen.Check1(8).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & SCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & Trim(Music.Song.ListItems(N1).SubItems(9)) & "</font></td>"
    If Gen.Check1(1).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & CDCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & Trim(Music.Song.ListItems(N1).SubItems(6)) & "</font></td>"
    If Gen.Check1(9).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & IDCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & Trim(Music.Song.ListItems(N1).SubItems(10)) & "</font></td>"
    If Gen.Check1(10).Value = 1 Then Gen.List1.AddItem "<td width=" & Chr(34) & "10%" & Chr(34) & "><font color=" & Chr(34) & PCol & Chr(34) & "size=" & Chr(34) & "3" & Chr(34) & ">" & Trim(Music.Song.ListItems(N1).SubItems(11)) & "</font></td>"

Gen.List1.AddItem "</tr>"
    
    B = B + 1
    Gen.ProgressBar1.Value = Fix(B / 5) - 1
Next N1 'petlja za citanje pjesama
Gen.List1.AddItem "</tr></table>"
If Music.Song.ListItems.Count >= 1 Then Gen.List1.AddItem "<hr width=" & Chr(34) & "100%" & Chr(34) & " noshade size=" & Chr(34) & "1" & Chr(34) & "color=" & Chr(34) & CDCol & Chr(34) & ">"

Next n 'zavrsetak petlje s Artist i Albums

Gen.List1.AddItem "<BR><p>&nbsp;</p></body></html>"

Gen.ProgressBar1.Value = 0
Gen.Label4 = ""

End Sub


Public Function ScToMin(Numb As String)
Dim SC
SC = Numb
SC = Fix(SC / 60)
SC = SC & ":" & Numb - (SC * 60)
ScToMin = SC
End Function

Sub InfoL()
Dim Dur ' As Double
Dim SZ
'Dur = 0
Music.PBar.Visible = True
Music.PBar.Max = Fix(GLF.Lnk.Recordset.RecordCount / 5)
LoadTable (Song)
GLF.Lnk.Recordset.MoveFirst
Dur = Dur + Val(GLF.cdb(8).Text)

For NM = 1 To GLF.Lnk.Recordset.RecordCount
Music.PBar.Value = Fix(NM / 5)
GLF.Lnk.Recordset.MoveNext
Dur = Dur + Val(GLF.cdb(8).Text)
Next NM
Music.PBar.Value = 0


NM = Dur
d = Fix(NM / 86400)

NM = NM - (d * 86400)
H = Fix(NM / 3600) 'Sati

NM = NM - (H * 3600)
M = Fix(NM / 60) 'Minute

s = NM - (M * 60)
End Sub

Public Function ToMin6(Numb6 As Integer)
On Error Resume Next
    M6 = Numb6
    M6 = Fix(M6 / 60)
    M6 = M6 & ":" & Numb6 - (M6 * 60)
    ToMin6 = M6
End Function

