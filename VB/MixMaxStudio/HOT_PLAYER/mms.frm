VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{22D6F304-B0F6-11D0-94AB-0080C74C7E95}#1.0#0"; "MSDXM.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form mms 
   Caption         =   "Form1"
   ClientHeight    =   5775
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   LinkTopic       =   "Form1"
   ScaleHeight     =   5775
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "F"
      Height          =   255
      Left            =   6120
      TabIndex        =   148
      Top             =   2040
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   5280
      TabIndex        =   147
      Text            =   "5"
      Top             =   2040
      Width           =   615
   End
   Begin VB.ListBox List1 
      Height          =   255
      ItemData        =   "mms.frx":0000
      Left            =   10080
      List            =   "mms.frx":0002
      TabIndex        =   146
      Top             =   3000
      Width           =   1575
   End
   Begin MSComctlLib.ProgressBar Pbar 
      Height          =   255
      Left            =   0
      TabIndex        =   145
      Top             =   5520
      Width           =   11895
      _ExtentX        =   20981
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Scrolling       =   1
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Play"
      Height          =   375
      Left            =   4440
      TabIndex        =   144
      Top             =   2040
      Width           =   615
   End
   Begin VB.Frame Frame2 
      Height          =   495
      Left            =   4440
      TabIndex        =   127
      Top             =   2400
      Width           =   2175
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   1920
         TabIndex        =   143
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   1800
         TabIndex        =   142
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   1680
         TabIndex        =   141
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   1560
         TabIndex        =   140
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   1440
         TabIndex        =   139
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   1320
         TabIndex        =   138
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   1200
         TabIndex        =   137
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   1080
         TabIndex        =   136
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   960
         TabIndex        =   135
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   840
         TabIndex        =   134
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   720
         TabIndex        =   133
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   600
         TabIndex        =   132
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   480
         TabIndex        =   131
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   360
         TabIndex        =   130
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   240
         TabIndex        =   129
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   128
         Top             =   240
         Width           =   90
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "<< Code >>"
      Height          =   255
      Left            =   4440
      TabIndex        =   126
      Top             =   3000
      Width           =   2535
   End
   Begin RichTextLib.RichTextBox R 
      Height          =   2175
      Left            =   4440
      TabIndex        =   125
      Top             =   3360
      Width           =   7455
      _ExtentX        =   13150
      _ExtentY        =   3836
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   3
      TextRTF         =   $"mms.frx":0004
   End
   Begin VB.FileListBox File1 
      Height          =   1455
      Left            =   2760
      Pattern         =   "*.MMp"
      TabIndex        =   105
      Top             =   0
      Width           =   1575
   End
   Begin VB.DirListBox Dir1 
      Height          =   1440
      Left            =   960
      TabIndex        =   104
      Top             =   0
      Width           =   1815
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   0
      TabIndex        =   103
      Top             =   1080
      Width           =   975
   End
   Begin VB.Timer Timer1 
      Left            =   5760
      Top             =   240
   End
   Begin VB.Frame Frame1 
      Height          =   4215
      Left            =   0
      TabIndex        =   0
      Top             =   1320
      Width           =   4335
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   102
         Top             =   360
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   101
         Top             =   600
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   100
         Top             =   840
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   120
         TabIndex        =   99
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   120
         TabIndex        =   98
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   120
         TabIndex        =   97
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   120
         TabIndex        =   96
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   120
         TabIndex        =   95
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   120
         TabIndex        =   94
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   120
         TabIndex        =   93
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   120
         TabIndex        =   92
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   120
         TabIndex        =   91
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   120
         TabIndex        =   90
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   120
         TabIndex        =   89
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   120
         TabIndex        =   88
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   120
         TabIndex        =   87
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "From"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   6
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Index           =   0
         Left            =   120
         TabIndex        =   86
         Top             =   120
         Width           =   285
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "To"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   6
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Index           =   1
         Left            =   840
         TabIndex        =   85
         Top             =   120
         Width           =   150
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   840
         TabIndex        =   84
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   840
         TabIndex        =   83
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   840
         TabIndex        =   82
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   840
         TabIndex        =   81
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   840
         TabIndex        =   80
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   840
         TabIndex        =   79
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   840
         TabIndex        =   78
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   840
         TabIndex        =   77
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   840
         TabIndex        =   76
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   840
         TabIndex        =   75
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   840
         TabIndex        =   74
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   840
         TabIndex        =   73
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   840
         TabIndex        =   72
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   840
         TabIndex        =   71
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   840
         TabIndex        =   70
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   840
         TabIndex        =   69
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Speed"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   6
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Index           =   2
         Left            =   1440
         TabIndex        =   68
         Top             =   120
         Width           =   345
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   0
         Left            =   1560
         TabIndex        =   67
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   1
         Left            =   1560
         TabIndex        =   66
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   2
         Left            =   1560
         TabIndex        =   65
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   3
         Left            =   1560
         TabIndex        =   64
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   4
         Left            =   1560
         TabIndex        =   63
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   5
         Left            =   1560
         TabIndex        =   62
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   6
         Left            =   1560
         TabIndex        =   61
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   7
         Left            =   1560
         TabIndex        =   60
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   8
         Left            =   1560
         TabIndex        =   59
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   9
         Left            =   1560
         TabIndex        =   58
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   10
         Left            =   1560
         TabIndex        =   57
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   11
         Left            =   1560
         TabIndex        =   56
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   12
         Left            =   1560
         TabIndex        =   55
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   13
         Left            =   1560
         TabIndex        =   54
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   14
         Left            =   1560
         TabIndex        =   53
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   15
         Left            =   1560
         TabIndex        =   52
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Volume"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   6
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Index           =   3
         Left            =   2040
         TabIndex        =   51
         Top             =   120
         Width           =   405
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   0
         Left            =   2040
         TabIndex        =   50
         Top             =   360
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   1
         Left            =   2040
         TabIndex        =   49
         Top             =   600
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   2
         Left            =   2040
         TabIndex        =   48
         Top             =   840
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   3
         Left            =   2040
         TabIndex        =   47
         Top             =   1080
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   4
         Left            =   2040
         TabIndex        =   46
         Top             =   1320
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   5
         Left            =   2040
         TabIndex        =   45
         Top             =   1560
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   6
         Left            =   2040
         TabIndex        =   44
         Top             =   1800
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   7
         Left            =   2040
         TabIndex        =   43
         Top             =   2040
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   8
         Left            =   2040
         TabIndex        =   42
         Top             =   2280
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   9
         Left            =   2040
         TabIndex        =   41
         Top             =   2520
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   10
         Left            =   2040
         TabIndex        =   40
         Top             =   2760
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   11
         Left            =   2040
         TabIndex        =   39
         Top             =   3000
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   12
         Left            =   2040
         TabIndex        =   38
         Top             =   3240
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   13
         Left            =   2040
         TabIndex        =   37
         Top             =   3480
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   14
         Left            =   2040
         TabIndex        =   36
         Top             =   3720
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   15
         Left            =   2040
         TabIndex        =   35
         Top             =   3960
         Width           =   315
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Balance"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   6
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Index           =   4
         Left            =   2640
         TabIndex        =   34
         Top             =   120
         Width           =   420
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   2760
         TabIndex        =   33
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   2760
         TabIndex        =   32
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   2760
         TabIndex        =   31
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   2760
         TabIndex        =   30
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   2760
         TabIndex        =   29
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   2760
         TabIndex        =   28
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   2760
         TabIndex        =   27
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   2760
         TabIndex        =   26
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   2760
         TabIndex        =   25
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   2760
         TabIndex        =   24
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   2760
         TabIndex        =   23
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   2760
         TabIndex        =   22
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   2760
         TabIndex        =   21
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   2760
         TabIndex        =   20
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   2760
         TabIndex        =   19
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   2760
         TabIndex        =   18
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Space"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   6
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   150
         Index           =   6
         Left            =   3600
         TabIndex        =   17
         Top             =   120
         Width           =   330
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   3720
         TabIndex        =   16
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   3720
         TabIndex        =   15
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   3720
         TabIndex        =   14
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   3720
         TabIndex        =   13
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   3720
         TabIndex        =   12
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   3720
         TabIndex        =   11
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   3720
         TabIndex        =   10
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   3720
         TabIndex        =   9
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   3720
         TabIndex        =   8
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   3720
         TabIndex        =   7
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   3720
         TabIndex        =   6
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   3720
         TabIndex        =   5
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   3720
         TabIndex        =   4
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   3720
         TabIndex        =   3
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   3720
         TabIndex        =   2
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   3720
         TabIndex        =   1
         Top             =   3960
         Width           =   90
      End
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   0
      Left            =   0
      TabIndex        =   107
      Top             =   0
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   1
      Left            =   720
      TabIndex        =   108
      Top             =   0
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   2
      Left            =   480
      TabIndex        =   109
      Top             =   0
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   3
      Left            =   240
      TabIndex        =   110
      Top             =   0
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   4
      Left            =   0
      TabIndex        =   111
      Top             =   240
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   5
      Left            =   240
      TabIndex        =   112
      Top             =   240
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   6
      Left            =   480
      TabIndex        =   113
      Top             =   240
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   7
      Left            =   720
      TabIndex        =   114
      Top             =   240
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   8
      Left            =   0
      TabIndex        =   115
      Top             =   480
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   9
      Left            =   240
      TabIndex        =   116
      Top             =   480
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   10
      Left            =   480
      TabIndex        =   117
      Top             =   480
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   11
      Left            =   720
      TabIndex        =   118
      Top             =   480
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   12
      Left            =   0
      TabIndex        =   119
      Top             =   720
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   13
      Left            =   240
      TabIndex        =   120
      Top             =   720
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   14
      Left            =   480
      TabIndex        =   121
      Top             =   720
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   15
      Left            =   720
      TabIndex        =   122
      Top             =   720
      Visible         =   0   'False
      Width           =   255
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   0   'False
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   3
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   2000
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   0   'False
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   0   'False
      ShowStatusBar   =   0   'False
      ShowTracker     =   0   'False
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Label3"
      Height          =   195
      Left            =   4440
      TabIndex        =   124
      Top             =   720
      Width           =   480
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Label2"
      Height          =   195
      Left            =   4440
      TabIndex        =   123
      Top             =   360
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      Height          =   195
      Left            =   4440
      TabIndex        =   106
      Top             =   0
      Width           =   480
   End
End
Attribute VB_Name = "mms"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Q1 As String
Dim Q2 As String
Dim Q3 As String
Dim Q4 As String
Dim Q5 As String
Dim Q6 As String
Dim L
Dim QW
Dim W1 As Integer
Dim W2 As Integer
Dim W3 As Integer
Dim W4 As Integer
Dim W5 As Integer
Dim W6 As Integer
Dim W7 As Integer
Dim W8 As Integer
Dim W9 As Integer
Dim W10 As Integer
Dim W11 As Integer
Dim W12 As Integer
Dim W13 As Integer
Dim W14 As Integer
Dim W15 As Integer
Dim W16 As Integer
Dim Q
Dim qq
Dim qqq
Dim qqqq
Dim qqqqq


Sub play()
Dim T As Integer
T = Label2.Caption
T = T + T
Timer1.Interval = T
Form1.Caption = T
End Sub

Sub code()
Close #1
Open glavna.o.FileName For Input As #1
Input #1, Q, qq, qqq, qqqq, qqqqq
Label2.Caption = qqqq
Label3.Caption = qqqqq
For L = 0 To 15
Input #1, Q1, Q2, Q3, Q4, Q5, Q6
S(L).FileName = Q1
On Error Resume Next
From(L).Caption = Q2: S(L).SelectionStart = Q2
Too(L).Caption = Q3: S(L).SelectionEnd = Q3
Sp(L).Caption = Q4: S(L).Rate = Q4
Vl(L).Caption = Q5: S(L).Volume = Q5
Bal(L).Caption = Q6: S(L).Balance = Q6
Next L
Dim E As String
For L = 0 To Label3 - 1
Input #1, W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12, W13, W14, W15, W16
E = W1 & W2 & W3 & W4 & W5 & W6 & W7 & W8 & W9 & W10 & W11 & W12 & W13 & W14 & W15 & W16
List1.AddItem E
Next L
Close #1
End Sub




Private Sub Form_Load()
R.FileName = glavna.o.FileName
Call code
Call play
End Sub

Private Sub I1_Change(Index As Integer)
If I1(Index).Caption = "1" Then S(Index).play
If I1(Index).Caption = "2" Then S(Index).play
If I1(Index).Caption = "0" Then S(Index).Stop: S(M).CurrentPosition = From(Index).Caption
End Sub

Private Sub Label3_Change()
Pbar.Max = Label3 - 1
End Sub


Private Sub Timer1_Timer()
Dim M
Static K
On Error Resume Next
K = K + 1
If K > Label3 - 1 Then Timer1.Interval = 0
Pbar.Value = Abs(K - 2)
'
List1.ListIndex = K
M = List1.Text
I1(0) = Mid$(M, 1, 1)
I1(1) = Mid$(M, 2, 1)
I1(2) = Mid$(M, 3, 1)
I1(3) = Mid$(M, 4, 1)
I1(4) = Mid$(M, 5, 1)
I1(5) = Mid$(M, 6, 1)
I1(6) = Mid$(M, 7, 1)
I1(7) = Mid$(M, 8, 1)
I1(8) = Mid$(M, 9, 1)
I1(9) = Mid$(M, 10, 1)
I1(10) = Mid$(M, 11, 1)
I1(11) = Mid$(M, 12, 1)
I1(12) = Mid$(M, 13, 1)
I1(13) = Mid$(M, 14, 1)
I1(14) = Mid$(M, 15, 1)
I1(15) = Mid$(M, 16, 1)
End Sub
