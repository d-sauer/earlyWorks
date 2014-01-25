Attribute VB_Name = "Module1"
Dim KK As ListItem
Dim STRr As String

Dim QN, NM, w1, X1, M1
Dim qNode1, qNode2, qNum, WN, ttx As String
Dim a, A1
Dim A2, B
Dim NN, STR, STR1, STR2
Dim N, H, M, s
Dim NESTO1

Dim NS
Dim TX1, TX2
Public Type TableTXT
TXT0 As String
TXT1 As String
TXT2 As String
TXT3 As String
TXT4 As String
TXT5 As String
TXT6 As String
TXT7 As String
TXT8 As String
TXT9 As String
TXT10 As String
TXT11 As String
TXT12 As String
TXT13 As String
TXT14 As String
TXT15 As String
TXT16 As String
TXT17 As String
End Type

Global TableText As TableTXT

Public Enum Drive_Info
id = 0
Size = 0
Free = 0
End Enum

Enum baza
Artist = 1
Games = 2
Movi = 3
Others = 4
Progs = 5
Song = 6
End Enum

Private Declare Function GetDiskFreeSpaceEx Lib "kernel32" Alias "GetDiskFreeSpaceExA" (ByVal lpRootPathName As String, lpFreeBytesAvailableToCaller As Currency, lpTotalNumberOfBytes As Currency, lpTotalNumberOfFreeBytes As Currency) As Long

Dim R As Long, BytesFreeToCalller As Currency, TotalBytes As Currency
Dim TotalFreeBytes As Currency, TotalBytesUsed As Currency
Dim TNB As Double
Dim TFB As Double
Dim FreeBytes As Long
Dim DriveLetter As String
Dim DLetter As String
Dim spaceInt As Integer

Private Declare Function GetDriveType Lib "kernel32" Alias "GetDriveTypeA" (ByVal nDrive As String) As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Private Declare Function GetVolumeInformation Lib "kernel32" _
Alias "GetVolumeInformationA" (ByVal lpRootPathName As String, _
ByVal lpVolumeNameBuffer As String, ByVal nVolumeNameSize As _
Long, lpVolumeSerialNumber As Long, lpMaximumComponentLength _
As Long, lpFileSystemFlags As Long, ByVal _
lpFileSystemNameBuffer As String, ByVal nFileSystemNameSize _
As Long) As Long
Public Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Public Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long


Public Function VolumeName(Optional Drive As String = "C:\")
'On Error Resume Next
Dim sBuffer As String
sBuffer = Space$(255)

'fix bad parameter values
If Len(Drive) = 1 Then Drive = Drive & ":\"
If Len(Drive) = 2 And Right$(Drive, 1) = ":" _
    Then Drive = Drive & "\"

If GetVolumeInformation(Drive, sBuffer, Len(sBuffer), 0, 0, 0, _
Space$(255), 255) = 0 Then
     Exit Function
Else
    VolumeName = Left$(sBuffer, InStr(sBuffer, Chr$(0)) - 1)
End If

End Function


Public Function DriveType(Drive As String) As String

Dim sAns As String, lAns As Long

'fix bad parameter values
If Len(Drive) = 1 Then Drive = Drive & ":\"
If Len(Drive) = 2 And Right$(Drive, 1) = ":" _
    Then Drive = Drive & "\"

lAns = GetDriveType(Drive)
Select Case lAns
 Case 2
   sAns = "[Removable Drive]"
 Case 3
   sAns = "[Fixed Drive]"
 Case 4
    sAns = "[Remote Drive]"
 Case 5
    sAns = "[CD-ROM]"
 Case 6
    sAns = "[RAM Disk]"
 Case Else
    sAns = "[Drive Doesn't Exist]"
End Select

DriveType = sAns
End Function


Function LoadAll()
Load GLF
Load Music: Music.Hide
Load Game: Game.Hide
Load Movie: Movie.Hide
Load Programs: Programs.Hide
Sleep 200

With Music.Song
 .ColumnHeaders.Add , , "Title", 2800, 0
 .ColumnHeaders.Add , , "Artist", , 2
 .ColumnHeaders.Add , , "Album", , 2
 .ColumnHeaders.Add , , "Year", , 2
 .ColumnHeaders.Add , , "Genre", , 2
 .ColumnHeaders.Add , , "File Name", 1800, 2
 .ColumnHeaders.Add , , "Label", , 2
 .ColumnHeaders.Add , , "Duration", , 2
 .ColumnHeaders.Add , , "Birate", , 2
 .ColumnHeaders.Add , , "Size", , 2
 .ColumnHeaders.Add , , "ID", , 0
 .ColumnHeaders.Add , , "Path", , 0
 .ColumnHeaders.Add , , "Comment", , 0
 .ColumnHeaders.Add , , "No.", 600, 1
End With
With Music.compilation
 .ColumnHeaders.Add , , "Title", 2800, 0
 .ColumnHeaders.Add , , "Artist", , 2
 .ColumnHeaders.Add , , "Album", , 2
 .ColumnHeaders.Add , , "Year", , 2
 .ColumnHeaders.Add , , "Genre", , 2
 .ColumnHeaders.Add , , "File Name", 1800, 2
 .ColumnHeaders.Add , , "Label", , 2
 .ColumnHeaders.Add , , "Duration", , 2
 .ColumnHeaders.Add , , "Birate", , 2
 .ColumnHeaders.Add , , "Size", , 2
 .ColumnHeaders.Add , , "ID", , 0
 .ColumnHeaders.Add , , "Path", , 0
 .ColumnHeaders.Add , , "Comment", , 0
 .ColumnHeaders.Add , , "No.", 600, 1
End With

With Music.ListF
 .ColumnHeaders.Add , , "Title", 2800, 0
 .ColumnHeaders.Add , , "Artist", , 2
 .ColumnHeaders.Add , , "Album", , 2
 .ColumnHeaders.Add , , "Year", , 2
 .ColumnHeaders.Add , , "Genre", , 2
 .ColumnHeaders.Add , , "File Name", 1800, 2
 .ColumnHeaders.Add , , "Label", , 2
 .ColumnHeaders.Add , , "Duration", , 2
 .ColumnHeaders.Add , , "Birate", , 2
 .ColumnHeaders.Add , , "Size", , 2
 .ColumnHeaders.Add , , "ID", , 0
 .ColumnHeaders.Add , , "Path", , 0
 .ColumnHeaders.Add , , "Comment", , 0
 .ColumnHeaders.Add , , "No.", 600, 1
End With
With Movie.LV
.ColumnHeaders.Add , , "Movie", 2300, 0
.ColumnHeaders.Add , , "Format", 500, 0
.ColumnHeaders.Add , , "Year", 800, 0
.ColumnHeaders.Add , , "Grade", 500, 0
.ColumnHeaders.Add , , "Subtitle", 1200, 0
.ColumnHeaders.Add , , "No.", 500, 0
End With
With Game.LV
.ColumnHeaders.Add , , "Game", 2300, 0
.ColumnHeaders.Add , , "Grade", 400, 0
.ColumnHeaders.Add , , "Type", 1300, 0
.ColumnHeaders.Add , , "OS", 600, 0
.ColumnHeaders.Add , , "Year", 600, 0
.ColumnHeaders.Add , , "Publisher", 1700, 0
.ColumnHeaders.Add , , "Label", 1200, 0
.ColumnHeaders.Add , , "URL", 1000, 0
.ColumnHeaders.Add , , "Size [bytes]", 1000, 0
.ColumnHeaders.Add , , "ID", 800, 0
.ColumnHeaders.Add , , "Path", 1500, 0
.ColumnHeaders.Add , , "Description", 2200, 0
.ColumnHeaders.Add , , "Comment", 2200, 0
.ColumnHeaders.Add , , "No", 400, 0
End With
With Programs.LV
.ColumnHeaders.Add , , "Program", 2000, 0
.ColumnHeaders.Add , , "Licenc", 1000, 0
.ColumnHeaders.Add , , "OS", 700, 0
.ColumnHeaders.Add , , "Publisher", 1500, 0
.ColumnHeaders.Add , , "Year", 600, 0
.ColumnHeaders.Add , , "Type", 1500, 0
.ColumnHeaders.Add , , "Drive Label", 1000, 0
.ColumnHeaders.Add , , "Purpose", 2000, 0
.ColumnHeaders.Add , , "URL", 2000, 0
.ColumnHeaders.Add , , "Size", 1000, 0
.ColumnHeaders.Add , , "Description", 2000, 0
.ColumnHeaders.Add , , "Comment", 2000, 0
.ColumnHeaders.Add , , "No", 500, 0

End With
End Function



Function Creat_MDB(dir As String)
On Error GoTo 10
'Creat Base
Dim wrkDefault As Workspace
    Dim dbsNew As Database
    Dim prpLoop As Property
    Set wrkDefault = DBEngine.Workspaces(0)
'Kreiraj Bazu...
    Set dbsNew = wrkDefault.CreateDatabase(dir, dbLangGeneral, dbEncrypt)

dbsNew.Close
Dim NvT As Database

'Tabela za Pjesme, song, music
t$ = "CREATE TABLE " + "Song"
Set NvT = OpenDatabase(dir)
NvT.Execute t$ _
        & "(Num TEXT, FileN TEXT, Title TEXT, CD TEXT, Artist TEXT, Album TEXT,Year TEXT, Genre TEXT, Duration TEXT, Birate TEXT, Size TEXT, Comment TEXT, CDS TEXT, CDID TEXT, Path TEXT);" ',Num TEXT);"
NvT.Close

'Tabela za Izvodjace, Artist
t$ = "CREATE TABLE " + "Artist"
Set NvT = OpenDatabase(dir)
NvT.Execute t$ _
        & "(Num TEXT, Artist TEXT, Formated TEXT, Years TEXT, Genre TEXT,Styles TEXT, Tones TEXT, RelatedA TEXT, URL TEXT, Albums TEXT, Picture TEXT, History TEXT);"
NvT.Close

'Tabela za filmove Movie
t$ = "CREATE TABLE " + "Movie"
Set NvT = OpenDatabase(dir)
NvT.Execute t$ _
        & "(Num TEXT, Name TEXT, Genre TEXT, Tagline TEXT, Description TEXT, Comment TEXT , Directed TEXT, Year TEXT, Format TEXT, Actor TEXT, Len TEXT, Grade TEXT, Picture TEXT, CDID TEXT, URL TEXT, Path TEXT, CDL TEXT, Title TEXT);"
NvT.Close

'Tabela za igre- Game
t$ = "CREATE TABLE " + "Game"
Set NvT = OpenDatabase(dir)
NvT.Execute t$ _
        & "(Num TEXT, Name TEXT, Size TEXT, Type TEXT, Publisher TEXT, OS TEXT, Comment TEXT, URL TEXT, Grade TEXT, Year TEXT, CDID TEXT, Picture TEXT, Path TEXT, CDL TEXT, Description TEXT);"
NvT.Close

'Tabela programa - Programs
t$ = "CREATE TABLE " + "Prog"
Set NvT = OpenDatabase(dir)
NvT.Execute t$ _
        & "(Num TEXT, Name TEXT, Type TEXT, Size TEXT, OS TEXT, Description TEXT, Comment TEXT, URL TEXT, CDL TEXT,Publisher TEXT,Year TEXT,Licenc TEXT,Purpose TEXT);"
NvT.Close

'tabela ostalih stvarcica- Other
't$ = "CREATE TABLE " + "Other"
'Set NvT = OpenDatabase(dir)
'NvT.Execute t$ _
'        & "(Name TEXT, Description TEXT, Comment TEXT, CDID TEXT, Size TEXT, Path TEXT, CDL TEXT,Num TEXT);"
'NvT.Close
'Exit Function

10:
'MsgBox "Database already exists.", 64, "Error"

End Function


Function Load_cdb(dir As String)
On Error Resume Next
Unload Form2
GLF.Lnk.DatabaseName = dir
'LoadTable (Song)
GLF.Lnk.Refresh
GLF.Label1.Caption = dir

End Function


Function LoadTable(Table As baza)
On Error Resume Next  ' zbog prebacivanja s jedne tabele na drugu, omogucuje da se Treinutni tekse u tabeli promjeni ili doda i zatim ode na izabranu tabelu
GLF.Lnk.Recordset.Close
Select Case Table
'Artist--------------------------------------------
Case 1
With GLF
.Lnk.Refresh
.Lnk.RecordSource = "Artist"

.cdb(0).DataField = "Artist"
.cdb(1).DataField = "Formated"
.cdb(2).DataField = "Years"
.cdb(3).DataField = "Genre"
.cdb(4).DataField = "Styles"
.cdb(5).DataField = "Tones"
.cdb(6).DataField = "RelatedA"
.cdb(7).DataField = "URL"
.cdb(8).DataField = "Albums"
.cdb(9).DataField = "Picture"
.cdb(10).DataField = "History"
.cdb(11).DataField = "Num"
.Lnk.Refresh
.Lnk.Recordset.AddNew
End With

'GAME--------------------------------------------
Case 2
With GLF
.Lnk.Refresh
.Lnk.RecordSource = "Game"

.cdb(0).DataField = "Num"
.cdb(1).DataField = "Name"
.cdb(2).DataField = "Size"
.cdb(3).DataField = "Type"
.cdb(4).DataField = "Publisher"
.cdb(5).DataField = "OS"
.cdb(6).DataField = "Comment"
.cdb(7).DataField = "URL"
.cdb(8).DataField = "Grade"
.cdb(9).DataField = "Year"
.cdb(10).DataField = "CDID"
.cdb(11).DataField = "Picture"
.cdb(12).DataField = "Path"
.cdb(13).DataField = "CDL"
.cdb(14).DataField = "Description"

.Lnk.Refresh
.Lnk.Recordset.AddNew
End With

'Movie--------------------------------------------
Case 3
With GLF
.Lnk.Refresh
.Lnk.RecordSource = "Movie"

.cdb(0).DataField = "Num"
.cdb(1).DataField = "Name"
.cdb(2).DataField = "Genre"
.cdb(3).DataField = "Tagline"
.cdb(4).DataField = "Description"
.cdb(5).DataField = "Comment"
.cdb(6).DataField = "Directed"
.cdb(7).DataField = "Year"
.cdb(8).DataField = "Format"
.cdb(9).DataField = "Actor"
.cdb(10).DataField = "Len"
.cdb(11).DataField = "Grade"
.cdb(12).DataField = "Picture"
.cdb(13).DataField = "CDID"
.cdb(14).DataField = "URL"
.cdb(15).DataField = "Path"
.cdb(16).DataField = "CDL"
.cdb(17).DataField = "Title" 'subtitle
.Lnk.Refresh
.Lnk.Recordset.AddNew
End With

'Other--------------------------------------------------
Case 4
'With GLF
'.Lnk.Refresh
'.Lnk.RecordSource = "Other"

'.cdb(0).DataField = "Num"
'.cdb(1).DataField = "Name"
'.cdb(2).DataField = "Description"
'.cdb(3).DataField = "Comment"
'.cdb(4).DataField = "CDID"
'.cdb(5).DataField = "Size"
'.cdb(6).DataField = "Path"
'.cdb(7).DataField = "CDL"

'.Lnk.Refresh
'.Lnk.Recordset.AddNew
'End With

'Programs---------------------------------------------
Case 5
With GLF
.Lnk.Refresh
.Lnk.RecordSource = "Prog"

.cdb(0).DataField = "Num"
.cdb(1).DataField = "Name"
.cdb(2).DataField = "Type"
.cdb(3).DataField = "Size"
.cdb(4).DataField = "OS"
.cdb(5).DataField = "Description"
.cdb(6).DataField = "Comment"
.cdb(7).DataField = "URL"
.cdb(8).DataField = "CDL"
.cdb(9).DataField = "Publisher"
.cdb(10).DataField = "Year"
.cdb(11).DataField = "Licenc"
.cdb(12).DataField = "Purpose"

.Lnk.Refresh
.Lnk.Recordset.AddNew
End With

'SONG---------------------------------------------
Case 6
With GLF
.Lnk.Refresh
.Lnk.RecordSource = "Song"

.cdb(0).DataField = "Num"
.cdb(1).DataField = "FileN"
.cdb(2).DataField = "Title"
.cdb(3).DataField = "CD"
.cdb(4).DataField = "Artist"
.cdb(5).DataField = "Album"
.cdb(6).DataField = "Year"
.cdb(7).DataField = "Genre"
.cdb(8).DataField = "Duration"
.cdb(9).DataField = "Birate"
.cdb(10).DataField = "Size"
.cdb(11).DataField = "Comment"
.cdb(12).DataField = "CDS"
.cdb(13).DataField = "CDID"
.cdb(14).DataField = "Path"

.Lnk.Refresh
.Lnk.Recordset.AddNew
End With

End Select

End Function

Function getDiskSp(DiskD As String)
Dim INFO As String
DriveLetter = DiskD

spaceInt = InStr(DriveLetter, " ")
If spaceInt > 0 Then DriveLetter = Left$(DriveLetter, spaceInt - 1)

If Right$(DriveLetter, 1) <> "\" Then DriveLetter = DriveLetter & "\"
DLetter = Left(UCase(DriveLetter), 1)

    Call GetDiskFreeSpaceEx(DriveLetter, BytesFreeToCalller, TotalBytes, TotalFreeBytes)
TNB = TotalBytes * 10000
    TFB = (TotalBytes - TotalFreeBytes) * 10000
INFO = " Capacity:  " & Format$(TotalBytes * 10000, "###,###,###,##0") & " bytes"
INFO = INFO & vbCrLf & "   Free Space:  " & Format$(BytesFreeToCalller * 10000, "###,###,###,##0") & " bytes"
'Form1.Label3.Caption = "Disk space used:  " & Format(TFB / TNB * 100, "###.#0") & " %"
'Form1.Label4.Caption = "Disk space available:  " & Format(100 - TFB / TNB * 100, "###.#0") & " %"
'Label5.Caption = Format(100 - TFB / TNB * 100, "###.#0") & " % of free space"
'Picture1.Width = Format(100 - TFB / TNB * 100, "###.#0") * 50
getDiskSp = INFO

End Function

Function getDiskSp1(DiskD As String)
Dim INFO As String
DriveLetter = DiskD

spaceInt = InStr(DriveLetter, " ")
If spaceInt > 0 Then DriveLetter = Left$(DriveLetter, spaceInt - 1)

If Right$(DriveLetter, 1) <> "\" Then DriveLetter = DriveLetter & "\"
DLetter = Left(UCase(DriveLetter), 1)

    Call GetDiskFreeSpaceEx(DriveLetter, BytesFreeToCalller, TotalBytes, TotalFreeBytes)
TNB = TotalBytes * 10000
    TFB = (TotalBytes - TotalFreeBytes) * 10000
INFO = Format$(TotalBytes * 10000, "###,###,###,##0")
getDiskSp1 = INFO

End Function



Public Sub All_Genre()
Dim Node1, Node2, Num
Dim Mnum As Integer

Set Node1 = Music.Treii(0).Nodes.Add(, , , "Rock"): Node1.Tag = Node1.Text
    For Mnum = 0 To 202
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Rock(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Music.Treii(0).Nodes.Add(, , , "Country"): Node1.Tag = Node1.Text
    For Mnum = 0 To 29
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Country(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Music.Treii(0).Nodes.Add(, , , "Jazz"): Node1.Tag = Node1.Text
    For Mnum = 0 To 55
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Jazz(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Music.Treii(0).Nodes.Add(, , , "Blues"): Node1.Tag = Node1.Text
    For Mnum = 0 To 53
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Blues(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Music.Treii(0).Nodes.Add(, , , "World"): Node1.Tag = Node1.Text
    For Mnum = 0 To 134
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , World(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Music.Treii(0).Nodes.Add(, , , "Folk"): Node1.Tag = Node1.Text
    For Mnum = 0 To 15
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Folk(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Music.Treii(0).Nodes.Add(, , , "Rap"): Node1.Tag = Node1.Text
    For Mnum = 0 To 23
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Rap(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum
    
Set Node1 = Music.Treii(0).Nodes.Add(, , , "Reggae"): Node1.Tag = Node1.Text
    For Mnum = 0 To 14
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Reggae(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum
    
Set Node1 = Music.Treii(0).Nodes.Add(, , , "Vocal"): Node1.Tag = Node1.Text
    For Mnum = 0 To 12
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Vocal(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Music.Treii(0).Nodes.Add(, , , "Gospel"): Node1.Tag = Node1.Text
    For Mnum = 0 To 19
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Gospel(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Music.Treii(0).Nodes.Add(, , , "Easy Listing"): Node1.Tag = Node1.Text
    For Mnum = 0 To 12
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Easy(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Music.Treii(0).Nodes.Add(, , , "New Age"): Node1.Tag = Node1.Text
    For Mnum = 0 To 17
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , NewAge(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

Set Node1 = Music.Treii(0).Nodes.Add(, , , "Winamp"): Node1.Tag = Node1.Text
    For Mnum = 0 To 125
    Set Node2 = Music.Treii(0).Nodes.Add(Node1.Index, tvwChild, , Winamp(Mnum)): Node2.Tag = Node1.Tag
    Next Mnum

'All MOVIE
'For Mnum = 0 To 46
'Set Node1 = Genre.Trei(1).Nodes.Add(, , , AllMovie(Mnum))
'Next Mnum

'All Game
'For Mnum = 0 To 24
'Set Node1 = Genre.Trei(2).Nodes.Add(, , , AllGame(Mnum))
'Next Mnum

End Sub


Public Function ListTable(Art As baza) ' As TableTXT
'On Error Resume Next
LoadTable (Art)
Dim NM
GLF.Lnk.Recordset.MoveFirst
For NM = 1 To GLF.Lnk.Recordset.RecordCount
GLF.Lnk.Recordset.MoveNext
Next NM
End Function


Public Function LArtistName() '(Art As baza) ' As TableTXT
On Error Resume Next
LoadTable (Artist)
Dim NM
GLF.Lnk.Recordset.MoveFirst
scanf.Combo2.AddItem GLF.cdb(0).Text

For NM = 1 To GLF.Lnk.Recordset.RecordCount
GLF.Lnk.Recordset.MoveNext
scanf.Combo2.AddItem GLF.cdb(0).Text
Next NM
End Function

Public Function SMusicToDb()
Dim SN, s, SF
On Error Resume Next
scanf.MousePointer = 11
scanf.PBar.Visible = True

GLF.Lnk.Recordset.Close
LoadTable (Song)
GLF.Lnk.Recordset.MoveLast

s = Mid(GLF.cdb(0).Text, 2, Len(GLF.cdb(0)))
If s = "" Then s = 0
SN = scanf.MusicSc.ListItems.Count

GLF.Lnk.Recordset.Close
LoadTable (Song)

scanf.PBar.Max = SN

For SF = 0 To SN
s = s + 1
scanf.PBar.Value = SF

STR = Trim(scanf.MusicSc.ListItems(SF).SubItems(4))
If STR = "" Then STR = "Unknown"
STR1 = Trim(scanf.MusicSc.ListItems(SF).SubItems(5))
If STR1 = "" Then STR1 = "Unknown"
STR2 = Trim(scanf.MusicSc.ListItems(SF).SubItems(2))
If STR2 = "" Then STR1 = "Unknown"

GLF.cdb(0).Text = "a" & s
GLF.cdb(2).Text = Trim(scanf.MusicSc.ListItems.Item(SF).Text) 'Title
GLF.cdb(1).Text = Trim(scanf.MusicSc.ListItems(SF).SubItems(1)) 'File Name
GLF.cdb(4).Text = Trim(scanf.MusicSc.ListItems(SF).SubItems(2)) 'Artist
GLF.cdb(5).Text = Trim(scanf.MusicSc.ListItems(SF).SubItems(3)) 'Album
GLF.cdb(6).Text = STR 'scanf.MusicSc.ListItems(SF).SubItems(4) 'Year
GLF.cdb(7).Text = STR1 'Trim(scanf.MusicSc.ListItems(SF).SubItems(5)) 'Genre
GLF.cdb(3).Text = Trim(scanf.MusicSc.ListItems(SF).SubItems(6)) 'Drive Label (CD)
GLF.cdb(8).Text = Trim(scanf.MusicSc.ListItems(SF).SubItems(7)) 'Druration
GLF.cdb(9).Text = Trim(scanf.MusicSc.ListItems(SF).SubItems(8)) 'Birate
GLF.cdb(10).Text = Trim(scanf.MusicSc.ListItems(SF).SubItems(9)) 'Size
GLF.cdb(14).Text = Mid(Trim(scanf.MusicSc.ListItems(SF).SubItems(10)), 3, Len(Trim(scanf.MusicSc.ListItems(SF).SubItems(10)))) 'Path
GLF.cdb(13).Text = Trim(scanf.MusicSc.ListItems(SF).SubItems(11)) 'CdID
GLF.cdb(12).Text = Trim(scanf.Label9.Caption)
LoadTable (Song)
Next SF
scanf.PBar.Visible = False
scanf.MousePointer = 0
End Function




Public Function FiltALB(TXT As String) As String
On Error GoTo 10
STR = ""
STR1 = ""
a = 0
A1 = 0
TXT = Replace(TXT, "  ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "   ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "    ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "     ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "      ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "       ", " ", 1, Len(TXT), vbTextCompare)

For NN = 0 To Len(TXT)
a = A1 + 1
A1 = InStr(a, TXT, " ")

STR = LCase$(Mid(TXT, a, A1 - a))
STR = UCase$(Mid(STR, 1, 1)) & Mid(STR, 2, Len(STR))
STR1 = STR1 & " " & STR
Next NN
10:

STR = LCase$(Mid(TXT, a, Len(TXT)))
STR = UCase$(Mid(STR, 1, 1)) & Mid(STR, 2, Len(STR))
STR1 = STR1 & " " & STR

STR = ""
STR1 = ""
A1 = InStr(1, TXT, "!!")
STR = UCase$(Mid(TXT, A1 + 2, 1))
STR1 = STR & Mid(TXT, A1 + 3, Len(TXT))

FiltALB = Mid(TXT, 1, A1 + 1) & STR1
End Function



Function NESTO(TXT As String)
On Error Resume Next
TXT = Replace(TXT, "  ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "   ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "    ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "     ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "      ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "       ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "        ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "         ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "          ", " ", 1, Len(TXT), vbTextCompare)
NS = TXT
End Function

Public Function svasta(TXT As String) As String
On Error Resume Next
TXT = Replace(TXT, "  ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "   ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "    ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "     ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "      ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "       ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "        ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "         ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "          ", " ", 1, Len(TXT), vbTextCompare)
If Mid(TXT, 1, 1) = " " Then TXT = Mid(TXT, 2, Len(TXT))
svasta = TXT
End Function

Public Function LSTArtAlbum()
On Error Resume Next
Dim QN1
Dim AA2 As String
Music.MousePointer = 11
GLF.PBar.Visible = True
Music.List1.Clear
Music.List2.Clear
Music.List3.Clear
Music.Artist.Nodes.Clear

Music.List1.AddItem "Unknown"

LoadTable (Song)

GLF.Lnk.Recordset.MoveFirst
TX1 = GLF.cdb(4).Text
If Mid(TX1, 1, 1) = " " Then TX1 = Mid(TX1, 2, Len(TX1) - 1)
Music.List1.AddItem Trim(TX1)
Music.List2.AddItem Trim(TX1 & "!!" & GLF.cdb(5).Text)
    GLF.PBar.Max = (GLF.Lnk.Recordset.RecordCount / 2)

For NM = 1 To GLF.Lnk.Recordset.RecordCount
GLF.Lnk.Recordset.MoveNext
TX1 = GLF.cdb(4).Text
If Mid(TX1, 1, 1) = " " Then TX1 = Mid(TX1, 2, Len(TX1) - 1)
Music.List1.AddItem Trim(TX1)
Music.List2.AddItem Trim(TX1 & "!!" & GLF.cdb(5).Text)
    GLF.PBar.Value = Fix((NM / 2) - 1)
Next NM


'Clear Duplicate Artist from List1
For w1 = Music.List1.ListCount - 1 To 0 Step -1
X1 = Music.List1.List(w1)

NESTO (X1)
If NS = " " Then Music.List1.RemoveItem w1
Next w1

For w1 = Music.List1.ListCount - 1 To 0 Step -1
X1 = Music.List1.List(w1)
M1 = Music.List1.List(w1 - 1)
If UCase$(X1) = UCase$(M1) Then Music.List1.RemoveItem (w1)
Next w1

For w1 = Music.List3.ListCount To 0 Step -1
If Music.List3.List(w1) = "!!" Then Music.List3.RemoveItem (w1)
Next w1
'_____________________________________________________-----
'Ciscenje List 2, otklanjanje duplih, praznina,"navodnika
    For w1 = Music.List2.ListCount - 1 To 0 Step -1
    X1 = Music.List2.List(w1)
    NESTO (X1)
    If NS = " " Then Music.List2.RemoveItem w1
    If X1 = "" Then Music.List2.RemoveItem w1
    If X1 = "!!" Then Music.List2.RemoveItem w1
'-----
    X1 = Music.List2.List(w1)
    M1 = Music.List2.List(w1 - 1)
    If UCase$(X1) = UCase$(M1) Then Music.List2.RemoveItem (w1)
'-----
    Next w1
    
    For X1 = 0 To Music.List2.ListCount
    Music.List2.List(X1) = FiltArtist1(Music.List2.List(X1))
    Music.List2.List(X1) = FiltALB1(Music.List2.List(X1))
    If Mid(Music.List2.List(X1), 1, 1) = " " Then Music.List2.List(X1) = Mid(Music.List2.List(X1), 2, Len(Music.List2.List(X1)))
    M1 = Music.List2.List(X1)
    If M1 = "!!" Then Music.List2.RemoveItem (X1)
    If Trim(M1) = "" Then Music.List2.RemoveItem (X1)
    Next X1


'Izdvajanje album
'------------------- umetnut petlju ------------------------
    GLF.PBar.Visible = True
    GLF.PBar.Max = Fix(Music.List1.ListCount / 2)
    
For QN1 = 0 To Music.List1.ListCount - 1
    GLF.PBar.Value = QN1
TX2 = Music.List1.List(QN1)
Music.List3.Clear

For X1 = 0 To Music.List2.ListCount - 1
M1 = Music.List2.List(X1)
A1 = InStr(1, M1, "!!")
AA2 = Mid(M1, 1, A1 - 1)
If Trim(AA2) = Trim(TX2) Then Music.List3.AddItem Mid(M1, A1 + 2, Len(M1))    'Music.List3.AddItem Mid(M1, Len(TX2) + 3, Len(M1)) '- (Len(TX2) + 1))
Next X1
    
    'Filtriranje , preglednost
    For X1 = 0 To Music.List3.ListCount
    Music.List3.List(X1) = FiltArtist1(Music.List3.List(X1))
    If Mid(Music.List3.List(X1), 1, 1) = " " Then Music.List3.List(X1) = Mid(Music.List3.List(X1), 2, Len(Music.List3.List(X1)))
    Next X1

   'Filtriranje albuma, otklanjanje duplih, u list 3
    For W2 = Music.List3.ListCount - 1 To 0 Step -1
    X1 = Music.List3.List(W2)
    NESTO (X1)
    If NS = " " Then Music.List3.RemoveItem W2
    If X1 = "" Then Music.List3.RemoveItem W2
    If X1 = "!!" Then Music.List3.RemoveItem W2
    X1 = Music.List3.List(W2)
    M1 = Music.List3.List(W2 - 1)
    On Error Resume Next
    If UCase$(X1) = UCase$(M1) Then Music.List3.RemoveItem (W2)
    Next W2
    

    Set qNode1 = Music.Artist.Nodes.Add(, , , TX2): qNode1.Tag = qNode1.Text
        For WN = 0 To Music.List3.ListCount - 1
        ttx = Music.List3.List(WN)
        ttx = Replace(ttx, "!!", "", 1, Len(ttx), vbTextCompare)
        Set qNode2 = Music.Artist.Nodes.Add(qNode1.Index, tvwChild, , ttx): qNode2.Tag = qNode1.Tag
        Next WN
Next QN1

'Set qNode1 = Music.Artist.Nodes.Add(, , , "Unknown"): qNode1.Tag = qNode1.Text

Music.MousePointer = 0
GLF.PBar.Visible = False

End Function


Public Function FindMusic(path As String)
On Error Resume Next
Dim Ls As ListItem
GLF.PBar.Visible = True
GLF.MousePointer = 11
    
    GLF.Lnk.Recordset.Close
    
LoadTable (Song)

  

A1 = InStr(1, path, "\")
Select Case A1
Case 0
STR = Mid(path, 1, Len(path))
STR1 = ""
Case Else
STR = Mid(path, 1, A1 - 1)
STR1 = Mid(path, A1 + 1, Len(path))
End Select
Music.Song.ListItems.Clear
NESTO1 = STR1
If STR = "Unknown" Then GoTo 10
STR = "Artist='" & _
    STR & "'"
GLF.PBar.Max = Fix(GLF.Lnk.Recordset.RecordCount / 4) '<<<---
GLF.Lnk.Recordset.FindFirst STR
If GLF.Lnk.Recordset.NoMatch Then GoTo 20

   'If LCase(STR1) = LCase(GLF.cdb(5).Text) Then
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With
    'End If

a = GLF.Lnk.Recordset.RecordCount
For A2 = 0 To a
GLF.PBar.Value = Fix(GLF.Lnk.Recordset.AbsolutePosition / 4) '<<<----
GLF.Lnk.Recordset.FindNext STR
    'If LCase(STR1) = LCase(GLF.cdb(5).Text) Then
If GLF.Lnk.Recordset.NoMatch Then GoTo 20
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With
    
    'End If

GLF.PBar.Visible = False
GLF.MousePointer = 0

If Music.Toolbar2.Buttons(5).Value = tbrUnpressed Then
Dim NN1
For NN1 = Music.Song.ListItems.Count To 1 Step -1
If Not LCase(STR1) = LCase(Music.Song.ListItems(NN1).SubItems(2)) Then Music.Song.ListItems.Remove (NN1)
Next NN1
End If
Next A2

Exit Function
10:
On Error Resume Next
LoadTable (Song)
Dim NM
GLF.Lnk.Recordset.MoveFirst
a = Trim(GLF.cdb(4).Text)
If Mid(a, 1, 1) = "" Or a = "Unknown" Then
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With
End If

For NM = 1 To GLF.Lnk.Recordset.RecordCount
GLF.Lnk.Recordset.MoveNext
a = Trim(GLF.cdb(4).Text)
If Mid(a, 1, 1) = "" Or a = "Unknown" Then
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With
End If
Next NM
20:
GLF.PBar.Visible = False
GLF.MousePointer = 0
End Function

Public Function Remm()
On Error Resume Next
LoadTable (Song)
GLF.Lnk.Recordset.MoveFirst

For NM = Music.Song.ListItems.Count To 1 Step -1
If Music.Song.ListItems(NM).Selected = True Then
STRr = "Num='" & "a" & Music.Song.ListItems(NM).SubItems(13) & "'"
GLF.Lnk.Recordset.FindFirst STRr
GLF.Lnk.Recordset.Delete
Music.Song.ListItems.Remove (NM)
End If
Next NM

End Function




Public Function AppSongChange1(Path2 As String, Num1, Artist, Album, Year, Genre, Comment)
LoadTable (Song)
GLF.Lnk.Recordset.MoveFirst
STRr = "Num='" & "a" & Num1 & "'"

GLF.Lnk.Recordset.FindFirst STRr
'If GLF.cdb(0).Text = Num1 Then
If Music.Check1(0).Value = 1 Then GLF.cdb(4).Text = Artist
If Music.Check1(1).Value = 1 Then GLF.cdb(5).Text = Album
If Music.Check1(2).Value = 1 Then GLF.cdb(6).Text = Year
If Music.Check1(3).Value = 1 Then GLF.cdb(7).Text = Genre
If Music.Check1(4).Value = 1 Then GLF.cdb(11).Text = Comment
'End If
'If Not GLF.cdb(0).Text = Num1 Then
    On Error GoTo 10
    For a = 0 To GLF.Lnk.Recordset.RecordCount
    GLF.Lnk.Recordset.FindNext STRr
    If GLF.Lnk.Recordset.NoMatch Then GoTo 10
    If Music.Check1(0).Value = 1 Then GLF.cdb(4).Text = Artist
    If Music.Check1(1).Value = 1 Then GLF.cdb(5).Text = Album
    If Music.Check1(2).Value = 1 Then GLF.cdb(6).Text = Year
    If Music.Check1(3).Value = 1 Then GLF.cdb(7).Text = Genre
    If Music.Check1(4).Value = 1 Then GLF.cdb(11).Text = Comment
    Next a
'End If
Exit Function
10:

End Function

Sub InfoM()
Dim Dur ' As Double
Dim SZ
'Dur = 0
On Error GoTo 10
GLF.Lnk.Recordset.Close
LoadTable (Song)
GLF.PBar.Visible = True
GLF.MousePointer = 11
GLF.PBar.Max = Fix(GLF.Lnk.Recordset.RecordCount / 5)
GLF.Lnk.Recordset.MoveFirst
Dur = Dur + Val(GLF.cdb(8).Text)
SZ = SZ + Val(GLF.cdb(10).Text)
For NM = 1 To GLF.Lnk.Recordset.RecordCount
GLF.PBar.Value = Fix(NM / 5)
GLF.Lnk.Recordset.MoveNext
Dur = Dur + Val(GLF.cdb(8).Text)
SZ = SZ + Val(GLF.cdb(10).Text)
Next NM
SecToDate (Dur)
STR = "File(s) leght :" & a & vbCrLf & _
      "File(s) size :" & Format(SZ, "###,###,###,###,###") & " bytes" & vbCrLf & _
      "Song(s) in database :" & GLF.Lnk.Recordset.RecordCount & vbCrLf & _
      "Artist :" & Music.List1.ListCount & vbCrLf & _
      "Albums :" & Music.List2.ListCount
MsgBox STR, 64, "Music Info"

GLF.PBar.Visible = False
GLF.MousePointer = 0
Exit Sub
10:
GLF.PBar.Visible = False
GLF.MousePointer = 0
MsgBox "Database Empty", 64, "Error"
End Sub


Public Function SecToDate(SC As Double)
N = SC
d = Fix(N / 86400)

N = N - (d * 86400)
H = Fix(N / 3600) 'Sati

N = N - (H * 3600)
M = Fix(N / 60) 'Minute

s = N - (M * 60)

a = d & "\ " & H & ":" & M & ":" & s
SecToDate = a
End Function

Function LoadDriveLabel()
On Error Resume Next
Music.MousePointer = 11
GLF.PBar.Visible = True
Music.List4.Clear
Music.DrvLab.Nodes.Clear

LoadTable (Song)

GLF.Lnk.Recordset.MoveFirst
TX1 = GLF.cdb(3).Text
If Mid(TX1, 1, 1) = " " Then TX1 = Mid(TX1, 2, Len(TX1) - 1)
Music.List4.AddItem TX1
    GLF.PBar.Max = (GLF.Lnk.Recordset.RecordCount / 2)

For NM = 1 To GLF.Lnk.Recordset.RecordCount
GLF.Lnk.Recordset.MoveNext
TX1 = GLF.cdb(3).Text
If Mid(TX1, 1, 1) = " " Then TX1 = Mid(TX1, 2, Len(TX1) - 1)
Music.List4.AddItem TX1
    GLF.PBar.Value = Fix((NM / 2) - 1)
Next NM


'Clear Duplicate Artist from List1
    For w1 = Music.List4.ListCount - 1 To 0 Step -1
    X1 = Music.List4.List(w1)
    NESTO (X1)
    If NS = " " Then Music.List4.RemoveItem w1
    If X1 = "" Then Music.List4.RemoveItem w1
    X1 = Music.List4.List(w1)
    M1 = Music.List4.List(w1 - 1)
    If UCase$(X1) = UCase$(M1) Then Music.List4.RemoveItem (w1)
    Next w1


GLF.PBar.Max = Fix(Music.List4.ListCount / 2)
For w1 = 0 To Music.List4.ListCount - 1
GLF.PBar.Value = Fix(w1 / 2)
Set qNode1 = Music.DrvLab.Nodes.Add(, , , Music.List4.List(w1)): qNode1.Tag = qNode1.Text
Next w1

Music.MousePointer = 0
GLF.PBar.Visible = False
End Function




Public Function FindDriveLab(path As String)
Dim Ls As ListItem
GLF.PBar.Visible = True
GLF.MousePointer = 11

LoadTable (Song)
STR = path
Music.Song.ListItems.Clear
STR = "CD='" & _
    STR & "'"
GLF.PBar.Max = Fix(GLF.Lnk.Recordset.RecordCount / 4) '<<<---
GLF.Lnk.Recordset.FindFirst STR
If GLF.Lnk.Recordset.NoMatch Then GoTo 10

Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With

a = GLF.Lnk.Recordset.RecordCount
For A2 = 0 To a
GLF.PBar.Value = Fix(GLF.Lnk.Recordset.AbsolutePosition / 4) '<<<----
GLF.Lnk.Recordset.FindNext STR

If GLF.Lnk.Recordset.NoMatch Then GoTo 10
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With

GLF.PBar.Visible = False
GLF.MousePointer = 0
Next A2

Exit Function
10:
GLF.PBar.Visible = False
GLF.MousePointer = 0
End Function


Function LoadYear()
On Error Resume Next
Music.MousePointer = 11
GLF.PBar.Visible = True
Music.List4.Clear
Music.Yearr.Nodes.Clear

LoadTable (Song)

GLF.Lnk.Recordset.MoveFirst
TX1 = GLF.cdb(6).Text
If Mid(TX1, 1, 1) = " " Then TX1 = Mid(TX1, 2, Len(TX1) - 1)
Music.List5.AddItem TX1
    GLF.PBar.Max = (GLF.Lnk.Recordset.RecordCount / 2)

For NM = 1 To GLF.Lnk.Recordset.RecordCount
GLF.Lnk.Recordset.MoveNext
TX1 = GLF.cdb(6).Text
If Mid(TX1, 1, 1) = " " Then TX1 = Mid(TX1, 2, Len(TX1) - 1)
Music.List5.AddItem TX1
    GLF.PBar.Value = Fix((NM / 2) - 1)
Next NM


'Clear Duplicate Artist from List1
    For w1 = Music.List5.ListCount - 1 To 0 Step -1
    X1 = Music.List5.List(w1)
    NESTO (X1)
    If NS = " " Then Music.List5.RemoveItem w1
    If X1 = "" Then Music.List5.RemoveItem w1
    X1 = Music.List5.List(w1)
    M1 = Music.List5.List(w1 - 1)
    If UCase$(X1) = UCase$(M1) Then Music.List5.RemoveItem (w1)
    Next w1


GLF.PBar.Max = Fix(Music.List5.ListCount / 2)
For w1 = 0 To Music.List5.ListCount - 1
GLF.PBar.Value = Fix(w1 / 2)
Set qNode1 = Music.Yearr.Nodes.Add(, , , Music.List5.List(w1)): qNode1.Tag = qNode1.Text
Next w1

Music.MousePointer = 0
GLF.PBar.Visible = False
End Function


Public Function FindYear(path As String)
Dim Ls As ListItem
GLF.PBar.Visible = True
GLF.MousePointer = 11

LoadTable (Song)
STR = path
Music.Song.ListItems.Clear
STR = "Year='" & _
    STR & "'"
GLF.PBar.Max = Fix(GLF.Lnk.Recordset.RecordCount / 4) '<<<---
GLF.Lnk.Recordset.FindFirst STR
If GLF.Lnk.Recordset.NoMatch Then GoTo 10

Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With

a = GLF.Lnk.Recordset.RecordCount
For A2 = 0 To a
GLF.PBar.Value = Fix(GLF.Lnk.Recordset.AbsolutePosition / 4) '<<<----
GLF.Lnk.Recordset.FindNext STR

If GLF.Lnk.Recordset.NoMatch Then GoTo 10
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With

GLF.PBar.Visible = False
GLF.MousePointer = 0
Next A2

Exit Function
10:
GLF.PBar.Visible = False
GLF.MousePointer = 0
End Function


Function LoadGenre()
On Error Resume Next
Music.MousePointer = 11
GLF.PBar.Visible = True
Music.List4.Clear
Music.Genree.Nodes.Clear

LoadTable (Song)

GLF.Lnk.Recordset.MoveFirst
TX1 = GLF.cdb(7).Text
If Mid(TX1, 1, 1) = " " Then TX1 = Mid(TX1, 2, Len(TX1) - 1)
Music.List6.AddItem TX1
    GLF.PBar.Max = (GLF.Lnk.Recordset.RecordCount / 2)

For NM = 1 To GLF.Lnk.Recordset.RecordCount
GLF.Lnk.Recordset.MoveNext
TX1 = GLF.cdb(7).Text
If Mid(TX1, 1, 1) = " " Then TX1 = Mid(TX1, 2, Len(TX1) - 1)
Music.List6.AddItem TX1
    GLF.PBar.Value = Fix((NM / 2) - 1)
Next NM


'Clear Duplicate Artist from List1
    For w1 = Music.List6.ListCount - 1 To 0 Step -1
    X1 = Music.List6.List(w1)
    NESTO (X1)
    If NS = " " Then Music.List6.RemoveItem w1
    If X1 = "" Then Music.List6.RemoveItem w1
    X1 = Music.List6.List(w1)
    M1 = Music.List6.List(w1 - 1)
    If UCase$(X1) = UCase$(M1) Then Music.List6.RemoveItem (w1)
    Next w1


GLF.PBar.Max = Fix(Music.List6.ListCount / 2)
For w1 = 0 To Music.List6.ListCount - 1
GLF.PBar.Value = Fix(w1 / 2)
Set qNode1 = Music.Genree.Nodes.Add(, , , Music.List6.List(w1)): qNode1.Tag = qNode1.Text
Next w1

Music.MousePointer = 0
GLF.PBar.Visible = False
End Function



Public Function FindGenre(path As String)
Dim Ls As ListItem
GLF.PBar.Visible = True
GLF.MousePointer = 11

LoadTable (Song)
STR = path
Music.Song.ListItems.Clear
STR = "Genre='" & _
    STR & "'"
GLF.PBar.Max = Fix(GLF.Lnk.Recordset.RecordCount / 4) '<<<---
GLF.Lnk.Recordset.FindFirst STR
If GLF.Lnk.Recordset.NoMatch Then GoTo 10

Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With

a = GLF.Lnk.Recordset.RecordCount
For A2 = 0 To a
GLF.PBar.Value = Fix(GLF.Lnk.Recordset.AbsolutePosition / 4) '<<<----
GLF.Lnk.Recordset.FindNext STR

If GLF.Lnk.Recordset.NoMatch Then GoTo 10
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With

GLF.PBar.Visible = False
GLF.MousePointer = 0
Next A2

Exit Function
10:
GLF.PBar.Visible = False
GLF.MousePointer = 0
End Function

Function MusicMove(path As String)
On Error Resume Next
A1 = InStr(1, path, "\")
Select Case A1
Case 0
STR = Mid(path, 1, Len(path))
STR1 = ""
Case Else
STR = Mid(path, 1, A1 - 1)
STR1 = Mid(path, A1 + 1, Len(path))
End Select

LoadTable (Song)
For N = 0 To Music.Song.ListItems.Count
If Music.Song.ListItems(N).Selected = True Then
Music.Song.ListItems(N).SubItems(1) = STR
Music.Song.ListItems(N).SubItems(2) = STR1

    GLF.Lnk.Recordset.MoveFirst
STR2 = "Num='" & "a" & Music.Song.ListItems(N).SubItems(13) & "'"
'GLF.Lnk.Recordset.FindNext STR2
GLF.Lnk.Recordset.FindFirst STR2
If GLF.Lnk.Recordset.NoMatch = True Then GoTo 10
    GLF.cdb(4).Text = STR
    GLF.cdb(5).Text = STR1
End If
Next N
Exit Function
10:
End Function


Function YearMove(path As String)
On Error Resume Next
STR = path

LoadTable (Song)
For N = 0 To Music.Song.ListItems.Count
If Music.Song.ListItems(N).Selected = True Then
Music.Song.ListItems(N).SubItems(3) = STR

    GLF.Lnk.Recordset.MoveFirst

STR2 = "Num='" & "a" & Music.Song.ListItems(N).SubItems(13) & "'"
'GLF.Lnk.Recordset.FindNext STR2
GLF.Lnk.Recordset.FindFirst STR2
If GLF.Lnk.Recordset.NoMatch = True Then GoTo 10
    GLF.cdb(6).Text = STR
End If
Next N
Exit Function
10:
End Function


Function GenreMove(path As String)
On Error Resume Next
STR = path

LoadTable (Song)
For N = 0 To Music.Song.ListItems.Count
If Music.Song.ListItems(N).Selected = True Then
Music.Song.ListItems(N).SubItems(4) = STR

    GLF.Lnk.Recordset.MoveFirst
STR2 = "Num='" & "a" & Music.Song.ListItems(N).SubItems(13) & "'"
'GLF.Lnk.Recordset.FindNext STR2
GLF.Lnk.Recordset.FindFirst STR2
If GLF.Lnk.Recordset.NoMatch = True Then GoTo 10
    GLF.cdb(7).Text = STR
End If
Next N
Exit Function
10:
End Function

Function ToFindLS()
On Error Resume Next
GLF.PBar.Visible = True
GLF.MousePointer = 11
Music.ListF.ListItems.Clear
LoadTable (Song)
GLF.PBar.Max = Fix(GLF.Lnk.Recordset.RecordCount / 4)
GLF.Lnk.Recordset.MoveFirst
Set Ls = Music.ListF.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With

For N = 1 To GLF.Lnk.Recordset.RecordCount
GLF.PBar.Value = Fix(N / 4)
GLF.Lnk.Recordset.MoveNext
Set Ls = Music.ListF.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With
Next N
GLF.PBar.Visible = False
GLF.MousePointer = 0
End Function

Function AppSongChange(NName, Num)
On Error Resume Next
LoadTable (Song)

    GLF.Lnk.Recordset.MoveFirst
STR2 = "Num='" & "a" & Num & "'"
'GLF.Lnk.Recordset.FindNext STR2
GLF.Lnk.Recordset.FindFirst STR2
If GLF.Lnk.Recordset.NoMatch = True Then GoTo 10
    GLF.cdb(2).Text = NName
Exit Function
10:
End Function

Function NewArtistN()
LoadTable (Artist)
End Function

Function ApplyNewArtist()
STR = "a" & (GLF.Lnk.Recordset.RecordCount + 1)
With ArtistFrm
GLF.cdb(0).Text = .Text1.Text  'Artist Name
GLF.cdb(1).Text = .Text2.Text  'Formated
GLF.cdb(2).Text = .Text3.Text  'Years
GLF.cdb(3).Text = .Text4.Text  'Genre
GLF.cdb(4).Text = .Text5.Text  'Styles
GLF.cdb(5).Text = .Text6.Text  'Tones
GLF.cdb(6).Text = .Text10.Text 'Related Artist
GLF.cdb(7).Text = .Text8.Text  'Url
GLF.cdb(8).Text = .Text7.Text  'Albums
'GLF.cdb(9).Text = .Label11.Caption 'nema slike
GLF.cdb(10).Text = .Text9.Text  'Description
GLF.cdb(11).Text = STR
End With
Call NewArtistN
End Function

Function ListArtistFrm()
On Error Resume Next
ArtistFrm.Artist.ListItems.Clear
GLF.PBar.Visible = True
GLF.MousePointer = 11
LoadTable (Artist)

GLF.PBar.Max = Fix(GLF.Lnk.Recordset.RecordCount / 2) + 1
GLF.Lnk.Recordset.MoveFirst
Set Ls = ArtistFrm.Artist.ListItems.Add(, , GLF.cdb(0).Text)
With GLF
Ls.SubItems(1) = .cdb(2).Text
Ls.SubItems(2) = .cdb(1).Text
Ls.SubItems(3) = .cdb(4).Text
Ls.SubItems(4) = .cdb(5).Text
Ls.SubItems(5) = .cdb(7).Text
Ls.SubItems(6) = .cdb(9).Text
Ls.SubItems(7) = Mid(.cdb(11).Text, 2, Len(.cdb(11).Text))
End With

For N = 1 To GLF.Lnk.Recordset.RecordCount
GLF.PBar.Value = Fix(N / 2)
GLF.Lnk.Recordset.MoveNext
Set Ls = ArtistFrm.Artist.ListItems.Add(, , GLF.cdb(0).Text)
With GLF
Ls.SubItems(1) = .cdb(2).Text
Ls.SubItems(2) = .cdb(1).Text
Ls.SubItems(3) = .cdb(4).Text
Ls.SubItems(4) = .cdb(5).Text
Ls.SubItems(5) = .cdb(7).Text
Ls.SubItems(6) = .cdb(9).Text
Ls.SubItems(7) = Mid(.cdb(11).Text, 2, Len(.cdb(11).Text))
End With
Next N
GLF.PBar.Visible = False
GLF.MousePointer = 0
End Function

Function ArtistFrmFind(Num)
On Error Resume Next
LoadTable (Artist)

    GLF.Lnk.Recordset.MoveFirst
STR2 = "Num='" & "a" & Num & "'"
GLF.Lnk.Recordset.FindFirst STR2
If GLF.Lnk.Recordset.NoMatch = True Then GoTo 10
    With ArtistFrm
    .Text1.Text = GLF.cdb(0).Text
    .Text2.Text = GLF.cdb(1).Text
    .Text3.Text = GLF.cdb(2).Text
    .Text4.Text = GLF.cdb(3).Text
    .Text5.Text = GLF.cdb(4).Text
    .Text6.Text = GLF.cdb(5).Text
    .Text7.Text = GLF.cdb(8).Text
    .Text8.Text = GLF.cdb(7).Text
    .Text9.Text = GLF.cdb(10).Text
    .Text10.Text = GLF.cdb(6).Text
    '.Label11.Caption = GLF.cdb(9).Text 'nema slike
    'LoadPic (.Label11.Caption) 'pa nema slike
    End With
Exit Function
10:

End Function


Function LoadPicName(path As String)
STR = ""
For N = Len(path) To 1 Step -1
If Mid(path, N, 1) = "\" Then GoTo 10
STR = Mid(path, N, 1) & STR
Next N
Exit Function
10:
LoadPicName = STR
End Function


Public Function FindMusic1(path As String)
'On Error Resume Next
Dim Ls As ListItem
GLF.PBar.Visible = True
GLF.MousePointer = 11
    
A1 = InStr(1, path, "\")
Select Case A1
Case 0
STR = Mid(path, 1, Len(path))
STR1 = ""
Case Else
STR = Mid(path, 1, A1 - 1)
STR1 = Mid(path, A1 + 1, Len(path))
End Select
Music.Song.ListItems.Clear
NESTO1 = STR1
If STR = "Unknown" Then GoTo 10
STR = "Artist='" & _
    STR & "'"
GLF.PBar.Max = Fix(GLF.Lnk.Recordset.RecordCount / 4) '<<<---
GLF.Lnk.Recordset.FindFirst STR
If GLF.Lnk.Recordset.NoMatch Then GoTo 20

   'If LCase(STR1) = LCase(GLF.cdb(5).Text) Then
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With
    'End If

a = GLF.Lnk.Recordset.RecordCount
For A2 = 0 To a
GLF.PBar.Value = Fix(GLF.Lnk.Recordset.AbsolutePosition / 4) '<<<----
GLF.Lnk.Recordset.FindNext STR
    'If LCase(STR1) = LCase(GLF.cdb(5).Text) Then
If GLF.Lnk.Recordset.NoMatch Then GoTo 20
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With
    
    'End If

GLF.PBar.Visible = False
GLF.MousePointer = 0

If Music.Toolbar2.Buttons(5).Value = tbrUnpressed Then
For NN = Music.Song.ListItems.Count To 1 Step -1
If Not LCase(STR1) = LCase(Music.Song.ListItems(NN).SubItems(2)) Then Music.Song.ListItems.Remove (NN)
Next NN
End If
Next A2

Exit Function
10:
On Error Resume Next
LoadTable (Song)
Dim NM
GLF.Lnk.Recordset.MoveFirst
a = Trim(GLF.cdb(4).Text)
If Mid(a, 1, 1) = "" Or a = "Unknown" Then
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With
End If

For NM = 1 To GLF.Lnk.Recordset.RecordCount
GLF.Lnk.Recordset.MoveNext
a = Trim(GLF.cdb(4).Text)
If Mid(a, 1, 1) = "" Or a = "Unknown" Then
Set Ls = Music.Song.ListItems.Add(, , GLF.cdb(2).Text)
With GLF
Ls.SubItems(1) = .cdb(4).Text
Ls.SubItems(2) = .cdb(5).Text
Ls.SubItems(3) = .cdb(6).Text
Ls.SubItems(4) = .cdb(7).Text
Ls.SubItems(5) = .cdb(1).Text
Ls.SubItems(6) = .cdb(3).Text
Ls.SubItems(7) = .cdb(8).Text
Ls.SubItems(8) = .cdb(9).Text
Ls.SubItems(9) = .cdb(10).Text
Ls.SubItems(10) = .cdb(13).Text
Ls.SubItems(11) = .cdb(14).Text
Ls.SubItems(12) = .cdb(11).Text
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With
End If
Next NM
20:
GLF.PBar.Visible = False
GLF.MousePointer = 0
End Function


Public Function SMovieToDb()
On Error Resume Next
GLF.Lnk.Recordset.Close
LoadTable (Movi)
GLF.Lnk.Recordset.MoveLast
s = Mid(GLF.cdb(0).Text, 2, Len(GLF.cdb(0)))
If s = "" Then s = 0

GLF.Lnk.Recordset.Close
LoadTable (Movi)

s = s + 1


GLF.cdb(0).Text = "a" & s
GLF.cdb(1).Text = Trim(Movie.Text4.Text) 'Name
GLF.cdb(2).Text = Trim(Movie.Text3.Text) 'Genre
GLF.cdb(3).Text = Trim(Movie.Text6.Text) 'Tagline
GLF.cdb(4).Text = Trim(Movie.Text9.Text) 'Description
GLF.cdb(5).Text = Trim(Movie.Text11.Text) 'Comment
GLF.cdb(6).Text = Trim(Movie.Text8.Text) 'Directed
GLF.cdb(7).Text = Trim(Movie.Text5.Text) 'Year
GLF.cdb(8).Text = Trim(Movie.Label4.Caption) 'Format
GLF.cdb(9).Text = Trim(Movie.Text10.Text) 'Actor
GLF.cdb(10).Text = Trim(Movie.Label6.Caption) 'Leght
GLF.cdb(11).Text = Trim(Movie.VScroll1.Value) 'Grade
GLF.cdb(12).Text = Trim("") 'Picture
GLF.cdb(13).Text = Trim(Movie.Label10.Caption)   'Cd ID
GLF.cdb(14).Text = Trim(Movie.Text7.Text) 'URL
GLF.cdb(15).Text = Trim(Movie.Label11.Caption)   'Path
GLF.cdb(16).Text = Trim(Movie.Text1.Text) 'CD Label
GLF.cdb(17).Text = Trim(Movie.Text2.Text) 'Subtitle

LoadTable (Movi)

End Function


Function swp(tekst As String) As String
tekst = Replace(tekst, "&", "AND", 1, Len(tekst), vbTextCompare)
tekst = Replace(tekst, "'", "`", 1, Len(tekst), vbTextCompare)
tekst = Replace(tekst, "  ", " ", 1, Len(tekst), vbTextCompare)
swp = tekst
End Function

Function RefreshMovie()
On Error Resume Next
With Movie
.LV.ListItems.Clear
.Text1.Text = ""
.Text2.Text = ""
.Text3.Text = ""
.Text4.Text = ""
.Text5.Text = ""
.Text6.Text = ""
.Text7.Text = ""
.Text8.Text = ""
.Text9.Text = ""
.Text10.Text = ""
.Text11.Text = ""
.Label4.Caption = ""
.Label6.Caption = ""
.Label10.Caption = ""
End With
GLF.Lnk.Recordset.Close
LoadTable (Movi)
GLF.PBar.Max = GLF.Lnk.Recordset.RecordCount
GLF.Lnk.Recordset.MoveFirst
GLF.PBar.Visible = True
Set Ls = Movie.LV.ListItems.Add(, , GLF.cdb(1).Text)
With GLF
Ls.SubItems(1) = .cdb(8).Text
Ls.SubItems(2) = .cdb(7).Text
Ls.SubItems(3) = .cdb(11).Text
Ls.SubItems(4) = .cdb(17).Text
Ls.SubItems(5) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With

For N = 1 To GLF.Lnk.Recordset.RecordCount
GLF.PBar.Value = N
GLF.Lnk.Recordset.MoveNext
Set Ls = Movie.LV.ListItems.Add(, , GLF.cdb(1).Text)
With GLF
Ls.SubItems(1) = .cdb(8).Text
Ls.SubItems(2) = .cdb(7).Text
Ls.SubItems(3) = .cdb(11).Text
Ls.SubItems(4) = .cdb(17).Text
Ls.SubItems(5) = .cdb(0).Text
Ls.SubItems(5) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With
Next N
GLF.PBar.Visible = False
End Function



Function FindMovi(Numb As String)
On Error Resume Next
LoadTable (Movi)
Numb = "a" & Numb
STR = "Num='" & _
    Numb & "'"
GLF.Lnk.Recordset.FindFirst STR
If GLF.Lnk.Recordset.NoMatch Then GoTo 20
With Movie
.Text1.Text = GLF.cdb(16).Text
.Label4.Caption = GLF.cdb(8).Text
.Label6.Caption = GLF.cdb(10).Text
.Text2.Text = GLF.cdb(17).Text
.FiltpathTxt (GLF.cdb(13).Text)
.Label11.Caption = GLF.cdb(15).Text
.Text4.Text = GLF.cdb(1).Text
.VScroll1.Value = GLF.cdb(11).Text
.Text3.Text = GLF.cdb(2).Text
.Text6.Text = GLF.cdb(3).Text
.Text5.Text = GLF.cdb(7).Text
.Text8.Text = GLF.cdb(6).Text
.Text7.Text = GLF.cdb(14).Text
.Text10.Text = GLF.cdb(9).Text
.Text9.Text = GLF.cdb(4).Text
.Text11.Text = GLF.cdb(5).Text
End With

Exit Function
20:
End Function


Function RemMovie(Numb As String)
On Error Resume Next
LoadTable (Movi)
Numb = "a" & Numb
STR = "Num='" & _
    Numb & "'"
GLF.Lnk.Recordset.FindFirst STR
a = "Are you sure want to erase the movie ''" & GLF.cdb(1).Text & "'' from database ?"
a = MsgBox(a, 36, "Remove Movie")
    Select Case a
    Case 6 'Yes
    GLF.Lnk.Recordset.Delete
    Movie.LV.ListItems.Remove (Movie.LV.SelectedItem.Index)
    Case 7 'No
    Exit Function
    End Select
End Function

Public Function SGameToMDB(NW As Integer)  'Apply changes  NW = 0
On Error Resume Next            'dodavanje igre NW = 1
Select Case NW
Case 1
GLF.Lnk.Recordset.Close
LoadTable (Games)
GLF.Lnk.Recordset.MoveLast
s = Mid(GLF.cdb(0).Text, 2, Len(GLF.cdb(0)))
If s = "" Then s = 0
GLF.Lnk.Recordset.Close
LoadTable (Games)
s = s + 1
With GLF
.cdb(0).Text = "a" & s
.cdb(1).Text = Game.Text4.Text
.cdb(2).Text = Game.Label3.Caption
.cdb(3).Text = Game.Text1.Text
.cdb(4).Text = Game.Text3.Text
.cdb(5).Text = Game.Text2.Text
.cdb(6).Text = Game.Text9.Text
.cdb(7).Text = Game.Text6.Text
.cdb(8).Text = Game.Label9.Caption
.cdb(9).Text = Game.Text5.Text
.cdb(10).Text = Game.Label4.Caption
.cdb(11).Text = ""
.cdb(12).Text = Game.Text7.Text
.cdb(13).Text = Game.Text10.Text
.cdb(14).Text = Game.Text8.Text
End With
LoadTable (Games)

Case 0
With GLF
'.cdb(0).Text = "a" & s
.cdb(1).Text = Game.Text4.Text
.cdb(2).Text = Game.Label3.Caption
.cdb(3).Text = Game.Text1.Text
.cdb(4).Text = Game.Text3.Text
.cdb(5).Text = Game.Text2.Text
.cdb(6).Text = Game.Text9.Text
.cdb(7).Text = Game.Text6.Text
.cdb(8).Text = Game.Label9.Caption
.cdb(9).Text = Game.Text5.Text
.cdb(10).Text = Game.Label4.Caption
.cdb(11).Text = ""
.cdb(12).Text = Game.Text7.Text
.cdb(13).Text = Game.Text10.Text
.cdb(14).Text = Game.Text8.Text
LoadTable (Games)
GLF.Lnk.Recordset.Close
End With
End Select
Call RefreshGame
End Function

Public Function RefreshGame()
On Error Resume Next
GLF.Lnk.Recordset.Close
Game.LV.ListItems.Clear
LoadTable (Games)

With Game
.Text1.Text = ""
.Text10.Text = ""
.Text2.Text = ""
.Text3.Text = ""
.Text4.Text = ""
.Text5.Text = ""
.Text6.Text = ""
.Text7.Text = ""
.Text8.Text = ""
.Text9.Text = ""
.Label9.Caption = "10"
.VScroll1.Value = 0
.Label3.Caption = ""
.Label4.Caption = ""
End With

GLF.Lnk.Recordset.MoveFirst
GLF.PBar.Visible = True
GLF.PBar.Max = GLF.Lnk.Recordset.RecordCount + 1
Set Ls = Game.LV.ListItems.Add(, , GLF.cdb(1).Text) 'name
With GLF
Ls.SubItems(1) = .cdb(8).Text 'Grade
Ls.SubItems(2) = .cdb(3).Text  'Type
Ls.SubItems(3) = .cdb(5).Text 'OS
Ls.SubItems(4) = .cdb(9).Text 'Year
Ls.SubItems(5) = .cdb(4).Text 'Publisher
Ls.SubItems(6) = .cdb(13).Text 'Cd Label
Ls.SubItems(7) = .cdb(7).Text 'URL
Ls.SubItems(8) = .cdb(2).Text 'Size
Ls.SubItems(9) = .cdb(10).Text 'ID
Ls.SubItems(10) = .cdb(12).Text 'Path
Ls.SubItems(11) = .cdb(14).Text 'description
Ls.SubItems(12) = .cdb(6).Text 'Commnet
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text)) 'No
End With

For N = 1 To GLF.Lnk.Recordset.RecordCount
GLF.PBar.Value = N
GLF.Lnk.Recordset.MoveNext
Set Ls = Game.LV.ListItems.Add(, , GLF.cdb(1).Text) 'name
With GLF
Ls.SubItems(1) = .cdb(8).Text 'Grade
Ls.SubItems(2) = .cdb(3).Text 'Type
Ls.SubItems(3) = .cdb(5).Text 'OS
Ls.SubItems(4) = .cdb(9).Text 'Year
Ls.SubItems(5) = .cdb(4).Text 'Publisher
Ls.SubItems(6) = .cdb(13).Text 'Cd Label
Ls.SubItems(7) = .cdb(7).Text 'URL
Ls.SubItems(8) = .cdb(2).Text 'Size
Ls.SubItems(9) = .cdb(10).Text 'ID
Ls.SubItems(10) = .cdb(12).Text 'Path
Ls.SubItems(11) = .cdb(14).Text 'description
Ls.SubItems(12) = .cdb(6).Text 'Commnet
Ls.SubItems(13) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text)) 'No
End With

Next N
GLF.PBar.Visible = False
End Function

Public Function FindGame(Numb As String)
On Error Resume Next
LoadTable (Games)
STR = "Num='a" & _
    Numb & "'"
GLF.Lnk.Recordset.FindFirst STR
With Game
.Text4.Text = GLF.cdb(1).Text
.Text1.Text = GLF.cdb(3).Text
.Label3.Caption = GLF.cdb(2).Text
.Text2.Text = GLF.cdb(5).Text
.Label4.Caption = GLF.cdb(10).Text
.Text3.Text = GLF.cdb(4).Text
.Text10.Text = GLF.cdb(13).Text
.Text5.Text = GLF.cdb(9).Text
.Text6.Text = GLF.cdb(7).Text
.Text7.Text = GLF.cdb(12).Text
.VScroll1.Value = Abs(GLF.cdb(8) - 100)
.Text8.Text = GLF.cdb(14).Text
.Text9.Text = GLF.cdb(6).Text
End With
End Function

Function RemGame(Numb As Integer)
GLF.Lnk.Recordset.Close
LoadTable (Games)
STR = "Num='a" & _
    Numb & "'"
GLF.Lnk.Recordset.FindFirst STR
a = "Are you sure want to erase the game ''" & GLF.cdb(1).Text & "'' from database ?"
a = MsgBox(a, 36, "Remove Game")
    Select Case a
    Case 6 'Yes
    GLF.Lnk.Recordset.Delete
    Game.LV.ListItems.Remove (Game.LV.SelectedItem.Index)
    Case 7 'No
    Exit Function
    End Select
End Function



Public Function SProgToMDB(NW As Integer)
On Error Resume Next
Select Case NW
Case 1
GLF.Lnk.Recordset.Close
LoadTable (Progs)
GLF.Lnk.Recordset.MoveLast
s = Mid(GLF.cdb(0).Text, 2, Len(GLF.cdb(0)))
If s = "" Then s = 0
GLF.Lnk.Recordset.Close
LoadTable (Progs)
s = s + 1
With GLF
.cdb(0).Text = "a" & s 'Number
.cdb(1).Text = Programs.Text1.Text ' name
.cdb(2).Text = Programs.Text2.Text 'Type
.cdb(3).Text = Programs.Text11.Text 'Size
.cdb(4).Text = Programs.Text3.Text 'OS
.cdb(5).Text = Programs.Text8.Text 'Description
.cdb(6).Text = Programs.Text9.Text 'Commnet
.cdb(7).Text = Programs.Text12.Text 'URL
.cdb(8).Text = Programs.Text4.Text 'Drive Label
.cdb(9).Text = Programs.Text5.Text 'Publisher
.cdb(10).Text = Programs.Text6.Text 'Year
.cdb(11).Text = Programs.Text7.Text 'Licenc
.cdb(12).Text = Programs.Text10.Text 'Purpose
LoadTable (Progs)
End With
Case 0
With GLF
'.cdb(0).Text = "a" & s 'Number
.cdb(1).Text = Programs.Text1.Text ' name
.cdb(2).Text = Programs.Text2.Text 'Type
.cdb(3).Text = Programs.Text11.Text 'Size
.cdb(4).Text = Programs.Text3.Text 'OS
.cdb(5).Text = Programs.Text8.Text 'Description
.cdb(6).Text = Programs.Text9.Text 'Commnet
.cdb(7).Text = Programs.Text12.Text 'URL
.cdb(8).Text = Programs.Text4.Text 'Drive Label
.cdb(9).Text = Programs.Text5.Text 'Publisher
.cdb(10).Text = Programs.Text6.Text 'Year
.cdb(11).Text = Programs.Text7.Text 'Licenc
.cdb(12).Text = Programs.Text10.Text 'Purpose
LoadTable (Progs)
GLF.Lnk.Recordset.Close
End With
End Select
RefreshProg
End Function


Public Function FindProg(Numb As Integer)
On Error GoTo 10
GLF.Lnk.Recordset.Close
LoadTable (Progs)
STR = "Num='a" & _
    Numb & "'"
GLF.Lnk.Recordset.FindFirst STR
With Programs
.Text1.Text = GLF.cdb(1).Text
.Text2.Text = GLF.cdb(2).Text
.Text3.Text = GLF.cdb(4).Text
.Text4.Text = GLF.cdb(8).Text
.Text5.Text = GLF.cdb(9).Text
.Text6.Text = GLF.cdb(10).Text
.Text7.Text = GLF.cdb(11).Text
.Text8.Text = GLF.cdb(5).Text
.Text9.Text = GLF.cdb(6).Text
.Text10.Text = GLF.cdb(12).Text
.Text11.Text = GLF.cdb(3).Text
.Text12.Text = GLF.cdb(7).Text
End With
Exit Function
10:
Exit Function
End Function



Public Function RefreshProg()
On Error Resume Next
GLF.Lnk.Recordset.Close
With Programs
.Text1.Text = ""
.Text2.Text = ""
.Text3.Text = ""
.Text4.Text = ""
.Text5.Text = ""
.Text6.Text = ""
.Text7.Text = ""
.Text8.Text = ""
.Text9.Text = ""
.Text10.Text = ""
.Text11.Text = ""
.Text12.Text = ""
.LV.ListItems.Clear
End With
LoadTable (Progs)
GLF.PBar.Visible = True
GLF.PBar.Max = GLF.Lnk.Recordset.RecordCount + 1

GLF.Lnk.Recordset.MoveFirst
Set Ls = Programs.LV.ListItems.Add(, , GLF.cdb(1).Text) 'name
With GLF
Ls.SubItems(1) = .cdb(11).Text
Ls.SubItems(2) = .cdb(4).Text
Ls.SubItems(3) = .cdb(9).Text
Ls.SubItems(4) = .cdb(10).Text
Ls.SubItems(5) = .cdb(2).Text
Ls.SubItems(6) = .cdb(8).Text
Ls.SubItems(7) = .cdb(12).Text
Ls.SubItems(8) = .cdb(7).Text
Ls.SubItems(9) = .cdb(3).Text
Ls.SubItems(10) = .cdb(5).Text
Ls.SubItems(11) = .cdb(6).Text
Ls.SubItems(12) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With

For N = 1 To GLF.Lnk.Recordset.RecordCount
GLF.PBar.Value = N
GLF.Lnk.Recordset.MoveNext
Set Ls = Programs.LV.ListItems.Add(, , GLF.cdb(1).Text) 'name
With GLF
Ls.SubItems(1) = .cdb(11).Text
Ls.SubItems(2) = .cdb(4).Text
Ls.SubItems(3) = .cdb(9).Text
Ls.SubItems(4) = .cdb(10).Text
Ls.SubItems(5) = .cdb(2).Text
Ls.SubItems(6) = .cdb(8).Text
Ls.SubItems(7) = .cdb(12).Text
Ls.SubItems(8) = .cdb(7).Text
Ls.SubItems(9) = .cdb(3).Text
Ls.SubItems(10) = .cdb(5).Text
Ls.SubItems(11) = .cdb(6).Text
Ls.SubItems(12) = Mid(.cdb(0).Text, 2, Len(.cdb(0).Text))
End With

Next N
GLF.PBar.Visible = False
End Function


Public Function RemProg(Numb As Integer)
On Error Resume Next
GLF.Lnk.Recordset.Close
LoadTable (Progs)
STR = "Num='a" & _
    Numb & "'"
GLF.Lnk.Recordset.FindFirst STR
a = "Are you sure want to erase the program ''" & GLF.cdb(1).Text & "'' from database ?"
a = MsgBox(a, 36, "Remove Program")
    Select Case a
    Case 6 'Yes
    GLF.Lnk.Recordset.Delete
    Programs.LV.ListItems.Remove (Programs.LV.SelectedItem.Index)
    RefreshProg
    Case 7 'No
    Exit Function
    End Select
End Function

Public Function CleanMDB(MDB As baza)
GLF.Lnk.Recordset.Close
LoadTable MDB
GLF.PBar.Visible = True
GLF.PBar.Max = GLF.Lnk.Recordset.RecordCount + 1

GLF.Lnk.Recordset.MoveFirst
GLF.cdb(0).Text = "a0"
LoadTable MDB

For N = 1 To GLF.Lnk.Recordset.RecordCount
GLF.PBar.Value = N ': GLF.Caption = N
GLF.Lnk.Recordset.Move N
GLF.cdb(0) = "a" & N
LoadTable MDB
Next N

GLF.PBar.Visible = False
End Function

Public Function CleanScan()
On Error Resume Next
For N = 0 To scanf.MusicSc.ListItems.Count
With scanf.MusicSc
.ListItems(N).SubItems(2) = Replace(.ListItems(N).SubItems(2), "'", "", 1, Len(.ListItems(N).SubItems(2)), vbTextCompare)
.ListItems(N).SubItems(3) = Replace(.ListItems(N).SubItems(3), "'", "", 1, Len(.ListItems(N).SubItems(3)), vbTextCompare)
End With
Next N
End Function



Public Function FiltArtist1(TXT As String) As String
On Error GoTo 10
STR = ""
STR1 = ""
a = 0
A1 = 0
TXT = Replace(TXT, "  ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "   ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "    ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "     ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "      ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "       ", " ", 1, Len(TXT), vbTextCompare)

For NN = 0 To Len(TXT)
a = A1 + 1
A1 = InStr(a, TXT, " ")

STR = (Mid(TXT, a, A1 - a))
STR = (Mid(STR, 1, 1)) & Mid(STR, 2, Len(STR))
'List1.AddItem STR
STR1 = STR1 & " " & STR
Next NN
10:

STR = (Mid(TXT, a, Len(TXT)))
STR = (Mid(STR, 1, 1)) & Mid(STR, 2, Len(STR))
STR1 = STR1 & " " & STR
If Mid(STR1, 1, 1) = " " Then STR1 = Mid(STR1, 2, Len(STR1))
FiltArtist1 = STR1
End Function


Public Function FiltALB1(TXT As String) As String
On Error GoTo 10
STR = ""
STR1 = ""
a = 0
A1 = 0
TXT = Replace(TXT, "  ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "   ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "    ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "     ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "      ", " ", 1, Len(TXT), vbTextCompare)
TXT = Replace(TXT, "       ", " ", 1, Len(TXT), vbTextCompare)

For NN = 0 To Len(TXT)
a = A1 + 1
A1 = InStr(a, TXT, " ")

STR = (Mid(TXT, a, A1 - a))
STR = (Mid(STR, 1, 1)) & Mid(STR, 2, Len(STR))
STR1 = STR1 & " " & STR
Next NN
10:

STR = (Mid(TXT, a, Len(TXT)))
STR = (Mid(STR, 1, 1)) & Mid(STR, 2, Len(STR))
STR1 = STR1 & " " & STR

STR = ""
STR1 = ""
A1 = InStr(1, TXT, "!!")
STR = (Mid(TXT, A1 + 2, 1))
STR1 = STR & Mid(TXT, A1 + 3, Len(TXT))

FiltALB1 = Mid(TXT, 1, A1 + 1) & STR1
End Function
