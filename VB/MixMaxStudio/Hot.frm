VERSION 5.00
Begin VB.Form Help 
   BackColor       =   &H00FF8080&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   5775
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7110
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5775
   ScaleWidth      =   7110
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture4 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   90
      Left            =   1080
      Picture         =   "Hot.frx":0000
      ScaleHeight     =   90
      ScaleWidth      =   9345
      TabIndex        =   70
      Top             =   5680
      Width           =   9345
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00FF8080&
      BorderStyle     =   0  'None
      FillColor       =   &H00FF8080&
      ForeColor       =   &H00FF8080&
      Height          =   90
      Left            =   0
      Picture         =   "Hot.frx":2C22
      ScaleHeight     =   90
      ScaleWidth      =   9345
      TabIndex        =   69
      Top             =   720
      Width           =   9345
   End
   Begin VB.PictureBox Picture3 
      Appearance      =   0  'Flat
      BackColor       =   &H00FF8080&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   735
      ScaleWidth      =   7215
      TabIndex        =   67
      Top             =   0
      Width           =   7215
      Begin VB.Image Image5 
         Height          =   585
         Left            =   6120
         Picture         =   "Hot.frx":5844
         ToolTipText     =   "Back"
         Top             =   120
         Width           =   1005
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "What's what"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   2040
         TabIndex        =   68
         Top             =   240
         Width           =   1995
      End
      Begin VB.Image Image2 
         Height          =   375
         Left            =   0
         Picture         =   "Hot.frx":5A3E
         Top             =   315
         Width           =   1635
      End
      Begin VB.Image Image1 
         Height          =   195
         Left            =   0
         Picture         =   "Hot.frx":7F6E
         Stretch         =   -1  'True
         Top             =   0
         Width           =   9345
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FF8080&
      BorderStyle     =   0  'None
      Height          =   4935
      Index           =   1
      Left            =   1080
      TabIndex        =   66
      Top             =   840
      Width           =   5895
   End
   Begin VB.VScrollBar SCRL 
      Height          =   4815
      LargeChange     =   10
      Left            =   6960
      SmallChange     =   60
      TabIndex        =   7
      Top             =   840
      Width           =   135
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FF8080&
      BorderStyle     =   0  'None
      Height          =   36000
      Index           =   0
      Left            =   1080
      TabIndex        =   2
      Top             =   840
      Width           =   5895
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Number of Clicked track"
         Height          =   435
         Index           =   58
         Left            =   2640
         TabIndex        =   65
         Top             =   34560
         Width           =   975
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   17
         X1              =   2880
         X2              =   3000
         Y1              =   33720
         Y2              =   34560
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   255
         Index           =   25
         Left            =   2880
         Top             =   33480
         Width           =   255
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Browse Sound for this track"
         Height          =   435
         Index           =   57
         Left            =   2760
         TabIndex        =   64
         Top             =   35040
         Width           =   1095
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   16
         X1              =   4680
         X2              =   3600
         Y1              =   34440
         Y2              =   35040
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   495
         Index           =   24
         Left            =   4560
         Top             =   33960
         Width           =   495
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Change yust Disk path."
         Height          =   435
         Index           =   56
         Left            =   4320
         TabIndex        =   63
         Top             =   34920
         Width           =   930
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   15
         X1              =   5520
         X2              =   5160
         Y1              =   33720
         Y2              =   34920
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   255
         Index           =   23
         Left            =   4800
         Top             =   33480
         Width           =   855
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Close"
         Height          =   195
         Index           =   55
         Left            =   5280
         TabIndex        =   62
         Top             =   32400
         Width           =   390
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   14
         X1              =   5520
         X2              =   5400
         Y1              =   32880
         Y2              =   32640
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   255
         Index           =   22
         Left            =   5480
         Top             =   32860
         Width           =   255
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Apply Change"
         Height          =   195
         Index           =   54
         Left            =   3960
         TabIndex        =   61
         Top             =   32400
         Width           =   990
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   13
         X1              =   3600
         X2              =   3960
         Y1              =   33440
         Y2              =   32640
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   255
         Index           =   20
         Left            =   3560
         Top             =   33450
         Width           =   255
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Click to track from list and change with Keyboard."
         Height          =   435
         Index           =   53
         Left            =   600
         TabIndex        =   60
         Top             =   32280
         Width           =   1815
      End
      Begin VB.Line Line9 
         BorderColor     =   &H000000FF&
         X1              =   240
         X2              =   600
         Y1              =   33210
         Y2              =   32640
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H00FFFF00&
         Height          =   255
         Index           =   21
         Left            =   120
         Top             =   33210
         Width           =   2295
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Selected track from ""Open Mix"" to change path"
         Height          =   435
         Index           =   52
         Left            =   600
         TabIndex        =   59
         Top             =   34800
         Width           =   1935
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   12
         X1              =   120
         X2              =   600
         Y1              =   34140
         Y2              =   34920
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         FillColor       =   &H000000FF&
         Height          =   255
         Index           =   19
         Left            =   40
         Top             =   33920
         Width           =   3735
      End
      Begin VB.Image Image7 
         Height          =   480
         Left            =   1440
         Picture         =   "Hot.frx":893F
         Top             =   9720
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   33
         Left            =   720
         Picture         =   "Hot.frx":9209
         Top             =   9720
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   1710
         Index           =   31
         Left            =   0
         Picture         =   "Hot.frx":9513
         Top             =   32880
         Width           =   5850
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Start Search"
         Height          =   195
         Index           =   51
         Left            =   3720
         TabIndex        =   58
         Top             =   31920
         Width           =   885
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Play - Stop Checked sound"
         Height          =   195
         Index           =   50
         Left            =   960
         TabIndex        =   57
         Top             =   31800
         Width           =   1935
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Change disk"
         Height          =   195
         Index           =   49
         Left            =   4440
         TabIndex        =   56
         Top             =   29640
         Width           =   885
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "File Type"
         Height          =   195
         Index           =   48
         Left            =   3360
         TabIndex        =   55
         Top             =   29640
         Width           =   645
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "File Name of file        name to search"
         Height          =   435
         Index           =   47
         Left            =   1080
         TabIndex        =   54
         Top             =   29520
         Width           =   1305
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   11
         X1              =   3720
         X2              =   3960
         Y1              =   31440
         Y2              =   31920
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   10
         X1              =   960
         X2              =   1080
         Y1              =   31440
         Y2              =   31800
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         FillColor       =   &H000000FF&
         Height          =   495
         Index           =   17
         Left            =   600
         Shape           =   4  'Rounded Rectangle
         Top             =   30960
         Width           =   975
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   495
         Index           =   18
         Left            =   3480
         Top             =   30960
         Width           =   495
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   7
         X1              =   4320
         X2              =   4560
         Y1              =   30480
         Y2              =   29880
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   8
         X1              =   3240
         X2              =   3480
         Y1              =   30480
         Y2              =   29880
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   495
         Index           =   16
         Left            =   4080
         Top             =   30480
         Width           =   825
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   495
         Index           =   15
         Left            =   3000
         Top             =   30480
         Width           =   975
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   9
         X1              =   960
         X2              =   1080
         Y1              =   30480
         Y2              =   29760
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         BorderStyle     =   2  'Dash
         Height          =   495
         Index           =   14
         Left            =   720
         Top             =   30480
         Width           =   2295
      End
      Begin VB.Image Image4 
         Height          =   1110
         Index           =   29
         Left            =   360
         Picture         =   "Hot.frx":29F3D
         Top             =   30360
         Width           =   4545
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Number File on list"
         Height          =   435
         Index           =   46
         Left            =   4800
         TabIndex        =   53
         Top             =   26880
         Width           =   855
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "File Size"
         Height          =   195
         Index           =   45
         Left            =   4200
         TabIndex        =   52
         Top             =   26520
         Width           =   585
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "File Name"
         Height          =   195
         Index           =   44
         Left            =   3240
         TabIndex        =   51
         Top             =   26880
         Width           =   705
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Insert to Track"
         Height          =   195
         Index           =   43
         Left            =   1680
         TabIndex        =   50
         Top             =   26760
         Width           =   1035
      End
      Begin VB.Line Line8 
         BorderColor     =   &H000000FF&
         X1              =   5400
         X2              =   5160
         Y1              =   27120
         Y2              =   27840
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   195
         Index           =   13
         Left            =   5040
         Top             =   27840
         Width           =   255
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   6
         X1              =   4320
         X2              =   3840
         Y1              =   26760
         Y2              =   27840
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   195
         Index           =   12
         Left            =   3600
         Top             =   27840
         Width           =   735
      End
      Begin VB.Line Line10 
         BorderColor     =   &H000000FF&
         X1              =   1560
         X2              =   1920
         Y1              =   27360
         Y2              =   27000
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   5
         X1              =   3480
         X2              =   3120
         Y1              =   27120
         Y2              =   27720
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   4
         X1              =   960
         X2              =   3120
         Y1              =   27720
         Y2              =   27720
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   255
         Index           =   11
         Left            =   960
         Top             =   27360
         Width           =   615
      End
      Begin VB.Image Image4 
         Height          =   1560
         Index           =   30
         Left            =   240
         Picture         =   "Hot.frx":2B6B7
         Top             =   27360
         Width           =   5205
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Active track"
         Height          =   195
         Index           =   42
         Left            =   2280
         TabIndex        =   49
         Top             =   25320
         Width           =   855
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Track Position"
         Height          =   195
         Index           =   41
         Left            =   600
         TabIndex        =   48
         Top             =   25080
         Width           =   1020
      End
      Begin VB.Line Line7 
         X1              =   600
         X2              =   960
         Y1              =   25800
         Y2              =   25320
      End
      Begin VB.Line Line6 
         BorderColor     =   &H000000FF&
         X1              =   1800
         X2              =   2400
         Y1              =   25920
         Y2              =   25560
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         BorderStyle     =   2  'Dash
         Height          =   495
         Index           =   9
         Left            =   480
         Top             =   25800
         Width           =   495
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         BorderStyle     =   2  'Dash
         Height          =   270
         Index           =   10
         Left            =   1560
         Top             =   25920
         Width           =   615
      End
      Begin VB.Image Image4 
         Height          =   540
         Index           =   28
         Left            =   360
         Picture         =   "Hot.frx":2DE57
         Top             =   25800
         Width           =   2370
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Insert Sound"
         Height          =   195
         Index           =   40
         Left            =   4800
         TabIndex        =   47
         Top             =   22320
         Width           =   900
      End
      Begin VB.Line Line5 
         BorderColor     =   &H000000FF&
         X1              =   5520
         X2              =   5520
         Y1              =   22560
         Y2              =   23280
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   255
         Index           =   8
         Left            =   5280
         Top             =   23280
         Width           =   255
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Close"
         Height          =   195
         Index           =   39
         Left            =   4200
         TabIndex        =   46
         Top             =   22560
         Width           =   390
      End
      Begin VB.Line Line4 
         BorderColor     =   &H000000FF&
         X1              =   5280
         X2              =   4680
         Y1              =   22920
         Y2              =   22680
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         BorderStyle     =   2  'Dash
         Height          =   255
         Index           =   7
         Left            =   5180
         Top             =   22920
         Width           =   255
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Track lenght"
         Height          =   195
         Index           =   38
         Left            =   4560
         TabIndex        =   45
         Top             =   24360
         Width           =   900
      End
      Begin VB.Line Line3 
         BorderColor     =   &H000000FF&
         X1              =   4440
         X2              =   4680
         Y1              =   23880
         Y2              =   24360
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Cursor Position on seek bar"
         Height          =   195
         Index           =   37
         Left            =   2160
         TabIndex        =   44
         Top             =   24360
         Width           =   1935
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   3
         X1              =   2520
         X2              =   2640
         Y1              =   24360
         Y2              =   23880
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Sound Fosition   on Seek bar"
         Height          =   435
         Index           =   36
         Left            =   120
         TabIndex        =   43
         Top             =   24360
         Width           =   1125
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   2
         X1              =   600
         X2              =   1440
         Y1              =   24360
         Y2              =   23880
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         BorderStyle     =   3  'Dot
         Height          =   220
         Index           =   4
         Left            =   1440
         Top             =   23520
         Width           =   3615
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         Height          =   200
         Index           =   6
         Left            =   2280
         Top             =   23760
         Width           =   1575
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         FillColor       =   &H000000FF&
         Height          =   170
         Index           =   5
         Left            =   4320
         Top             =   23760
         Width           =   855
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         FillColor       =   &H00FFFFFF&
         Height          =   170
         Index           =   3
         Left            =   1200
         Top             =   23760
         Width           =   855
      End
      Begin VB.Line Line2 
         BorderColor     =   &H000000FF&
         X1              =   1320
         X2              =   1080
         Y1              =   22080
         Y2              =   23160
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         BorderStyle     =   2  'Dash
         Height          =   255
         Index           =   2
         Left            =   720
         Top             =   23160
         Width           =   1335
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Track Options ¡"
         Height          =   195
         Index           =   35
         Left            =   120
         TabIndex        =   42
         Top             =   22320
         Width           =   1095
      End
      Begin VB.Image Image4 
         Height          =   1050
         Index           =   27
         Left            =   120
         Picture         =   "Hot.frx":2E5F1
         Top             =   22920
         Width           =   5490
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "File Name of Sound on Track"
         Height          =   195
         Index           =   34
         Left            =   1320
         TabIndex        =   41
         Top             =   21840
         Width           =   2085
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   1
         X1              =   1320
         X2              =   840
         Y1              =   21840
         Y2              =   21360
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         BorderStyle     =   2  'Dash
         Height          =   375
         Index           =   1
         Left            =   600
         Top             =   21000
         Width           =   2175
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Track Number"
         Height          =   195
         Index           =   33
         Left            =   1320
         TabIndex        =   40
         Top             =   19920
         Width           =   1020
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         Index           =   0
         X1              =   1320
         X2              =   960
         Y1              =   20040
         Y2              =   20400
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H00FFFFFF&
         BorderColor     =   &H000000FF&
         BorderStyle     =   4  'Dash-Dot
         Height          =   375
         Index           =   0
         Left            =   600
         Shape           =   2  'Oval
         Top             =   20400
         Width           =   735
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "2. partion"
         Height          =   195
         Left            =   120
         TabIndex        =   39
         Top             =   19680
         Width           =   660
      End
      Begin VB.Image Image4 
         Height          =   1020
         Index           =   26
         Left            =   480
         Picture         =   "Hot.frx":3036A
         Top             =   20400
         Width           =   2595
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Back."
         Height          =   195
         Index           =   32
         Left            =   960
         TabIndex        =   38
         Top             =   18960
         Width           =   420
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Stop Find and Close Find List."
         Height          =   195
         Index           =   31
         Left            =   960
         TabIndex        =   37
         Top             =   18120
         Width           =   2100
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Find file."
         Height          =   195
         Index           =   30
         Left            =   840
         TabIndex        =   36
         Top             =   17400
         Width           =   585
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   25
         Left            =   240
         Picture         =   "Hot.frx":310A1
         Top             =   18840
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   24
         Left            =   240
         Picture         =   "Hot.frx":3196B
         Top             =   18000
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   23
         Left            =   240
         Picture         =   "Hot.frx":31C75
         Top             =   17280
         Width           =   480
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "L"
         ForeColor       =   &H0000FFFF&
         Height          =   195
         Left            =   400
         TabIndex        =   35
         Top             =   15970
         Width           =   90
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Track Balance Sound."
         Height          =   195
         Index           =   29
         Left            =   2160
         TabIndex        =   34
         Top             =   16680
         Width           =   1605
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Track Position on screen, L - Left ; R - Right."
         Height          =   195
         Index           =   28
         Left            =   960
         TabIndex        =   33
         Top             =   15960
         Width           =   3165
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Next Track."
         Height          =   195
         Index           =   27
         Left            =   840
         TabIndex        =   32
         Top             =   15240
         Width           =   840
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Previous Track."
         Height          =   195
         Index           =   26
         Left            =   840
         TabIndex        =   31
         Top             =   14640
         Width           =   1125
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Stop Play Sound."
         Height          =   195
         Index           =   25
         Left            =   960
         TabIndex        =   30
         Top             =   13920
         Width           =   1230
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Start Play Sound in Play or Stop Mode."
         Height          =   195
         Index           =   24
         Left            =   960
         TabIndex        =   29
         Top             =   13200
         Width           =   2745
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Insert Sound in Track Options, automatio delete active sound in this track."
         Height          =   435
         Index           =   23
         Left            =   960
         TabIndex        =   28
         Top             =   12480
         Width           =   4440
      End
      Begin VB.Image Image6 
         Height          =   480
         Left            =   240
         Picture         =   "Hot.frx":3253F
         Top             =   15840
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   210
         Index           =   22
         Left            =   240
         Picture         =   "Hot.frx":32849
         Top             =   16680
         Width           =   1455
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   17
         Left            =   240
         Picture         =   "Hot.frx":32B33
         Top             =   15120
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   16
         Left            =   240
         Picture         =   "Hot.frx":333FD
         Top             =   14520
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   15
         Left            =   240
         Picture         =   "Hot.frx":33CC7
         Top             =   13800
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   14
         Left            =   240
         Picture         =   "Hot.frx":34591
         Top             =   13080
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   13
         Left            =   360
         Picture         =   "Hot.frx":34E5B
         Top             =   12480
         Width           =   480
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Reset to Defaults."
         Height          =   195
         Index           =   22
         Left            =   960
         TabIndex        =   27
         Top             =   11880
         Width           =   1275
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "OK."
         Height          =   195
         Index           =   21
         Left            =   960
         TabIndex        =   26
         Top             =   11280
         Width           =   270
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Apply Setings."
         Height          =   195
         Index           =   20
         Left            =   960
         TabIndex        =   25
         Top             =   10560
         Width           =   1005
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   12
         Left            =   240
         Picture         =   "Hot.frx":3529D
         Top             =   11760
         Width           =   480
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Back."
         Height          =   195
         Index           =   19
         Left            =   2280
         TabIndex        =   24
         Top             =   9840
         Width           =   420
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Help."
         Height          =   195
         Index           =   18
         Left            =   840
         TabIndex        =   23
         Top             =   9480
         Width           =   375
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Exit."
         Height          =   195
         Index           =   17
         Left            =   840
         TabIndex        =   22
         Top             =   9000
         Width           =   300
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "<"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   16
         Left            =   360
         TabIndex        =   21
         Top             =   9840
         Width           =   150
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "?"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   15
         Left            =   360
         TabIndex        =   20
         Top             =   9480
         Width           =   135
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "×"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Index           =   14
         Left            =   360
         TabIndex        =   19
         Top             =   9000
         Width           =   180
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "To save your Recording Mix."
         Height          =   195
         Index           =   13
         Left            =   960
         TabIndex        =   18
         Top             =   8400
         Width           =   2040
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "To open Mix Parameters (open project) ."
         Height          =   195
         Index           =   12
         Left            =   960
         TabIndex        =   17
         Top             =   7680
         Width           =   2835
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "If you wish save Mix parameters (sound name, balance, volume...) click this button."
         Height          =   435
         Index           =   11
         Left            =   960
         TabIndex        =   16
         Top             =   6960
         Width           =   4680
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "This symbol characterize freeze, when you use Keyboard."
         Height          =   195
         Index           =   10
         Left            =   840
         TabIndex        =   15
         Top             =   6360
         Width           =   4065
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "This symbol characterize activ track, yust in ""Play mode"" . To Stop track Click to Track Button."
         Height          =   435
         Index           =   9
         Left            =   840
         TabIndex        =   14
         Top             =   5760
         Width           =   4680
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "This symbol characterize full track, to play track click to button for ""Play"" and Double Click to Track."
         Height          =   555
         Index           =   8
         Left            =   840
         TabIndex        =   13
         Top             =   5160
         Width           =   4365
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "This symbol characterize empty track."
         Height          =   195
         Index           =   7
         Left            =   840
         TabIndex        =   12
         Top             =   4680
         Width           =   2655
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   21
         Left            =   240
         Picture         =   "Hot.frx":35B67
         Top             =   8280
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   20
         Left            =   240
         Picture         =   "Hot.frx":36431
         Top             =   6240
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   19
         Left            =   240
         Picture         =   "Hot.frx":36CFB
         Top             =   5040
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   18
         Left            =   240
         Picture         =   "Hot.frx":378BD
         Top             =   11160
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   11
         Left            =   240
         Picture         =   "Hot.frx":38187
         Top             =   10440
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   10
         Left            =   240
         Picture         =   "Hot.frx":38A51
         Top             =   7560
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   9
         Left            =   240
         Picture         =   "Hot.frx":3931B
         Top             =   6840
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   8
         Left            =   240
         Picture         =   "Hot.frx":39BE5
         Top             =   5640
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   7
         Left            =   240
         Picture         =   "Hot.frx":3A7A7
         Top             =   4560
         Width           =   480
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "To more information of track or information for all track."
         Height          =   195
         Index           =   6
         Left            =   840
         TabIndex        =   10
         Top             =   4080
         Width           =   3840
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "To remove sound for chose track click..."
         Height          =   195
         Index           =   5
         Left            =   840
         TabIndex        =   9
         Top             =   3600
         Width           =   2865
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   $"Hot.frx":3AAB1
         Height          =   675
         Index           =   4
         Left            =   840
         TabIndex        =   8
         Top             =   2760
         Width           =   4575
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   6
         Left            =   240
         Picture         =   "Hot.frx":3AB6C
         Top             =   3960
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   5
         Left            =   240
         Picture         =   "Hot.frx":3B436
         Top             =   3480
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   4
         Left            =   240
         Picture         =   "Hot.frx":3BD00
         Top             =   2760
         Width           =   480
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   3
         Left            =   240
         Picture         =   "Hot.frx":3C5CA
         Top             =   2160
         Width           =   480
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "To insert sound you need first click to track and to this button."
         Height          =   435
         Index           =   3
         Left            =   960
         TabIndex        =   6
         Top             =   2280
         Width           =   4575
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "If your wish Recording Mix - Click to this button, or you wish stop   yust Recording Click to this button."
         Height          =   435
         Index           =   2
         Left            =   960
         TabIndex        =   5
         Top             =   1680
         Width           =   4815
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   2
         Left            =   240
         Picture         =   "Hot.frx":3CE94
         Top             =   1560
         Width           =   480
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "To stop mix or recording mix click to this button."
         Height          =   195
         Index           =   1
         Left            =   960
         TabIndex        =   4
         Top             =   1080
         Width           =   3345
      End
      Begin VB.Image Image4 
         Height          =   480
         Index           =   1
         Left            =   240
         Picture         =   "Hot.frx":3D75E
         Top             =   960
         Width           =   480
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "To Mix Insert sound,or record this new mix , you need first click this button with your mouse."
         Height          =   435
         Index           =   0
         Left            =   960
         TabIndex        =   3
         Top             =   240
         Width           =   4530
      End
      Begin VB.Image Image4 
         Height          =   720
         Index           =   0
         Left            =   120
         Picture         =   "Hot.frx":3E028
         Top             =   120
         Width           =   720
      End
   End
   Begin VB.PictureBox Picture2 
      BorderStyle     =   0  'None
      Height          =   5055
      Left            =   0
      Picture         =   "Hot.frx":3EEF2
      ScaleHeight     =   5055
      ScaleWidth      =   1095
      TabIndex        =   0
      Top             =   840
      Width           =   1095
      Begin VB.Label fIndex 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Left            =   240
         TabIndex        =   11
         Top             =   4440
         Visible         =   0   'False
         Width           =   90
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "What's what"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   6.75
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0C0C0&
         Height          =   165
         Left            =   0
         TabIndex        =   1
         Top             =   0
         Width           =   735
      End
      Begin VB.Image Image3 
         Height          =   480
         Index           =   1
         Left            =   240
         Picture         =   "Hot.frx":432A3
         Top             =   1200
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.Image Image3 
         Height          =   480
         Index           =   0
         Left            =   240
         Picture         =   "Hot.frx":435AD
         Top             =   480
         Width           =   480
      End
   End
End
Attribute VB_Name = "Help"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim mm As POINTAPI
Dim K
Dim XX
Dim YY
Dim P

Private Sub Form_Load()
SCRL.Max = Frame1(0).Height - 4935
Frame1(0).Visible = True
Frame1(1).Visible = False
End Sub

Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
K = 1
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If K = 1 Then
GetCursorPos mm
Help.Left = (P * mm.X) - XX
Help.Top = (P * mm.Y) - YY
End If
End Sub

Private Sub Image1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
K = 0
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Image3_Click(Index As Integer)
On Error Resume Next
WPath = App.Path + "\" + "snd3.wav"
R = WavPlay(WPath, SND_ASYNC)
fIndex.Caption = Index
Select Case Index
Case 0
Label2.Caption = "What's what"
SCRL.Max = Frame1(0).Height - 4935
SCRL.Value = 1
Frame1(0).Visible = True
Frame1(1).Visible = False
Case 1
Label2.Caption = "Haw to work"
SCRL.Max = Frame1(1).Height - 4935
SCRL.Value = 1
Frame1(0).Visible = False
Frame1(1).Visible = True
End Select
End Sub

Private Sub Image3_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Select Case Index
Case 0
Label3.Caption = "What's what"
Case 1
Label3.Caption = "Haw to work"
Case 2
Label3.Caption = "Sound Symbols"
End Select
End Sub

Private Sub Image5_Click()
Unload Me
End Sub

Private Sub Label1_Click()
Unload Me
End Sub

Private Sub SCRL_Change()
Frame1(fIndex).Top = -(SCRL.Value - 840)
End Sub

Private Sub SCRL_Scroll()
Frame1(fIndex).Top = -(SCRL.Value - 840)
End Sub
