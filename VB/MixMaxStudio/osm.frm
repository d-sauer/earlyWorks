VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{22D6F304-B0F6-11D0-94AB-0080C74C7E95}#1.0#0"; "MSDXM.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form OSM 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   5010
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7695
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5010
   ScaleWidth      =   7695
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame4 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame4"
      Height          =   4000
      Left            =   7920
      TabIndex        =   157
      Top             =   360
      Width           =   7335
      Begin VB.DriveListBox Drive2 
         BackColor       =   &H00000000&
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
         Height          =   285
         Left            =   6360
         TabIndex        =   161
         Top             =   360
         Width           =   855
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H00000000&
         BorderStyle     =   0  'None
         ForeColor       =   &H000000FF&
         Height          =   210
         Left            =   240
         TabIndex        =   159
         Text            =   "Text2"
         Top             =   120
         Width           =   5655
      End
      Begin VB.ListBox List1 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   3180
         ItemData        =   "OSM.frx":0000
         Left            =   120
         List            =   "OSM.frx":0002
         TabIndex        =   158
         Top             =   600
         Width           =   5895
      End
      Begin VB.Image Image11 
         Height          =   255
         Left            =   3600
         Picture         =   "OSM.frx":0004
         Stretch         =   -1  'True
         ToolTipText     =   "Apply Text"
         Top             =   360
         Width           =   255
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Track :"
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   2400
         TabIndex        =   166
         Top             =   360
         Width           =   510
      End
      Begin VB.Image Image10 
         Height          =   480
         Left            =   6120
         Picture         =   "OSM.frx":030E
         ToolTipText     =   "Change All Path"
         Top             =   840
         Width           =   480
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "16"
         ForeColor       =   &H00C0C0C0&
         Height          =   195
         Left            =   3000
         TabIndex        =   164
         Top             =   360
         Width           =   180
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         ForeColor       =   &H00C0C0C0&
         Height          =   195
         Left            =   1800
         TabIndex        =   163
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Number of Characters :"
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   162
         Top             =   360
         Width           =   1635
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "Change Disk path in :"
         ForeColor       =   &H00C0C0C0&
         Height          =   435
         Left            =   6000
         TabIndex        =   160
         Top             =   120
         Width           =   1290
      End
      Begin VB.Image Image8 
         Height          =   480
         Left            =   6720
         Picture         =   "OSM.frx":0618
         ToolTipText     =   "Back"
         Top             =   3480
         Width           =   480
      End
      Begin VB.Image Image9 
         Height          =   480
         Left            =   6240
         Picture         =   "OSM.frx":0922
         Top             =   3480
         Width           =   480
      End
   End
   Begin VB.Frame Frame3 
      Height          =   615
      Left            =   7800
      TabIndex        =   140
      Top             =   1320
      Width           =   2175
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   156
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   240
         TabIndex        =   155
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   360
         TabIndex        =   154
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   480
         TabIndex        =   153
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   600
         TabIndex        =   152
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   720
         TabIndex        =   151
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   840
         TabIndex        =   150
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   960
         TabIndex        =   149
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   1080
         TabIndex        =   148
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   1200
         TabIndex        =   147
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   1320
         TabIndex        =   146
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   1440
         TabIndex        =   145
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   1560
         TabIndex        =   144
         Top             =   240
         Width           =   90
      End
      Begin VB.Label I1 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   1680
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
         Index           =   15
         Left            =   1920
         TabIndex        =   141
         Top             =   240
         Width           =   90
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "<< Code >>"
      Height          =   255
      Left            =   9960
      TabIndex        =   139
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Frame Frame2 
      Height          =   4215
      Left            =   7800
      TabIndex        =   42
      Top             =   2040
      Width           =   4335
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   3720
         TabIndex        =   138
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   3720
         TabIndex        =   137
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   3720
         TabIndex        =   136
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   3720
         TabIndex        =   135
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   3720
         TabIndex        =   134
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   3720
         TabIndex        =   133
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   3720
         TabIndex        =   132
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   3720
         TabIndex        =   131
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   3720
         TabIndex        =   130
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   3720
         TabIndex        =   129
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   3720
         TabIndex        =   128
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   3720
         TabIndex        =   127
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   3720
         TabIndex        =   126
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   3720
         TabIndex        =   125
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   3720
         TabIndex        =   124
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   3720
         TabIndex        =   123
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   2760
         TabIndex        =   122
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   2760
         TabIndex        =   121
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   2760
         TabIndex        =   120
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   2760
         TabIndex        =   119
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   2760
         TabIndex        =   118
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   2760
         TabIndex        =   117
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   2760
         TabIndex        =   116
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   2760
         TabIndex        =   115
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   2760
         TabIndex        =   114
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   2760
         TabIndex        =   113
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   2760
         TabIndex        =   112
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   2760
         TabIndex        =   111
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   2760
         TabIndex        =   110
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   2760
         TabIndex        =   109
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   2760
         TabIndex        =   108
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   2760
         TabIndex        =   107
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   15
         Left            =   2040
         TabIndex        =   106
         Top             =   3960
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   14
         Left            =   2040
         TabIndex        =   105
         Top             =   3720
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   13
         Left            =   2040
         TabIndex        =   104
         Top             =   3480
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   12
         Left            =   2040
         TabIndex        =   103
         Top             =   3240
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   11
         Left            =   2040
         TabIndex        =   102
         Top             =   3000
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   10
         Left            =   2040
         TabIndex        =   101
         Top             =   2760
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   9
         Left            =   2040
         TabIndex        =   100
         Top             =   2520
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   8
         Left            =   2040
         TabIndex        =   99
         Top             =   2280
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   7
         Left            =   2040
         TabIndex        =   98
         Top             =   2040
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   6
         Left            =   2040
         TabIndex        =   97
         Top             =   1800
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   5
         Left            =   2040
         TabIndex        =   96
         Top             =   1560
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   4
         Left            =   2040
         TabIndex        =   95
         Top             =   1320
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   3
         Left            =   2040
         TabIndex        =   94
         Top             =   1080
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   2
         Left            =   2040
         TabIndex        =   93
         Top             =   840
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   1
         Left            =   2040
         TabIndex        =   92
         Top             =   600
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   0
         Left            =   2040
         TabIndex        =   91
         Top             =   360
         Width           =   315
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   15
         Left            =   1560
         TabIndex        =   90
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   14
         Left            =   1560
         TabIndex        =   89
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   13
         Left            =   1560
         TabIndex        =   88
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   12
         Left            =   1560
         TabIndex        =   87
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   11
         Left            =   1560
         TabIndex        =   86
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   10
         Left            =   1560
         TabIndex        =   85
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   9
         Left            =   1560
         TabIndex        =   84
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   8
         Left            =   1560
         TabIndex        =   83
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   7
         Left            =   1560
         TabIndex        =   82
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   6
         Left            =   1560
         TabIndex        =   81
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   5
         Left            =   1560
         TabIndex        =   80
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   4
         Left            =   1560
         TabIndex        =   79
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   3
         Left            =   1560
         TabIndex        =   78
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   2
         Left            =   1560
         TabIndex        =   77
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   1
         Left            =   1560
         TabIndex        =   76
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   0
         Left            =   1560
         TabIndex        =   75
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   840
         TabIndex        =   74
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   840
         TabIndex        =   73
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   840
         TabIndex        =   72
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   840
         TabIndex        =   71
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   840
         TabIndex        =   70
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   840
         TabIndex        =   69
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   840
         TabIndex        =   68
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   840
         TabIndex        =   67
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   840
         TabIndex        =   66
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   840
         TabIndex        =   65
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   840
         TabIndex        =   64
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   840
         TabIndex        =   63
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   840
         TabIndex        =   62
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   840
         TabIndex        =   61
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   840
         TabIndex        =   60
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   840
         TabIndex        =   59
         Top             =   360
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   120
         TabIndex        =   58
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   120
         TabIndex        =   57
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   120
         TabIndex        =   56
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   120
         TabIndex        =   55
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   120
         TabIndex        =   54
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   120
         TabIndex        =   53
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   120
         TabIndex        =   52
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   120
         TabIndex        =   51
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   120
         TabIndex        =   50
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   120
         TabIndex        =   49
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   120
         TabIndex        =   48
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   120
         TabIndex        =   47
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   120
         TabIndex        =   46
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   45
         Top             =   840
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   44
         Top             =   600
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   43
         Top             =   360
         Width           =   90
      End
   End
   Begin VB.ListBox List2 
      Height          =   255
      ItemData        =   "OSM.frx":11EC
      Left            =   10920
      List            =   "OSM.frx":11EE
      TabIndex        =   41
      Top             =   120
      Width           =   975
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1335
      Left            =   9600
      TabIndex        =   24
      Top             =   120
      Width           =   1335
      Begin MediaPlayerCtl.MediaPlayer S 
         Height          =   255
         Index           =   0
         Left            =   0
         TabIndex        =   25
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   360
         TabIndex        =   26
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   720
         TabIndex        =   27
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   1080
         TabIndex        =   28
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Height          =   285
         Index           =   4
         Left            =   0
         TabIndex        =   29
         Top             =   360
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   360
         TabIndex        =   30
         Top             =   360
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   720
         TabIndex        =   31
         Top             =   360
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   1080
         TabIndex        =   32
         Top             =   360
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         TabIndex        =   33
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   360
         TabIndex        =   34
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   720
         TabIndex        =   35
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   1080
         TabIndex        =   36
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         TabIndex        =   37
         Top             =   1080
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   360
         TabIndex        =   38
         Top             =   1080
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   720
         TabIndex        =   39
         Top             =   1080
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
         Left            =   1080
         TabIndex        =   40
         Top             =   1080
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
         BufferingTime   =   5
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
         PlayCount       =   1
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
   End
   Begin MSComctlLib.ProgressBar Pbar 
      Height          =   135
      Left            =   120
      TabIndex        =   23
      Top             =   4800
      Visible         =   0   'False
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   238
      _Version        =   393216
      Appearance      =   1
      Scrolling       =   1
   End
   Begin VB.Timer TimerP 
      Left            =   11200
      Top             =   1080
   End
   Begin VB.ComboBox Combo1 
      BackColor       =   &H00000000&
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
      Height          =   285
      ItemData        =   "OSM.frx":11F0
      Left            =   5640
      List            =   "OSM.frx":11FD
      TabIndex        =   22
      Top             =   320
      Width           =   1815
   End
   Begin RichTextLib.RichTextBox RB 
      Height          =   615
      Left            =   7800
      TabIndex        =   21
      Top             =   480
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   1085
      _Version        =   393217
      TextRTF         =   $"OSM.frx":1229
   End
   Begin VB.Timer Timer1 
      Left            =   3000
      Top             =   360
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   960
      Locked          =   -1  'True
      TabIndex        =   14
      Top             =   1560
      Width           =   2535
   End
   Begin VB.FileListBox File1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00C0C0C0&
      Height          =   2235
      Left            =   5640
      Pattern         =   "*.MPr;*.MMp"
      TabIndex        =   2
      Top             =   600
      Width           =   1815
   End
   Begin VB.DirListBox Dir1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00C0C0C0&
      Height          =   2115
      Left            =   3600
      TabIndex        =   1
      Top             =   720
      Width           =   1935
   End
   Begin VB.DriveListBox Drive1 
      BackColor       =   &H00000000&
      ForeColor       =   &H00C0C0C0&
      Height          =   315
      Left            =   3600
      TabIndex        =   0
      Top             =   360
      Width           =   1935
   End
   Begin MSComctlLib.ListView ListTS 
      Height          =   1410
      Left            =   240
      TabIndex        =   20
      Top             =   2880
      Width           =   7215
      _ExtentX        =   12726
      _ExtentY        =   2487
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   0   'False
      HideSelection   =   -1  'True
      _Version        =   393217
      Icons           =   "ImageList2"
      SmallIcons      =   "ImageList2"
      ForeColor       =   12632256
      BackColor       =   0
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   7080
      Top             =   4440
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":135D
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   6360
      Top             =   4440
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   10
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":1679
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":1F55
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":2831
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":310D
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":39E9
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":42C5
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":4BA1
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":547D
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":5D59
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OSM.frx":6635
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      Height          =   195
      Left            =   4320
      TabIndex        =   165
      Top             =   4440
      Visible         =   0   'False
      Width           =   90
   End
   Begin VB.Image Image7 
      Height          =   480
      Left            =   240
      Picture         =   "OSM.frx":6F11
      ToolTipText     =   "Change File Parameters"
      Top             =   2400
      Width           =   480
   End
   Begin VB.Image Image6 
      Height          =   480
      Left            =   1080
      Picture         =   "OSM.frx":721B
      Top             =   2280
      Width           =   480
   End
   Begin VB.Image Image5 
      Height          =   480
      Left            =   1680
      Picture         =   "OSM.frx":7AE5
      Top             =   2280
      Width           =   480
   End
   Begin VB.Image Image4 
      Height          =   480
      Left            =   3120
      Picture         =   "OSM.frx":83AF
      Top             =   2400
      Width           =   480
   End
   Begin VB.Image Image3 
      Height          =   480
      Left            =   3600
      Picture         =   "OSM.frx":87F1
      Top             =   4360
      Width           =   480
   End
   Begin VB.Label Label9 
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
      Left            =   7320
      TabIndex        =   19
      Top             =   0
      Width           =   180
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Max Row :"
      ForeColor       =   &H00C0C0C0&
      Height          =   195
      Index           =   7
      Left            =   2280
      TabIndex        =   18
      Top             =   2280
      Visible         =   0   'False
      Width           =   765
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   2760
      TabIndex        =   17
      Top             =   2520
      Visible         =   0   'False
      Width           =   90
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   1080
      TabIndex        =   16
      Top             =   360
      Width           =   45
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "File Name :"
      ForeColor       =   &H00C0C0C0&
      Height          =   195
      Index           =   6
      Left            =   240
      TabIndex        =   15
      Top             =   360
      Width           =   795
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "File Path :"
      ForeColor       =   &H00C0C0C0&
      Height          =   195
      Index           =   5
      Left            =   240
      TabIndex        =   13
      Top             =   1560
      Width           =   705
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   960
      TabIndex        =   12
      Top             =   1320
      Width           =   45
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "File Size :"
      ForeColor       =   &H00C0C0C0&
      Height          =   195
      Index           =   4
      Left            =   240
      TabIndex        =   11
      Top             =   1320
      Width           =   675
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   840
      TabIndex        =   10
      Top             =   1920
      Width           =   45
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   840
      TabIndex        =   9
      Top             =   1080
      Width           =   45
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   1080
      TabIndex        =   8
      Top             =   840
      Width           =   45
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFFF00&
      Height          =   195
      Left            =   960
      TabIndex        =   7
      Top             =   600
      Width           =   45
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Author :"
      ForeColor       =   &H00C0C0C0&
      Height          =   195
      Index           =   0
      Left            =   240
      TabIndex        =   6
      Top             =   600
      Width           =   555
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Company :"
      ForeColor       =   &H00C0C0C0&
      Height          =   195
      Index           =   1
      Left            =   240
      TabIndex        =   5
      Top             =   840
      Width           =   750
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Date :"
      ForeColor       =   &H00C0C0C0&
      Height          =   195
      Index           =   2
      Left            =   240
      TabIndex        =   4
      Top             =   1080
      Width           =   435
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Qualty :"
      ForeColor       =   &H00C0C0C0&
      Height          =   195
      Index           =   3
      Left            =   240
      TabIndex        =   3
      Top             =   1920
      Width           =   540
   End
   Begin VB.Image Image2 
      Height          =   255
      Left            =   120
      Picture         =   "OSM.frx":90BB
      Top             =   40
      Width           =   3690
   End
   Begin VB.Image Image1 
      Height          =   4995
      Left            =   0
      Picture         =   "OSM.frx":AE15
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7725
   End
End
Attribute VB_Name = "OSM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim LLL As ListItem
Dim Kk As String
Dim Mo As POINTAPI
Dim A
Dim N
Dim P
Dim XX
Dim YY
Dim Q
Dim QQ1
Dim G
Dim G1
Dim A1
Dim A2
Dim A3
Dim A4
Dim A5
Dim A6
Dim A7
Dim A8
Dim KKL
'
Dim P1 As Integer
Dim P2 As Integer
Dim P3 As Integer
Dim P4 As Integer
Dim P5 As Integer
Dim P6 As Integer
Dim P7 As Integer
Dim P8 As Integer
Dim P9 As Integer
Dim P10 As Integer
Dim P11 As Integer
Dim P12 As Integer
Dim P13 As Integer
Dim P14 As Integer
Dim P15 As Integer
'
Dim D1 As String
Dim D2 As String
Dim D3 As String
Dim D4 As String
Dim D5 As String
Dim D6 As String
'Dim For play
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
Dim QQ
Dim qqq
Dim qqqq
Dim qqqqq


Private Sub Combo1_Click()
Help2.Label1.Caption = "Show project, record or all file on list."
If Combo1.ListIndex = 0 Then File1.Pattern = "*.MPr"
If Combo1.ListIndex = 1 Then File1.Pattern = "*.MMp"
If Combo1.ListIndex = 2 Then File1.Pattern = "*.MMp;*.MPr"
End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path
End Sub

Private Sub Drive1_Change()
On Error GoTo 10
Dir1.Path = Drive1.Drive
File1.Path = Dir1.Path
Exit Sub
10:
On Error Resume Next
Drive1.Drive = "C:\"
End Sub

Private Sub Drive2_Change()
On Error GoTo 10
Dim OLK As String
Dim PPo As String
OLK = Text2.Text
PPo = Mid$(OLK, 3, Label12)
Text2.Text = Drive2.Drive + PPo
List1.RemoveItem (Label13 - 1)
List1.AddItem Text2.Text, Label13 - 1
Exit Sub
10:
Drive1.Drive = "C:\"
End Sub

Private Sub File1_Click()
G1 = Len(Dir1.Path)
On Error GoTo 10
If G1 > 3 Then
G = Dir1.Path + "\" + File1.FileName
Text1.Text = G
End If
If G1 = 3 Then
G = Dir1.Path + File1.FileName
Text1.Text = G
End If
Label7.Caption = File1.FileName
Label6.Caption = Format$(FileLen(G), "###,###,###,###") + " b"
Timer1.Interval = 2
Label14.Caption = "0"
Exit Sub
10:
End Sub

Private Sub File1_KeyDown(KeyCode As Integer, Shift As Integer)
Dim G
Dim G1
G1 = Len(Dir1.Path)
On Error GoTo 10
If G1 > 3 Then
G = Dir1.Path + "\" + File1.FileName
Text1.Text = G
End If
If G1 = 3 Then
G = Dir1.Path + File1.FileName
Text1.Text = G
End If
Label7.Caption = File1.FileName
Exit Sub
10:
End Sub

Private Sub File1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File list."
End Sub

Private Sub Form_Load()
On Error Resume Next
ListTS.ColumnHeaders.Add , , "Track", , 0
ListTS.ColumnHeaders.Add , , "Path", , 0
ListTS.ColumnHeaders.Add , , "Play From", , 0
ListTS.ColumnHeaders.Add , , "Play To", , 0
ListTS.ColumnHeaders.Add , , "Play Speed", , 0
ListTS.ColumnHeaders.Add , , "Volume", , 0
ListTS.ColumnHeaders.Add , , "Balance", , 0
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
QQ1 = 1
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If QQ1 = 1 Then
GetCursorPos Mo
OSM.Left = (P * Mo.X) - XX
OSM.Top = (P * Mo.Y) - YY
End If
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
QQ1 = 0
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub I1_Change(Index As Integer)
On Error Resume Next
If I1(Index).Caption = "1" Then S(Index).Play
If I1(Index).Caption = "2" Then S(Index).Play
If I1(Index).Caption = "0" Then S(Index).Stop: S(M).CurrentPosition = From(Index).Caption
End Sub

Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
QQ1 = 1
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If QQ1 = 1 Then
GetCursorPos Mo
OSM.Left = (P * Mo.X) - XX
OSM.Top = (P * Mo.Y) - YY
End If

End Sub

Private Sub Image1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
QQ1 = 0
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub


Private Sub Image10_Click()
OpenF.Label6.Caption = "1"
OpenF.Show , Me
End Sub

Private Sub Image10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Change all file path to insert track."
End Sub

Private Sub Image11_Click()
List1.RemoveItem (Label13 - 1)
List1.AddItem Text2.Text, (Label13 - 1)
Label12.Caption = Len(Text2.Text)
End Sub

Private Sub Image11_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Apply change text."
End Sub

Private Sub Image3_Click()
On Error Resume Next
TimerP.Interval = 0
PBar.Visible = False
Dim KKL
For KKL = 0 To 15
S(KKL).Stop
S(KKL).CurrentPosition = 0
S(KKL).FileName = ""
List2.Clear
Next KKL

G = Dir1.Path + "\" + File1.FileName
Close #1
If Label14.Caption = "1" Then
Call L4_1
End If

If Label14.Caption = "0" Then
Call L4_0
End If
End Sub

Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image3.Picture = ImageList1.ListImages(2).Picture
A = 1
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Open Project or open project from record."
If A = 1 Then
If X > 0 Then Image3.Picture = ImageList1.ListImages(2).Picture
If Y > 0 Then Image3.Picture = ImageList1.ListImages(2).Picture
If X > 420 Then Image3.Picture = ImageList1.ListImages(1).Picture
If Y > 420 Then Image3.Picture = ImageList1.ListImages(1).Picture
If X < 0 Then Image3.Picture = ImageList1.ListImages(1).Picture
If Y < 0 Then Image3.Picture = ImageList1.ListImages(1).Picture
End If
End Sub

Private Sub Image3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image3.Picture = ImageList1.ListImages(2).Picture Then
End If
Image3.Picture = ImageList1.ListImages(1).Picture
A = 0
End Sub

Private Sub Image4_Click()
On Error Resume Next
If File1.FileName = "" Then GoTo 10
Dim OP
Dim PPo As String
PPo = "Are your sure to Delete " + File1.FileName
OP = MsgBox(PPo, 4, "Warning")
Select Case OP
Case 6
PPo = Dir1.Path + "\" + File1.FileName
Kill PPo
Me.Refresh
File1.Refresh
Case 7
Me.Refresh
End Select
Exit Sub
10:
End Sub

Private Sub Image7_Click()
Frame4.Top = 300
Frame4.Left = 240
End Sub

Private Sub Image7_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Change file path on list or file name on list in this Project or Record."
End Sub

Private Sub Image8_Click()
Label14.Caption = "0"
Frame4.Left = 7800
Frame4.Top = 300
End Sub

Private Sub Image8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Back, dont apply"
End Sub

Private Sub Label1_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Information."
End Sub


Private Sub Label10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Change yust disk to insert track."
End Sub

Private Sub Label12_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Number of Characters."
End Sub

Private Sub Label13_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Number of insert track."
End Sub

Private Sub Label8_Click()
PBar.Max = Label8
End Sub

Private Sub Label9_Click()
TimerP.Interval = 0
PBar.Visible = False
Dim KKL
For KKL = 0 To 15
S(KKL).Stop
S(KKL).CurrentPosition = 0
S(KKL).FileName = ""
List2.Clear
Next KKL
Unload Me
End Sub
Private Sub List3_Click()
Text2.Text = List3.List(List3.ListIndex)
End Sub

Private Sub Label9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Close."
End Sub

Private Sub List1_Click()
Dim ROV As Integer
Dim LP As Integer
Label13.Caption = List1.ListIndex + 1
Text2.Text = List1.List(List1.ListIndex)
Label12.Caption = Len(List1.List(List1.ListIndex))
End Sub

Private Sub Text2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Change path or text with keyboard."
End Sub

Private Sub Timer1_Timer()
On Error Resume Next
Timer1.Interval = 0
ListTS.ListItems.Clear
List1.Clear
G = Dir1.Path + "\" + File1.FileName
Close #1
Open G For Input As #1
Input #1, A1, A2, A3, A4, A5
Label2.Caption = A1
Label3.Caption = A2
Label4.Caption = A3
Label5.Caption = A4
Label8.Caption = A5
For N = 0 To 15
Input #1, D1, D2, D3, D4, D5, D6
Kk = N
Kk = "Track " + Kk
Set LLL = ListTS.ListItems.Add(, , Kk, 1, 1)
LLL.SubItems(1) = D1
LLL.SubItems(2) = D2
LLL.SubItems(3) = D3
LLL.SubItems(4) = D4
LLL.SubItems(5) = D5
LLL.SubItems(6) = D6
List1.AddItem D1
Next N
Close #1
End Sub

Private Sub Image6_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image6.Picture = ImageList1.ListImages(10).Picture
A = 1
End Sub

Private Sub Image6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Play Mix."
If A = 1 Then
If X > 0 Then Image6.Picture = ImageList1.ListImages(10).Picture
If Y > 0 Then Image6.Picture = ImageList1.ListImages(10).Picture
If X > 420 Then Image6.Picture = ImageList1.ListImages(9).Picture
If Y > 420 Then Image6.Picture = ImageList1.ListImages(9).Picture
If X < 0 Then Image6.Picture = ImageList1.ListImages(9).Picture
If Y < 0 Then Image6.Picture = ImageList1.ListImages(9).Picture
End If
End Sub

Private Sub Image6_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
If Image6.Picture = ImageList1.ListImages(10).Picture Then
Call Command2_Click
PBar.Visible = True
PBar.Max = Abs(Label8 - 1)
Dim T As Integer
T = Label5.Caption
T = T + T
TimerP.Interval = T
Form1.Caption = T
Call P_L
End If
Image6.Picture = ImageList1.ListImages(9).Picture
A = 0
End Sub

Private Sub Image5_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image5.Picture = ImageList1.ListImages(8).Picture
A = 1
End Sub

Private Sub Image5_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Stop Mix."
If A = 1 Then
If X > 0 Then Image5.Picture = ImageList1.ListImages(8).Picture
If Y > 0 Then Image5.Picture = ImageList1.ListImages(8).Picture
If X > 420 Then Image5.Picture = ImageList1.ListImages(7).Picture
If Y > 420 Then Image5.Picture = ImageList1.ListImages(7).Picture
If X < 0 Then Image5.Picture = ImageList1.ListImages(7).Picture
If Y < 0 Then Image5.Picture = ImageList1.ListImages(7).Picture
End If
End Sub

Private Sub Image5_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image5.Picture = ImageList1.ListImages(8).Picture Then
TimerP.Interval = 0
PBar.Visible = False
For KKL = 0 To 15
S(KKL).Stop
S(KKL).CurrentPosition = 0
S(KKL).FileName = ""
List2.Clear
Next KKL
End If
Image5.Picture = ImageList1.ListImages(7).Picture
A = 0
End Sub

Sub P_L()

End Sub

Private Sub TimerP_Timer()
Dim M
Static K
On Error Resume Next
K = K + 1
If K > Label8 - 1 Then
TimerP.Interval = 0
PBar.Visible = False
Dim KKL
For KKL = 0 To 15
S(KKL).Stop
S(KKL).CurrentPosition = 0
S(KKL).FileName = ""
List2.Clear
Next KKL
End If

PBar.Value = Abs(K - 2)
'
List2.ListIndex = K
M = List2.Text
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
Private Sub Command2_Click()
Close #1
Open Text1 For Input As #1
Input #1, Q, QQ, qqq, qqqq, qqqqq
Label5.Caption = qqqq
Label8.Caption = qqqqq
For L = 0 To 15
Input #1, Q1, Q2, Q3, Q4, Q5, Q6
On Error Resume Next
S(L).FileName = Q1
From(L).Caption = Q2: S(L).SelectionStart = Q2
Too(L).Caption = Q3: S(L).SelectionEnd = Q3
Sp(L).Caption = Q4: S(L).Rate = Q4
Vl(L).Caption = Q5: S(L).Volume = Q5
Bal(L).Caption = Q6: S(L).Balance = Q6
Next L
Dim E As String
For L = 0 To Label8 - 1
Input #1, W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12, W13, W14, W15, W16
E = W1 & W2 & W3 & W4 & W5 & W6 & W7 & W8 & W9 & W10 & W11 & W12 & W13 & W14 & W15 & W16
List2.AddItem E
Next L
Close #1
End Sub

Private Sub Image9_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image9.Picture = ImageList1.ListImages(2).Picture
A = 1
End Sub

Private Sub Image9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Apply - Ok"
If A = 1 Then
If X > 0 Then Image9.Picture = ImageList1.ListImages(2).Picture
If Y > 0 Then Image9.Picture = ImageList1.ListImages(2).Picture
If X > 420 Then Image9.Picture = ImageList1.ListImages(1).Picture
If Y > 420 Then Image9.Picture = ImageList1.ListImages(1).Picture
If X < 0 Then Image9.Picture = ImageList1.ListImages(1).Picture
If Y < 0 Then Image9.Picture = ImageList1.ListImages(1).Picture
End If
End Sub

Private Sub Image9_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image9.Picture = ImageList1.ListImages(2).Picture Then
Label14.Caption = "1"
Frame4.Left = 7800
Frame4.Top = 300
End If
Image9.Picture = ImageList1.ListImages(1).Picture
A = 0
End Sub

Sub L4_0()
Open G For Input As #1
Input #1, A1, A2, A3, A4, A5
Label2.Caption = A1
Label3.Caption = A2
Label4.Caption = A3
Label5.Caption = A4
Label8.Caption = A5
For N = 0 To 15
Input #1, D1, D2, D3, D4, D5, D6
GLF.S(N).FileName = D1
GLF.From(N).Caption = D2
GLF.Too(N).Caption = D3
GLF.Sp(N).Caption = D4
GLF.Vl(N).Caption = D5
GLF.Bal(N).Caption = D6
Next N
Close #1
List1.Clear
ListTS.ListItems.Clear
Unload Me
End Sub

Sub L4_1()
Open G For Input As #1
Input #1, A1, A2, A3, A4, A5
Label2.Caption = A1
Label3.Caption = A2
Label4.Caption = A3
Label5.Caption = A4
Label8.Caption = A5
For N = 0 To 15
Input #1, D1, D2, D3, D4, D5, D6
GLF.S(N).FileName = List1.List(N)
GLF.From(N).Caption = D2
GLF.Too(N).Caption = D3
GLF.Sp(N).Caption = D4
GLF.Vl(N).Caption = D5
GLF.Bal(N).Caption = D6
Next N
Close #1
List1.Clear
ListTS.ListItems.Clear
Unload Me
End Sub
