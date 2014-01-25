Attribute VB_Name = "Module2"
Dim STRI
Public i As Integer
Public strEmptyString As String
Public B As Byte
Public s As String

Private Type ID3v1Tag
  id As String * 3
  title As String * 30
  Artist As String * 30
  Album As String * 30
  Year As String * 4
  Comment As String * 30
  Genre As Byte
End Type

Private Version As Byte

Dim a, A1
Dim NN, STR, STR1


Public Function ReadFile(FileN As String, FileNN As String, MM As Integer)
On Error Resume Next
Dim GenNum As Integer
    Dim strFilename As String
    Dim lngFilesize As Long
    
    strFilename = FileN

    Dim fn As Integer
    Dim lngHeaderPosition As Long
    Dim Tag1 As ID3v1Tag
    Dim Tag2 As String
    
    fn = FreeFile
    
    Open strFilename For Binary As #fn                      'Open the file so we can read it
    lngFilesize = LOF(fn)                                   'Size of the file, in bytes

        Get #fn, 1, B
            
        If B <> 255 Then '(255 is where an ID3v2 header should start)
            If B <> 73 Then
                'Exit Function
            End If
        End If
         
        lngHeaderPosition = 1
        Get #fn, 2, B
        If (B < 250 Or B > 251) Then
            'We have an ID3v2 tag
            If B = 68 Then
                Get #fn, 3, B
                If B = 51 Then
                    Dim R As Double
                    Get #fn, 4, Version
                    Get #fn, 7, B
                    R = B * 20917152
                    Get #fn, 8, B
                    R = R + (B * 16384)
                    Get #fn, 9, B
                    R = R + (B * 128)
                    Get #fn, 10, B
                    R = R + B
                    If R > lngFilesize Or R > 2147483647 Then
                        Exit Function
                    End If
                    Tag2 = Space$(R)
                    Get #fn, 11, Tag2
                    lngHeaderPosition = R + 11
                End If
            End If
        Else
            'ID3v2 tag is missing
        End If

    'ID3v1 tag
        Get #fn, lngFilesize - 127, Tag1.id
        
        If Tag1.id = "TAG" Then 'If "TAG" is present, then we have a valid ID3v1 tag and will extract all available ID3v1 info from the file
            Get #fn, , Tag1.title   'Always limited to 30 characters
            Get #fn, , Tag1.Artist  'Always limited to 30 characters
            Get #fn, , Tag1.Album   'Always limited to 30 characters
            Get #fn, , Tag1.Year    'Always limited to 4 characters
            Get #fn, , Tag1.Comment 'Always limited to 30 characters
            Get #fn, , Tag1.Genre   'Always limited to 1 byte (?)

                scanf.MusicSc.ListItems.Item(MM).Text = swp(Trim$(Tag1.title))
                'scanf.MusicSc.ListItems(MM).SubItems(0) = Trim$(Tag1.title)
                scanf.MusicSc.ListItems(MM).SubItems(2) = swp(FiltArtist(Trim$(Tag1.Artist)))
                scanf.MusicSc.ListItems(MM).SubItems(3) = swp(Trim$(Tag1.Album))
                scanf.MusicSc.ListItems(MM).SubItems(4) = Trim$(Tag1.Year)
                GenNum = Tag1.Genre
                scanf.MusicSc.ListItems(MM).SubItems(5) = GenreText(GenNum)
                
                'L.SubItems(2) = Trim$(Tag1.title)
                'L.SubItems(3) = Trim$(Tag1.Artist)
                'L.SubItems(4) = Trim$(Tag1.Album)
                'L.SubItems(5) = Trim$(Tag1.Year)
                'L.SubItems(6) = Tag1.Genre
        
        End If
    If Tag1.title <> strEmptyString Then
    scanf.MusicSc.ListItems.Item(MM).Text = Mid(FileNN, 1, Len(FileNN) - 4)
    End If

        
    Close

    Exit Function
        
End Function



Public Function GenreText(Index As Integer) As String
On Error GoTo Errhand
Dim Matrix
Matrix = Array("Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", _
"Hip -Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&b", "Rap", "Reggae", _
"Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", _
"Soundtrack", "Euro -Techno", "Ambient", "Trip -Hop", "Vocal", "Jazz Funk", "Fusion", _
"Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", _
"Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", _
"Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno -Industrial", "Electronic", _
"Pop -Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", _
"Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", _
"Psychadelic", "Rave", "Showtunes", "Trailer", "Lo -Fi", "Tribal", "Acid Punk", "Acid Jazz", _
"Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk/Rock", "National Folk", _
"Swing", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", _
"Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", _
"Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", _
"Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", _
"Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A Cappella", _
"Euro - House", "Dance Hall", "Goa", "Drum & Bass", "Club - House", "Hardcore", "Terror", "Indie", "BritPop", _
"Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", _
"Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "JPop", "Synthpop")
GenreText = Matrix(Index)

Exit Function
Errhand:
GenreText = "Unknown"
End Function



Public Function FiltArtist(TXT As String) As String
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
'List1.AddItem STR
STR1 = STR1 & " " & STR
Next NN
10:

STR = LCase$(Mid(TXT, a, Len(TXT)))
STR = UCase$(Mid(STR, 1, 1)) & Mid(STR, 2, Len(STR))
STR1 = STR1 & " " & STR
If Mid(STR1, 1, 1) = " " Then STR1 = Mid(STR1, 2, Len(STR1))
FiltArtist = STR1
End Function
