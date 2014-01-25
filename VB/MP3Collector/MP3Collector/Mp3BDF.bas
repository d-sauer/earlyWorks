Attribute VB_Name = "Mp3BDF"
'Mp3 Birate, Duration, Freq
Option Explicit
Public Type MP3Info
    Bitrate As Integer
    Frequency As Long
    Mode As String
    Emphasis As String
    'ModeExtension As String
    MpegVersion As Integer
    MpegLayer As Integer
    Padding As String
    CRC As String
    Duration As Long
    CopyRight As String
    Original As String
    PrivateBit As String
    HasTag As Boolean
    Tag As String
    Songname As String
    Artist As String
    Album As String
    Year As String
    Comment As String
    Genre As Integer
    Track As String
    VBR As Boolean
    Frames As Integer
End Type

Global GetMP3Info As MP3Info

Public Function BinToDec(BinValue As String) As Long
Dim i
BinToDec = 0
For i = 1 To Len(BinValue)
If Mid(BinValue, i, 1) = 1 Then
BinToDec = BinToDec + 2 ^ (Len(BinValue) - i)
End If
Next i
End Function
Public Function ByteToBit(ByteArray) As String
'convert 4*1 byte array to 4*8 bits'''''
Dim z, i
ByteToBit = ""
   For z = 1 To 4
    For i = 7 To 0 Step -1
      If Int(ByteArray(z) / (2 ^ i)) = 1 Then
        ByteToBit = ByteToBit & "1"
        ByteArray(z) = ByteArray(z) - (2 ^ i)
      Else
            If ByteToBit <> "" Then
                ByteToBit = ByteToBit & "0"
            End If
      End If
  Next
Next z
End Function
Public Function BinaryHeader(FileName As String, ReadTag As Boolean, ReadHeader As Boolean) As String
Dim ByteArray(4) As Byte
Dim XingH As String * 4

Dim FIO%, N&, i, Headstart

FIO% = FreeFile
Open FileName For Binary Access Read As FIO%
N& = LOF(FIO%): If N& < 256 Then Close FIO%: Return 'ny
If ReadHeader = False Then GoTo 5:   'if we only want to read the IDtag goto 5
Dim x As Byte
'''''start check startposition for header''''''''''''
'''''if start position <>1 then id3v2 tag exists'''''
   For i = 1 To 5000            'check up to 5000 bytes for the header
    Get #FIO%, i, x
    If x = 255 Then             'header always start with 255 followed by 250 or 251
        Get #FIO%, i + 1, x
        If x > 249 And x < 252 Then
            Headstart = i       'set header start position
            Exit For
        End If
    End If
Next i
'''end check start position for header'''''''''''''
Dim z, Frames
''start check for XingHeader'''
    Get #1, Headstart + 36, XingH
    If XingH = "Xing" Then
        GetMP3Info.VBR = True
                    For z = 1 To 4 '
                    Get #1, Headstart + 43 + z, ByteArray(z)  'get framelength to array
                    Next z
                    Frames = BinToDec(ByteToBit(ByteArray))   'calculate # of frames
                    GetMP3Info.Frames = Frames                'set frames
                    Else: GetMP3Info.VBR = False
                    End If
'''end check for XingHeader

'''start extract the first 4 bytes (32 bits) to an array
   For z = 1 To 4 '
      Get #1, Headstart + z - 1, ByteArray(z)
   Next z
  '''stop extract the first 4 bytes (32 bits) to an array
5:
If ReadTag = False Then GoTo 10     'if we dont want to read the tag goto 10
''''start id3 tag''''''''''''''''''''''''''''''''''''''''''''''''
Dim p
    Dim Inbuf As String * 256
    Get #FIO%, (N& - 255), Inbuf:  Close FIO% 'ny
        p = InStr(1, Inbuf, "tag", 1)  'ny
        If p = 0 Then
            With GetMP3Info
                .HasTag = False
                .Songname = ""
                .Artist = ""
                .Album = ""
                .Year = ""
                .Comment = ""
                .Track = ""
                .Genre = 255
            End With
        Else
            With GetMP3Info
                .HasTag = True
                .Songname = RTrim(Mid$(Inbuf, p + 3, 30))
                .Artist = RTrim(Mid$(Inbuf, p + 33, 30))
                .Album = RTrim(Mid$(Inbuf, p + 63, 30))
                .Year = RTrim(Mid$(Inbuf, p + 93, 4))
                .Comment = RTrim(Mid$(Inbuf, p + 97, 29))
                .Track = RTrim(Mid$(Inbuf, p + 126, 1))
                .Genre = Asc(RTrim(Mid$(Inbuf, p + 127, 1)))
        End With
    End If
''''stop id3 tag''''''''''''''''''''''''''''''
10:
Close FIO%
BinaryHeader = ByteToBit(ByteArray)
End Function
Public Function ReadMP3(FileName As String, ReadTag As Boolean, ReadHeader As Boolean) As MP3Info
On Error Resume Next
Dim bin, Version1, MpegVersion, SMode, Mode, EmPh, Emphasis, layer, MpegLayer, Freq, Frequency, temP, Bitrate, Brate, NoYes, Original, CopyRight, Padding, PrivateBit, CRC, ms, YesNo, Duration

bin = BinaryHeader(FileName, ReadTag, ReadHeader)                     'extract all 32 bits

If ReadHeader = False Then Exit Function
Version1 = Array(25, 0, 2, 1)                         'Mpegversion table
MpegVersion = Version1(BinToDec(Mid(bin, 12, 2)))    'get mpegversion from table
layer = Array(0, 3, 2, 1)                           'layer table
MpegLayer = layer(BinToDec(Mid(bin, 14, 2)))        'get layer from table
'SMode = Array("stereo", "joint stereo", "dual channel", "single channel") 'mode table
'Mode = SMode(BinToDec(Mid(bin, 25, 2)))              'get mode from table
'EmPh = Array("no", "50/15", "reserved", "CCITT J 17") 'empasis table
'Emphasis = EmPh(BinToDec(Mid(bin, 31, 2)))           'get empasis from table
Select Case MpegVersion                                 'look for version to create right table
Case 1                                                  'for version 1
Freq = Array(44100, 48000, 32000)
Case 2 Or 25                                            'for version 2 or 2.5
Freq = Array(22050, 24000, 16000)
Case Else
Frequency = 0
Exit Function
End Select
Frequency = Freq(BinToDec(Mid(bin, 21, 2)))             'look for frequency in table
If GetMP3Info.VBR = True Then                           'check if variable bitrate
    temP = Array(, 12, 144, 144)                        'define to calculate correct bitrate
    Bitrate = (FileLen(FileName) * Frequency) / (Int(GetMP3Info.Frames)) / 1000 / temP(MpegLayer)
    Else                                                 'if not variable bitrate

    Dim LayerVersion As String
    LayerVersion = MpegVersion & MpegLayer          'combine version and layer to string
    Select Case Val(LayerVersion)                        'look for the right bitrate table
    Case 11                                              'Version 1, Layer 1
    Brate = Array(0, 32, 64, 96, 128, 160, 192, 224, 256, 288, 320, 352, 384, 416, 448)
    Case 12                                              'V1 L1
    Brate = Array(0, 32, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384)
    Case 13                                               'V1 L3
    Brate = Array(0, 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320)
    Case 21 Or 251                                         'V2 L1 and 'V2.5 L1
    Brate = Array(0, 32, 48, 56, 64, 80, 96, 112, 128, 144, 160, 176, 192, 224, 256)
    Case 22 Or 252 Or 23 Or 253                            ''V2 L2 and 'V2.5 L2 etc...
    Brate = Array(0, 8, 16, 24, 32, 40, 48, 56, 64, 80, 96, 112, 128, 144, 160)
    Case Else                                               'if variable bitrate
    Bitrate = 1                                             'e.g. for Variable bitrate
    Exit Function
    End Select
    Bitrate = Brate(BinToDec(Mid(bin, 17, 4)))
    End If


ms = (FileLen(FileName) * 8) / Bitrate                  'calculate duration
Duration = Int(ms / 1000)
With GetMP3Info                                          'set values
    .Bitrate = Bitrate                                  '
    .Duration = Duration
End With
Exit Function
End Function

