VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{22D6F304-B0F6-11D0-94AB-0080C74C7E95}#1.0#0"; "MSDXM.OCX"
Begin VB.Form GLF 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12000
   Icon            =   "GLF.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer3 
      Left            =   960
      Top             =   600
   End
   Begin VB.Timer Timer2 
      Left            =   10080
      Top             =   8280
   End
   Begin MSComctlLib.ImageList ImageList3 
      Left            =   5880
      Top             =   5760
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   782
      ImageHeight     =   571
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":0BC2
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame2 
      Caption         =   "SaveTrk"
      Height          =   975
      Left            =   480
      TabIndex        =   141
      Top             =   6480
      Visible         =   0   'False
      Width           =   1215
      Begin VB.Timer RC 
         Left            =   720
         Top             =   240
      End
      Begin VB.Label SSS 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Left            =   120
         TabIndex        =   145
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "C:\"
         Height          =   195
         Left            =   360
         TabIndex        =   144
         Top             =   600
         Width           =   225
      End
      Begin VB.Label R 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "1"
         Height          =   195
         Left            =   600
         TabIndex        =   143
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Q 
         AutoSize        =   -1  'True
         Caption         =   "10"
         Height          =   195
         Left            =   120
         TabIndex        =   142
         ToolTipText     =   "Kvaliteta"
         Top             =   360
         Width           =   180
      End
   End
   Begin VB.Timer Timer1 
      Left            =   360
      Top             =   600
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   5760
      Top             =   6480
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   5
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":8466
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":8D42
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":961E
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":9EFA
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":A7D6
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame1 
      Height          =   4215
      Left            =   13000
      TabIndex        =   20
      Top             =   3360
      Width           =   4335
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   3720
         TabIndex        =   139
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   3720
         TabIndex        =   138
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   3720
         TabIndex        =   137
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   3720
         TabIndex        =   136
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   3720
         TabIndex        =   135
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   3720
         TabIndex        =   134
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   3720
         TabIndex        =   133
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   3720
         TabIndex        =   132
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   3720
         TabIndex        =   131
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   3720
         TabIndex        =   130
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   3720
         TabIndex        =   129
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   3720
         TabIndex        =   128
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   3720
         TabIndex        =   127
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   3720
         TabIndex        =   126
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   3720
         TabIndex        =   125
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Space 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   3720
         TabIndex        =   124
         Top             =   360
         Width           =   90
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   15
         Left            =   3120
         TabIndex        =   123
         Top             =   3960
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   14
         Left            =   3120
         TabIndex        =   122
         Top             =   3720
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   13
         Left            =   3120
         TabIndex        =   121
         Top             =   3480
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   12
         Left            =   3120
         TabIndex        =   120
         Top             =   3240
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   11
         Left            =   3120
         TabIndex        =   119
         Top             =   3000
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   10
         Left            =   3120
         TabIndex        =   118
         Top             =   2760
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   9
         Left            =   3120
         TabIndex        =   117
         Top             =   2520
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   8
         Left            =   3120
         TabIndex        =   116
         Top             =   2280
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   7
         Left            =   3120
         TabIndex        =   115
         Top             =   2040
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   6
         Left            =   3120
         TabIndex        =   114
         Top             =   1800
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   5
         Left            =   3120
         TabIndex        =   113
         Top             =   1560
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   4
         Left            =   3120
         TabIndex        =   112
         Top             =   1320
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   3
         Left            =   3120
         TabIndex        =   111
         Top             =   1080
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   2
         Left            =   3120
         TabIndex        =   110
         Top             =   840
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   1
         Left            =   3120
         TabIndex        =   109
         Top             =   600
         Width           =   360
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "3000"
         Height          =   195
         Index           =   0
         Left            =   3120
         TabIndex        =   108
         Top             =   360
         Width           =   360
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
         TabIndex        =   107
         Top             =   120
         Width           =   330
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Left"
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
         Index           =   5
         Left            =   3120
         TabIndex        =   106
         Top             =   120
         Width           =   210
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   2760
         TabIndex        =   105
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   2760
         TabIndex        =   104
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   2760
         TabIndex        =   103
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   2760
         TabIndex        =   102
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   2760
         TabIndex        =   101
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   2760
         TabIndex        =   100
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   2760
         TabIndex        =   99
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   2760
         TabIndex        =   98
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   2760
         TabIndex        =   97
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   2760
         TabIndex        =   96
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   2760
         TabIndex        =   95
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   2760
         TabIndex        =   94
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   2760
         TabIndex        =   93
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   2760
         TabIndex        =   92
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   2760
         TabIndex        =   91
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Bal 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   2760
         TabIndex        =   90
         Top             =   360
         Width           =   90
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
         TabIndex        =   89
         Top             =   120
         Width           =   420
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   15
         Left            =   2040
         TabIndex        =   88
         Top             =   3960
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   14
         Left            =   2040
         TabIndex        =   87
         Top             =   3720
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   13
         Left            =   2040
         TabIndex        =   86
         Top             =   3480
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   12
         Left            =   2040
         TabIndex        =   85
         Top             =   3240
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   11
         Left            =   2040
         TabIndex        =   84
         Top             =   3000
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   10
         Left            =   2040
         TabIndex        =   83
         Top             =   2760
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   9
         Left            =   2040
         TabIndex        =   82
         Top             =   2520
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   8
         Left            =   2040
         TabIndex        =   81
         Top             =   2280
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   7
         Left            =   2040
         TabIndex        =   80
         Top             =   2040
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   6
         Left            =   2040
         TabIndex        =   79
         Top             =   1800
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   5
         Left            =   2040
         TabIndex        =   78
         Top             =   1560
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   4
         Left            =   2040
         TabIndex        =   77
         Top             =   1320
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   3
         Left            =   2040
         TabIndex        =   76
         Top             =   1080
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   2
         Left            =   2040
         TabIndex        =   75
         Top             =   840
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   1
         Left            =   2040
         TabIndex        =   74
         Top             =   600
         Width           =   315
      End
      Begin VB.Label Vl 
         AutoSize        =   -1  'True
         Caption         =   "-600"
         Height          =   195
         Index           =   0
         Left            =   2040
         TabIndex        =   73
         Top             =   360
         Width           =   315
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
         TabIndex        =   72
         Top             =   120
         Width           =   405
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   15
         Left            =   1560
         TabIndex        =   71
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   14
         Left            =   1560
         TabIndex        =   70
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   13
         Left            =   1560
         TabIndex        =   69
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   12
         Left            =   1560
         TabIndex        =   68
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   11
         Left            =   1560
         TabIndex        =   67
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   10
         Left            =   1560
         TabIndex        =   66
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   9
         Left            =   1560
         TabIndex        =   65
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   8
         Left            =   1560
         TabIndex        =   64
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   7
         Left            =   1560
         TabIndex        =   63
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   6
         Left            =   1560
         TabIndex        =   62
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   5
         Left            =   1560
         TabIndex        =   61
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   4
         Left            =   1560
         TabIndex        =   60
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   3
         Left            =   1560
         TabIndex        =   59
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   2
         Left            =   1560
         TabIndex        =   58
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   1
         Left            =   1560
         TabIndex        =   57
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Sp 
         AutoSize        =   -1  'True
         Caption         =   "1"
         Height          =   195
         Index           =   0
         Left            =   1560
         TabIndex        =   56
         Top             =   360
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
         TabIndex        =   55
         Top             =   120
         Width           =   345
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   840
         TabIndex        =   54
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   840
         TabIndex        =   53
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   840
         TabIndex        =   52
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   840
         TabIndex        =   51
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   840
         TabIndex        =   50
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   840
         TabIndex        =   49
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   840
         TabIndex        =   48
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   840
         TabIndex        =   47
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   840
         TabIndex        =   46
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   840
         TabIndex        =   45
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   840
         TabIndex        =   44
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   840
         TabIndex        =   43
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   840
         TabIndex        =   42
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   840
         TabIndex        =   41
         Top             =   840
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   840
         TabIndex        =   40
         Top             =   600
         Width           =   90
      End
      Begin VB.Label Too 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   840
         TabIndex        =   39
         Top             =   360
         Width           =   90
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
         TabIndex        =   38
         Top             =   120
         Width           =   150
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
         TabIndex        =   37
         Top             =   120
         Width           =   285
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   15
         Left            =   120
         TabIndex        =   36
         Top             =   3960
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   14
         Left            =   120
         TabIndex        =   35
         Top             =   3720
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   13
         Left            =   120
         TabIndex        =   34
         Top             =   3480
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   12
         Left            =   120
         TabIndex        =   33
         Top             =   3240
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   11
         Left            =   120
         TabIndex        =   32
         Top             =   3000
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   10
         Left            =   120
         TabIndex        =   31
         Top             =   2760
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   9
         Left            =   120
         TabIndex        =   30
         Top             =   2520
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   8
         Left            =   120
         TabIndex        =   29
         Top             =   2280
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   7
         Left            =   120
         TabIndex        =   28
         Top             =   2040
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   6
         Left            =   120
         TabIndex        =   27
         Top             =   1800
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   120
         TabIndex        =   26
         Top             =   1560
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   120
         TabIndex        =   25
         Top             =   1320
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   120
         TabIndex        =   24
         Top             =   1080
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   23
         Top             =   840
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   22
         Top             =   600
         Width           =   90
      End
      Begin VB.Label From 
         AutoSize        =   -1  'True
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   21
         Top             =   360
         Width           =   90
      End
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   5040
      Top             =   7050
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   29
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":B0B2
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":B3CE
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":B6EA
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":BA06
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":BD22
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":C5FE
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":CEDA
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":D7B6
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":E692
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":F56E
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":FE4A
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":10726
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":11002
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":118DE
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":121BA
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":12A96
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":13372
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":13C4E
            Key             =   ""
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":1452A
            Key             =   ""
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":14E06
            Key             =   ""
         EndProperty
         BeginProperty ListImage21 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":156E2
            Key             =   ""
         EndProperty
         BeginProperty ListImage22 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":15FBE
            Key             =   ""
         EndProperty
         BeginProperty ListImage23 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":1689A
            Key             =   ""
         EndProperty
         BeginProperty ListImage24 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":17176
            Key             =   ""
         EndProperty
         BeginProperty ListImage25 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":17A52
            Key             =   ""
         EndProperty
         BeginProperty ListImage26 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":1832E
            Key             =   ""
         EndProperty
         BeginProperty ListImage27 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":1864A
            Key             =   ""
         EndProperty
         BeginProperty ListImage28 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":18966
            Key             =   ""
         EndProperty
         BeginProperty ListImage29 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "GLF.frx":18C82
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Povratak 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "<"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   360
      Left            =   10920
      TabIndex        =   165
      Top             =   200
      Width           =   165
   End
   Begin VB.Label POMOC 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   360
      Left            =   11170
      TabIndex        =   164
      Top             =   210
      Width           =   150
   End
   Begin VB.Label Izlaz 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "×"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   360
      Left            =   11400
      TabIndex        =   163
      Top             =   200
      Width           =   165
   End
   Begin MediaPlayerCtl.MediaPlayer S 
      Height          =   255
      Index           =   0
      Left            =   5160
      TabIndex        =   1
      Top             =   960
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
      Left            =   5400
      TabIndex        =   2
      Top             =   960
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
      Left            =   5640
      TabIndex        =   3
      Top             =   960
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
      Left            =   5880
      TabIndex        =   4
      Top             =   960
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
      Left            =   6120
      TabIndex        =   5
      Top             =   960
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
      Left            =   5160
      TabIndex        =   6
      Top             =   1200
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
      Left            =   5400
      TabIndex        =   7
      Top             =   1200
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
      Left            =   5640
      TabIndex        =   8
      Top             =   1200
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
      Left            =   5880
      TabIndex        =   9
      Top             =   1200
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
      Left            =   6120
      TabIndex        =   10
      Top             =   1200
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
      Left            =   5160
      TabIndex        =   11
      Top             =   1440
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
      Left            =   5400
      TabIndex        =   12
      Top             =   1440
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
      Left            =   5640
      TabIndex        =   13
      Top             =   1440
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
      Left            =   5880
      TabIndex        =   14
      Top             =   1440
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
      Left            =   6120
      TabIndex        =   15
      Top             =   1440
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
      Left            =   5160
      TabIndex        =   16
      Top             =   1680
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
   Begin VB.Label TMI 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "21:55"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   165
      Left            =   11265
      TabIndex        =   162
      Top             =   8325
      Width           =   300
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "3"
      Height          =   195
      Index           =   15
      Left            =   9240
      TabIndex        =   161
      Top             =   2880
      Width           =   90
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "9"
      Height          =   195
      Index           =   14
      Left            =   9240
      TabIndex        =   160
      Top             =   2385
      Width           =   90
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "7"
      Height          =   195
      Index           =   13
      Left            =   8700
      TabIndex        =   159
      Top             =   2385
      Width           =   90
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      Height          =   195
      Index           =   12
      Left            =   8700
      TabIndex        =   158
      Top             =   2880
      Width           =   90
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "2"
      Height          =   195
      Index           =   11
      Left            =   8985
      TabIndex        =   157
      Top             =   3000
      Width           =   90
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "8"
      Height          =   195
      Index           =   10
      Left            =   8985
      TabIndex        =   156
      Top             =   2280
      Width           =   90
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "4"
      Height          =   195
      Index           =   9
      Left            =   8595
      TabIndex        =   155
      Top             =   2640
      Width           =   90
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "6"
      Height          =   195
      Index           =   8
      Left            =   9345
      TabIndex        =   154
      Top             =   2640
      Width           =   90
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "C"
      Height          =   195
      Index           =   7
      Left            =   3220
      TabIndex        =   153
      Top             =   2880
      Width           =   105
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Y"
      Height          =   195
      Index           =   6
      Left            =   2685
      TabIndex        =   152
      Top             =   2880
      Width           =   105
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "R"
      Height          =   195
      Index           =   5
      Left            =   3225
      TabIndex        =   151
      Top             =   2385
      Width           =   120
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "W"
      Height          =   195
      Index           =   4
      Left            =   2685
      TabIndex        =   150
      Top             =   2385
      Width           =   165
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "F"
      Height          =   195
      Index           =   3
      Left            =   3345
      TabIndex        =   149
      Top             =   2640
      Width           =   90
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "A"
      Height          =   195
      Index           =   2
      Left            =   2590
      TabIndex        =   148
      Top             =   2640
      Width           =   105
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "E"
      Height          =   195
      Index           =   1
      Left            =   2950
      TabIndex        =   147
      Top             =   2280
      Width           =   105
   End
   Begin VB.Label K 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      Height          =   195
      Index           =   0
      Left            =   2950
      TabIndex        =   146
      Top             =   3000
      Width           =   105
   End
   Begin VB.Image Image5 
      Height          =   255
      Left            =   0
      Top             =   0
      Width           =   255
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Height          =   195
      Left            =   2520
      TabIndex        =   140
      Top             =   11000
      Visible         =   0   'False
      Width           =   405
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "0"
      Height          =   195
      Left            =   240
      TabIndex        =   19
      Top             =   7560
      Visible         =   0   'False
      Width           =   90
   End
   Begin VB.Image Image4 
      Height          =   480
      Left            =   8280
      Picture         =   "GLF.frx":18F9E
      Top             =   8160
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image Image3 
      Height          =   480
      Left            =   9240
      Picture         =   "GLF.frx":192A8
      Top             =   9000
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image InfoS 
      Height          =   480
      Left            =   4200
      Picture         =   "GLF.frx":195B2
      ToolTipText     =   "Sound Information"
      Top             =   7680
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image OpenM 
      Height          =   480
      Left            =   10080
      Picture         =   "GLF.frx":19E7C
      ToolTipText     =   "Open Mix"
      Top             =   7680
      Width           =   480
   End
   Begin VB.Image SaveS 
      Height          =   480
      Left            =   9360
      Picture         =   "GLF.frx":1A746
      ToolTipText     =   "Save Mix "
      Top             =   7680
      Width           =   480
   End
   Begin VB.Image SaveM 
      Height          =   480
      Left            =   8640
      Picture         =   "GLF.frx":1B010
      ToolTipText     =   "Save Mix Parameters"
      Top             =   7680
      Width           =   480
   End
   Begin VB.Image Remove 
      Height          =   480
      Left            =   3720
      Picture         =   "GLF.frx":1B8DA
      ToolTipText     =   "Remove Sound"
      Top             =   7680
      Width           =   480
   End
   Begin VB.Image OptionN 
      Height          =   480
      Left            =   3120
      Picture         =   "GLF.frx":1C1A4
      ToolTipText     =   "Track Options"
      Top             =   7680
      Width           =   480
   End
   Begin VB.Image InsertS 
      Height          =   480
      Left            =   2400
      Picture         =   "GLF.frx":1CA6E
      ToolTipText     =   "Insert Sound"
      Top             =   7680
      Width           =   480
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "     "
      ForeColor       =   &H00404040&
      Height          =   195
      Left            =   360
      TabIndex        =   18
      Top             =   8400
      Width           =   225
   End
   Begin VB.Label NTrk 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Track 1"
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   6.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   165
      Left            =   360
      TabIndex        =   17
      Top             =   7800
      Width           =   435
   End
   Begin VB.Image RecordD 
      Height          =   480
      Left            =   6480
      Picture         =   "GLF.frx":1D338
      ToolTipText     =   "Record"
      Top             =   7680
      Width           =   480
   End
   Begin VB.Image StopP 
      Height          =   480
      Left            =   5040
      Picture         =   "GLF.frx":1DC02
      ToolTipText     =   "Stop"
      Top             =   7680
      Width           =   480
   End
   Begin VB.Image PlaYY 
      Height          =   720
      Left            =   5640
      Picture         =   "GLF.frx":1E4CC
      Top             =   7680
      Width           =   720
   End
   Begin VB.Image Info 
      Height          =   480
      Left            =   10800
      Picture         =   "GLF.frx":1F396
      ToolTipText     =   "Information"
      Top             =   7680
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   15
      Left            =   9720
      Picture         =   "GLF.frx":1FC60
      Top             =   3480
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   14
      Left            =   10080
      Picture         =   "GLF.frx":1FF6A
      Top             =   2520
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   13
      Left            =   9720
      Picture         =   "GLF.frx":20274
      Top             =   1500
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   12
      Left            =   8760
      Picture         =   "GLF.frx":2057E
      Top             =   1080
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   11
      Left            =   7800
      Picture         =   "GLF.frx":20888
      Top             =   1500
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   10
      Left            =   7440
      Picture         =   "GLF.frx":20B92
      Top             =   2520
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   9
      Left            =   7800
      Picture         =   "GLF.frx":20E9C
      Top             =   3480
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   8
      Left            =   8760
      Picture         =   "GLF.frx":211A6
      Top             =   3960
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   7
      Left            =   3700
      Picture         =   "GLF.frx":214B0
      Top             =   3480
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   6
      Left            =   4100
      Picture         =   "GLF.frx":217BA
      Top             =   2520
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   5
      Left            =   3700
      Picture         =   "GLF.frx":21AC4
      Top             =   1500
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   4
      Left            =   2760
      Picture         =   "GLF.frx":21DCE
      Top             =   1080
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   3
      Left            =   1800
      Picture         =   "GLF.frx":220D8
      Top             =   1500
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   2
      Left            =   1400
      Picture         =   "GLF.frx":223E2
      Top             =   2520
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   1
      Left            =   1800
      Picture         =   "GLF.frx":226EC
      Top             =   3480
      Width           =   480
   End
   Begin VB.Image Track 
      Height          =   480
      Index           =   0
      Left            =   2760
      Picture         =   "GLF.frx":229F6
      Top             =   3960
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "00"
      Height          =   195
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Visible         =   0   'False
      Width           =   180
   End
   Begin VB.Image Image2 
      Height          =   3705
      Index           =   1
      Left            =   7200
      Picture         =   "GLF.frx":22D00
      Top             =   900
      Width           =   3615
   End
   Begin VB.Image Image2 
      Height          =   3705
      Index           =   0
      Left            =   1200
      Picture         =   "GLF.frx":4E7CE
      Top             =   900
      Width           =   3615
   End
   Begin VB.Image Image1 
      Height          =   8565
      Left            =   120
      Picture         =   "GLF.frx":7A29C
      Top             =   120
      Width           =   11730
   End
End
Attribute VB_Name = "GLF"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim MakeToPlay
Dim ASD As Integer
Dim IZ 'Izlaz
Dim Hl ' Help - Pomoæ
Dim INF ' Information
Dim PL ' Tipka play
Dim St ' Stop play
Dim REC 'Record
Dim A
Dim INDEXI  As Integer ' Indeksi trenutne trake na koju klikneš - Label2
Dim KC As Integer
Dim FR As Integer
Dim FT As Integer
Dim K1
Dim K2
Dim K3 As Integer
Dim Red As Integer
Dim O As String
Dim WinP As String
Dim SS As Integer
Dim A1 As Integer
Dim A2 As Integer
Dim A3 As Integer
Dim A4 As Integer
Dim A5 As Integer
Dim A6 As Integer
Dim A7 As Integer
Dim A8 As Integer
Dim A9 As Integer
Dim A10 As Integer
Dim A11 As Integer
Dim A12 As Integer
Dim A13 As Integer
Dim A14 As Integer
Dim A15 As Integer
Dim A16 As Integer
Dim WPath As String

Private Sub Form_Activate()
GLF.WindowState = 2
GLF.Refresh
Dim LLL
Dim LLLL
Dim LL
LLL = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch3")
If LLL = 0 Then
For LLLL = 0 To 15
K(LLLL).Visible = False
Next LLLL
End If
If LLL = 1 Then
For LLLL = 0 To 15
K(LLLL).Visible = True
Next LLLL
End If
Image1.Picture = ImageList3.ListImages(1).Picture
Timer3.Interval = 100
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
KC = KeyCode
If MakeToPlay = 1 Then
If KC = 17 Then
For K1 = 0 To 15
K3 = Space(K1).Caption
If K3 = 1 Or K3 = 2 Then S(K1).Mute = True
Next K1
End If
'Left disc
If KC = 49 Or KC = 88 Then Space(0).Caption = "1" ' 1 - X
If KC = 50 Or KC = 89 Then Space(1).Caption = "1" ' 2 - Y
If KC = 51 Or KC = 65 Then Space(2).Caption = "1" ' 3 - A
If KC = 52 Or KC = 87 Then Space(3).Caption = "1" ' 4 - W
If KC = 53 Or KC = 69 Then Space(4).Caption = "1" ' 5 - E
If KC = 54 Or KC = 82 Then Space(5).Caption = "1" ' 6 - R
If KC = 55 Or KC = 70 Then Space(6).Caption = "1" ' 7 - F
If KC = 56 Or KC = 67 Then Space(7).Caption = "1" ' 8 - C
'Right disc
If KC = 98 Or KC = 40 Then Space(8).Caption = "1"   ' 2
If KC = 97 Or KC = 35 Then Space(9).Caption = "1"   ' 1
If KC = 100 Or KC = 37 Then Space(10).Caption = "1" ' 4
If KC = 103 Or KC = 36 Then Space(11).Caption = "1" ' 7
If KC = 104 Or KC = 38 Then Space(12).Caption = "1" ' 8
If KC = 105 Or KC = 33 Then Space(13).Caption = "1" ' 9
If KC = 102 Or KC = 39 Then Space(14).Caption = "1" ' 6
If KC = 99 Or KC = 34 Then Space(15).Caption = "1"  ' 3
'Frezen track
If KC = 32 Then
For FR = 0 To 15
FT = Space(FR).Caption
FT = FT * 2
Space(FR).Caption = FT
Next FR
End If
End If
End Sub



Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
Dim L
KC = KeyCode
If MakeToPlay = 1 Then
If KC = 17 Then
For K1 = 0 To 15
K3 = Space(K1).Caption
If K3 = 1 Or K3 = 2 Then S(K1).Mute = False
Next K1
End If
For L = 0 To 15
'Left disc
If Space(L).Caption = "1" Then
If KC = 49 Or KC = 88 Then Space(0).Caption = "0" ' 1 - X
If KC = 50 Or KC = 89 Then Space(1).Caption = "0" ' 2 - Y
If KC = 51 Or KC = 65 Then Space(2).Caption = "0" ' 3 - A
If KC = 52 Or KC = 87 Then Space(3).Caption = "0" ' 4 - W
If KC = 53 Or KC = 69 Then Space(4).Caption = "0" ' 5 - E
If KC = 54 Or KC = 82 Then Space(5).Caption = "0" ' 6 - R
If KC = 55 Or KC = 70 Then Space(6).Caption = "0" ' 7 - F
If KC = 56 Or KC = 67 Then Space(7).Caption = "0" ' 8 - C
'Right disc
If KC = 98 Or KC = 40 Then Space(8).Caption = "0"   ' 2
If KC = 97 Or KC = 35 Then Space(9).Caption = "0"   ' 1
If KC = 100 Or KC = 37 Then Space(10).Caption = "0" ' 4
If KC = 103 Or KC = 36 Then Space(11).Caption = "0" ' 7
If KC = 104 Or KC = 38 Then Space(12).Caption = "0" ' 8
If KC = 105 Or KC = 33 Then Space(13).Caption = "0" ' 9
If KC = 102 Or KC = 39 Then Space(14).Caption = "0" ' 6
If KC = 99 Or KC = 34 Then Space(15).Caption = "0"  ' 3
S(L).Mute = False
End If
Next L
End If
End Sub

Private Sub Form_Load()
GLF.Width = Screen.Width
GLF.Height = Screen.Height
GLF.WindowState = 2
Image1.Left = Fix(GLF.Width / 100)
Image1.Top = Fix(GLF.Height / 75)
NTrk.Left = Image1.Left + 240
NTrk.Top = Image1.Top + 7680
Label3.Left = NTrk.Left
Label3.Top = NTrk.Top + 600
Image2(0).Top = Image1.Top + 780
Image2(0).Left = Image1.Left + 1070
Image2(1).Top = Image1.Top + 780
Image2(1).Left = Image1.Left + 7065
InsertS.Left = Image1.Left + 2280
InsertS.Top = Image1.Top + 7560
OptionN.Left = InsertS.Left + 720
OptionN.Top = InsertS.Top
Remove.Left = OptionN.Left + 600
Remove.Top = OptionN.Top
InfoS.Left = Remove.Left + 480
InfoS.Top = Remove.Top
StopP.Left = InfoS.Left + 840
StopP.Top = InfoS.Top
PlaYY.Left = StopP.Left + 600
PlaYY.Top = StopP.Top
RecordD.Left = PlaYY.Left + 840
RecordD.Top = PlaYY.Top
SaveM.Left = RecordD.Left + 2160
SaveM.Top = RecordD.Top
SaveS.Left = SaveM.Left + 720
SaveS.Top = SaveM.Top
OpenM.Left = SaveS.Left + 720
OpenM.Top = SaveS.Top
Info.Left = OpenM.Left + 720
Info.Top = OpenM.Top
Image4.Left = Info.Left + 480
Image4.Top = Info.Top + 400
Povratak.Left = Image1.Left + 10740
Povratak.Top = Image1.Top + 150
POMOC.Left = Povratak.Left + 300
POMOC.Top = Povratak.Top
Izlaz.Left = POMOC.Left + 240
Izlaz.Top = POMOC.Top
'Track
'L
Track(0).Left = Image2(0).Left + 1560
Track(0).Top = Image2(0).Top + 3060
Track(1).Left = Image2(0).Left + 600
Track(1).Top = Image2(0).Top + 2580
Track(2).Left = Image2(0).Left + 200
Track(2).Top = Image2(0).Top + 1620
Track(3).Left = Image2(0).Left + 600
Track(3).Top = Image2(0).Top + 600
Track(4).Left = Track(0).Left
Track(4).Top = Image2(0).Top + 180
Track(5).Left = Image2(0).Left + 2500
Track(5).Top = Track(3).Top
Track(6).Left = Image2(0).Left + 2900
Track(6).Top = Track(2).Top
Track(7).Left = Track(5).Left
Track(7).Top = Track(1).Top
'R
Track(8).Top = Track(0).Top
Track(9).Top = Track(1).Top
Track(15).Top = Track(9).Top
Track(10).Top = Track(2).Top
Track(14).Top = Track(2).Top
Track(11).Top = Track(3).Top
Track(13).Top = Track(3).Top
Track(12).Top = Track(4).Top
Track(8).Left = Image2(1).Left + 1575
Track(9).Left = Image2(1).Left + 615
Track(10).Left = Image2(1).Left + 255
Track(11).Left = Track(9).Left
Track(12).Left = Track(8).Left
Track(13).Left = Image2(1).Left + 2535
Track(14).Left = Image2(1).Left + 2895
Track(15).Left = Track(13).Left
INF = 0
Q.Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Q")
WinP = Form1.Label1.Caption
WinP = WinP + "\Temp\MMSR.tmp"
Timer3.Interval = 100
End Sub
Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If INF = 1 Then Image3.Picture = ImageList1.ListImages(27).Picture
End Sub
Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If X > 120 Then INF = 1
If Y > 130 Then INF = 1
If X < 120 Then INF = 0
If Y < 130 Then INF = 0
End Sub
Private Sub Image3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If INF = 1 Then
Image3.Picture = ImageList1.ListImages(26).Picture
INF = 0
End If
Image3.Picture = ImageList1.ListImages(26).Picture
End Sub

Private Sub Image5_Click()
GLF.Refresh
Me.Refresh
End Sub

Private Sub Info_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Info.Picture = ImageList1.ListImages(6).Picture
A = 1
End Sub
Private Sub Info_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If A = 1 Then
If X > 0 Then Info.Picture = ImageList1.ListImages(6).Picture ': A = 2
If Y > 0 Then Info.Picture = ImageList1.ListImages(6).Picture ': A = 2
If X > 420 Then Info.Picture = ImageList1.ListImages(5).Picture ': A = 1
If Y > 420 Then Info.Picture = ImageList1.ListImages(5).Picture ': A = 1
If X < 0 Then Info.Picture = ImageList1.ListImages(5).Picture ': A = 1
If Y < 0 Then Info.Picture = ImageList1.ListImages(5).Picture ': A = 1
End If
End Sub
Private Sub Info_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Info.Picture = ImageList1.ListImages(6).Picture Then

End If
Info.Picture = ImageList1.ListImages(5).Picture
A = 0
End Sub
Private Sub InfoS_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
InfoS.Picture = ImageList1.ListImages(6).Picture
A = 1
End Sub
Private Sub InfoS_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If A = 1 Then
If X > 0 Then InfoS.Picture = ImageList1.ListImages(6).Picture ': A = 2
If Y > 0 Then InfoS.Picture = ImageList1.ListImages(6).Picture ': A = 2
If X > 420 Then InfoS.Picture = ImageList1.ListImages(5).Picture ': A = 1
If Y > 420 Then InfoS.Picture = ImageList1.ListImages(5).Picture ': A = 1
If X < 0 Then InfoS.Picture = ImageList1.ListImages(5).Picture ': A = 1
If Y < 0 Then InfoS.Picture = ImageList1.ListImages(5).Picture ': A = 1
End If
End Sub
Private Sub InfoS_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If InfoS.Picture = ImageList1.ListImages(6).Picture Then

End If
InfoS.Picture = ImageList1.ListImages(5).Picture
A = 0
End Sub


Private Sub InsertS_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
InsertS.Picture = ImageList1.ListImages(21).Picture
OpenF.TRK.Caption = NTrk.Caption
A = 1
End Sub
Private Sub InsertS_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Insert Sound."
If A = 1 Then
If X > 0 Then InsertS.Picture = ImageList1.ListImages(21).Picture ': A = 2
If Y > 0 Then InsertS.Picture = ImageList1.ListImages(21).Picture ': A = 2
If X > 420 Then InsertS.Picture = ImageList1.ListImages(20).Picture ': A = 1
If Y > 420 Then InsertS.Picture = ImageList1.ListImages(20).Picture ': A = 1
If X < 0 Then InsertS.Picture = ImageList1.ListImages(20).Picture ': A = 1
If Y < 0 Then InsertS.Picture = ImageList1.ListImages(20).Picture ': A = 1
End If
End Sub
Private Sub InsertS_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If InsertS.Picture = ImageList1.ListImages(21).Picture Then
OpenF.Show , Me
OpenF.Label6.Caption = "0"
End If
InsertS.Picture = ImageList1.ListImages(20).Picture
A = 0
End Sub
Private Sub Izlaz_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
IZ = 1
Izlaz.ForeColor = QBColor(0)
End Sub
Private Sub Izlaz_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Exit."
IZ = 1
If X < 0 Then IZ = 0
If Y < 0 Then IZ = 0
If X > 150 Then IZ = 0
If Y > 170 Then IZ = 0
End Sub
Private Sub Izlaz_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If IZ = 1 Then
On Error Resume Next
WPath = App.Path + "\" + "snd2.wav"
R = WavPlay(WPath, SND_ASYNC)
WinP = Form1.Label1.Caption
WinP = WinP + "\Temp\MMSR.tmp"
Kill WinP
Dim KQK As String
Dim KQK1 As String
Dim KQK2 As String
Dim L1 As Integer
Dim L2 As Integer
Dim L3 As Integer
KQK = Splash.Label3.Caption
KQK2 = Splash.Label4.Caption
If KQK = "640,480" Then L1 = 640: L2 = 480
If KQK = "720,480" Then L1 = 720: L2 = 480
If KQK = "800,600" Then L1 = 800: L2 = 600
If KQK = "1024,768" Then L1 = 1024: L2 = 768
If KQK = "1280,1024" Then L1 = 1280: L2 = 1024
If KQK2 = "2" Then L3 = 2
If KQK2 = "16" Then L3 = 16
If KQK2 = "24" Then L3 = 24
If KQK2 = "32" Then L3 = 32
If KQK2 = "256" Then L3 = 256
ChangeScreenSettings L1, L2, L3
End
End If
Izlaz.ForeColor = &H808080
End Sub

Private Sub K_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Direct whit Keyboard."
End Sub

Private Sub Label2_Change()
OP.IND = Label2.Caption
End Sub

Private Sub Label3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "File name of sound in Track."
End Sub

Private Sub NTrk_Change()
OpenF.TRK.Caption = NTrk.Caption
End Sub

Private Sub NTrk_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Track Number."
End Sub

Private Sub OpenM_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
OpenM.Picture = ImageList1.ListImages(19).Picture
A = 1
End Sub
Private Sub OpenM_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Open Project or sound list from Recording sound. "
If A = 1 Then
If X > 0 Then OpenM.Picture = ImageList1.ListImages(19).Picture
If Y > 0 Then OpenM.Picture = ImageList1.ListImages(19).Picture
If X > 420 Then OpenM.Picture = ImageList1.ListImages(18).Picture
If Y > 420 Then OpenM.Picture = ImageList1.ListImages(18).Picture
If X < 0 Then OpenM.Picture = ImageList1.ListImages(18).Picture
If Y < 0 Then OpenM.Picture = ImageList1.ListImages(18).Picture
End If
End Sub
Private Sub OpenM_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If OpenM.Picture = ImageList1.ListImages(19).Picture Then
OSM.Show , Me
End If
OpenM.Picture = ImageList1.ListImages(18).Picture
A = 0
End Sub
Private Sub OptionN_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
OptionN.Picture = ImageList1.ListImages(23).Picture
A = 1
End Sub
Private Sub OptionN_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Options on Sound."
If A = 1 Then
If X > 0 Then OptionN.Picture = ImageList1.ListImages(23).Picture
If Y > 0 Then OptionN.Picture = ImageList1.ListImages(23).Picture
If X > 420 Then OptionN.Picture = ImageList1.ListImages(22).Picture
If Y > 420 Then OptionN.Picture = ImageList1.ListImages(22).Picture
If X < 0 Then OptionN.Picture = ImageList1.ListImages(22).Picture
If Y < 0 Then OptionN.Picture = ImageList1.ListImages(22).Picture
End If
End Sub
Private Sub OptionN_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If OptionN.Picture = ImageList1.ListImages(23).Picture Then
OP.Show , Me
INDEXI = Label2.Caption
If Space(INDEXI).Caption = 1 Then OP.Timer2.Interval = 1
End If
OptionN.Picture = ImageList1.ListImages(22).Picture
A = 0
End Sub
Private Sub PlaYY_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If PL = 1 Then PlaYY.Picture = ImageList1.ListImages(9).Picture
End Sub
Private Sub PlaYY_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Start Play Mode."
If X > 0 Then PL = 1
If Y > 0 Then PL = 1
If X > 680 Then PL = 0
If Y > 660 Then PL = 0
If X < 0 Then PL = 0
If Y < 0 Then PL = 0
End Sub
Private Sub PlaYY_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
PlaYY.Picture = ImageList1.ListImages(8).Picture
If PL = 1 Then
Red = 1
PlaYY.Picture = ImageList1.ListImages(9).Picture
MakeToPlay = 1
Dim TTZ
For TTZ = 0 To 15
S(TTZ).PlayCount = 2000
Next TTZ
End If
End Sub
Private Sub POMOC_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Hl = 1
POMOC.ForeColor = QBColor(0)
End Sub
Private Sub POMOC_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Help with mouse."
Hl = 1
If X < 0 Then Hl = 0
If Y < 0 Then Hl = 0
If X > 150 Then Hl = 0
If Y > 170 Then Hl = 0
End Sub
Private Sub POMOC_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
Static TZ
TZ = TZ + 1
If TZ > 1 Then TZ = 0
Select Case TZ
Case 1
If Hl = 1 Then Help2.Show , Me
POMOC.ForeColor = &H808080
WPath = App.Path + "\" + "snd2.wav"
R = WavPlay(WPath, SND_ASYNC)
Help2.Label2.Caption = 1
Case 0
If Hl = 1 Then Help2.Hide
POMOC.ForeColor = &H808080
WPath = App.Path + "\" + "snd3.wav"
R = WavPlay(WPath, SND_ASYNC)
Help2.Label2.Caption = 0
End Select
End Sub
Private Sub Povratak_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
IZ = 1
Povratak.ForeColor = QBColor(0)
End Sub
Private Sub Povratak_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Back"
IZ = 1
If X < 0 Then IZ = 0
If Y < 0 Then IZ = 0
If X > 150 Then IZ = 0
If Y > 170 Then IZ = 0
End Sub
Private Sub Povratak_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If IZ = 1 Then
On Error Resume Next
WPath = App.Path + "\" + "snd3.wav"
R = WavPlay(WPath, SND_ASYNC)
Povratak.ForeColor = &H808080
Help2.Hide
Me.Hide
End If
End Sub

Private Sub RC_Timer()
Red = Red + 1
R.Caption = Red
A1 = Space(0).Caption
A2 = Space(1).Caption
A3 = Space(2).Caption
A4 = Space(3).Caption
A5 = Space(4).Caption
A6 = Space(5).Caption
A7 = Space(6).Caption
A8 = Space(7).Caption
A9 = Space(8).Caption
A10 = Space(9).Caption
A11 = Space(10).Caption
A12 = Space(11).Caption
A13 = Space(12).Caption
A14 = Space(13).Caption
A15 = Space(14).Caption
A16 = Space(15).Caption
Close #1
Open WinP For Append As #1
Write #1, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16
Close #1
End Sub

Private Sub RecordD_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If REC = 1 Then RecordD.Picture = ImageList1.ListImages(13).Picture
End Sub
Private Sub RecordD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Record active Mix or Sound."
If X > 0 Then REC = 1
If Y > 0 Then REC = 1
If X > 420 Then REC = 0
If Y > 420 Then REC = 0
If X < 0 Then REC = 0
If Y < 0 Then REC = 0
End Sub
Private Sub RecordD_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
RecordD.Picture = ImageList1.ListImages(12).Picture
If REC = 1 Then
SSS.Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch4")
RecordD.Picture = ImageList1.ListImages(13).Picture
Q.Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Q")
RC.Interval = Q.Caption
Label7.Caption = WinP
PL = 1
PlaYY.Picture = ImageList1.ListImages(9).Picture
MakeToPlay = 1
End If
End Sub
Private Sub Remove_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Remove.Picture = ImageList1.ListImages(25).Picture
A = 1
End Sub
Private Sub Remove_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Remove Sound From Track."
If A = 1 Then
If X > 0 Then Remove.Picture = ImageList1.ListImages(25).Picture
If Y > 0 Then Remove.Picture = ImageList1.ListImages(25).Picture
If X > 420 Then Remove.Picture = ImageList1.ListImages(24).Picture
If Y > 420 Then Remove.Picture = ImageList1.ListImages(24).Picture
If X < 0 Then Remove.Picture = ImageList1.ListImages(24).Picture
If Y < 0 Then Remove.Picture = ImageList1.ListImages(24).Picture
End If
End Sub
Private Sub Remove_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Remove.Picture = ImageList1.ListImages(25).Picture Then
On Error Resume Next
S(Index).Stop
S(Index).CurrentPosition = 0
S(Label2.Caption).FileName = ""
'S(Label2.Caption).SelectionStart = 0
'S(Label2.Caption).SelectionEnd = 1
S(Label2.Caption).Volume = "-600"
S(Label2.Caption).Balance = 0
S(Label2.Caption).Rate = 1
From(Label2.Caption).Caption = "0"
Too(Label2.Caption).Caption = "0"
Sp(Label2.Caption).Caption = "1"
Vl(Label2.Caption).Caption = "-600"
Bal(Label2.Caption).Caption = "0"
Label5(Label2.Caption).Caption = "3000"
Space(Label2.Caption).Caption = "0"
Track(Label2.Caption).Picture = ImageList1.ListImages(2).Picture
End If
Remove.Picture = ImageList1.ListImages(24).Picture
A = 0
End Sub

Private Sub SaveM_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
SaveM.Picture = ImageList1.ListImages(15).Picture
A = 1
End Sub
Private Sub SaveM_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Save Project, save sound list."
If A = 1 Then
If X > 0 Then SaveM.Picture = ImageList1.ListImages(15).Picture
If Y > 0 Then SaveM.Picture = ImageList1.ListImages(15).Picture
If X > 420 Then SaveM.Picture = ImageList1.ListImages(14).Picture
If Y > 420 Then SaveM.Picture = ImageList1.ListImages(14).Picture
If X < 0 Then SaveM.Picture = ImageList1.ListImages(14).Picture
If Y < 0 Then SaveM.Picture = ImageList1.ListImages(14).Picture
End If
End Sub
Private Sub SaveM_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If SaveM.Picture = ImageList1.ListImages(15).Picture Then
SPP.Show , Me
Close #1
End If
SaveM.Picture = ImageList1.ListImages(14).Picture
A = 0
End Sub
Private Sub SaveS_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
SaveS.Picture = ImageList1.ListImages(17).Picture
A = 1
End Sub
Private Sub SaveS_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Save recording Mix."
If A = 1 Then
If X > 0 Then SaveS.Picture = ImageList1.ListImages(17).Picture
If Y > 0 Then SaveS.Picture = ImageList1.ListImages(17).Picture
If X > 420 Then SaveS.Picture = ImageList1.ListImages(16).Picture
If Y > 420 Then SaveS.Picture = ImageList1.ListImages(16).Picture
If X < 0 Then SaveS.Picture = ImageList1.ListImages(16).Picture
If Y < 0 Then SaveS.Picture = ImageList1.ListImages(16).Picture
End If
End Sub
Private Sub SaveS_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If SaveS.Picture = ImageList1.ListImages(17).Picture Then
SavePar.Show , Me
End If
SaveS.Picture = ImageList1.ListImages(16).Picture
A = 0
End Sub

Private Sub Space_Change(Index As Integer)
On Error Resume Next
ASD = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch5")
On Error GoTo 10
Klik = Space(Index).Caption
If Klik > 2 Then Klik = 2: Space(Index).Caption = "2"
If ASD = 1 Then
If S(Index).FileName = "" Then Track(Index).Picture = ImageList1.ListImages(2).Picture: OpenF.Show , Me: Klik = 0: OpenF.Label6.Caption = "0"
End If
If ASD = 0 Then
If S(Index).FileName = "" Or S(Index).FileName = " " Then Track(Index).Picture = ImageList1.ListImages(2).Picture: GoTo 10
End If
Select Case Klik
Case 1
On Error GoTo 10
Track(Index).Picture = ImageList2.ListImages(1).Picture
S(Index).SelectionStart = From(Index).Caption
S(Index).SelectionEnd = Too(Index).Caption
S(Index).Volume = Vl(Index).Caption
S(Index).Balance = Bal(Index).Caption
S(Index).Rate = Sp(Index).Caption
S(Index).Play
Space(Index).Caption = Klik
OP.Timer2.Interval = 1
Case 0
On Error GoTo 10
Track(Index).Picture = ImageList2.ListImages(3).Picture
S(Index).Stop
S(Index).CurrentPosition = From(Index).Caption
S(Index).Stop
Space(Index).Caption = Klik
Case 2
On Error GoTo 10
Track(Index).Picture = ImageList2.ListImages(5).Picture
S(Index).SelectionStart = From(Index).Caption
S(Index).SelectionEnd = Too(Index).Caption
S(Index).Volume = Vl(Index).Caption
S(Index).Balance = Bal(Index).Caption
S(Index).Rate = Sp(Index).Caption
S(Index).Play
Space(Index).Caption = Klik
OP.Timer2.Interval = 1
End Select
Exit Sub
10:

End Sub

Private Sub StopP_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
StopP.Picture = ImageList1.ListImages(11).Picture
St = 1
End Sub
Private Sub StopP_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Stop Recording or Exit from Play Mode."
If St = 1 Then
If X > 0 Then StopP.Picture = ImageList1.ListImages(11).Picture
If Y > 0 Then StopP.Picture = ImageList1.ListImages(11).Picture
If X > 420 Then StopP.Picture = ImageList1.ListImages(10).Picture
If Y > 420 Then StopP.Picture = ImageList1.ListImages(10).Picture
If X < 0 Then StopP.Picture = ImageList1.ListImages(10).Picture
If Y < 0 Then StopP.Picture = ImageList1.ListImages(10).Picture
End If
End Sub
Private Sub StopP_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
StopP.Picture = ImageList1.ListImages(10).Picture
St = 0
If StopP.Picture = ImageList1.ListImages(10).Picture Then
RC.Interval = 0
PlaYY.Picture = ImageList1.ListImages(8).Picture
PL = 0
REC = 0
RecordD.Picture = ImageList1.ListImages(12).Picture
MakeToPlay = 0
Dim al
For al = 0 To 15
Space(al).Caption = 0
Next al
End If
End Sub


Private Sub Timer1_Timer()
Dim PO
For PO = 0 To 15
If Not GLF.S(PO).FileName = "" Then GLF.Track(PO).Picture = GLF.ImageList2.ListImages(3).Picture
If GLF.S(PO).FileName = "" Then GLF.Track(PO).Picture = GLF.ImageList1.ListImages(2).Picture
Timer1.Interval = 0
Next PO
OpenF.S.Stop
OpenF.S.CurrentPosition = 0
OpenF.Timer2.Interval = 0
OpenF.PBar.Visible = False
OpenF.Label3(0).Visible = False
OpenF.Label3(1).Visible = False
OpenF.PBar.Value = 0
OpenF.PBar.Max = 1
End Sub

Private Sub Timer2_Timer()
TMI.Caption = Time
End Sub

Private Sub Timer3_Timer()
Dim TI
TI = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch2")
If TI = 0 Then TMI.Visible = False: Timer2.Interval = 0
If TI = 1 Then TMI.Visible = True: Timer2.Interval = 1000
Timer3.Interval = 0
End Sub
Private Sub TMI_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Clock."
End Sub
Private Sub Too_Change(Index As Integer)
If S(Index).FileName = "" Then Track(Index).Picture = ImageList1.ListImages(2).Picture
If Not S(Index).FileName = "" Then Track(Index).Picture = ImageList2.ListImages(3).Picture
End Sub

Private Sub Track_Click(Index As Integer)
Dim IM As String
IM = Index + 1
IM = "Track " + IM
NTrk.Caption = IM
Label2.Caption = Index
Label3.Caption = S(Index).FileName
If MakeToPlay = 1 Then
Static Klik
Klik = Space(Index).Caption
Klik = Klik + 1
If Klik > 1 Then Klik = 0
Space(Index).Caption = Klik
End If
Exit Sub
10:
End Sub

Sub Stop_All()
Dim St
For St = 0 To 15
S(St).Stop
Next St
End Sub

Private Sub Track_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
If Space(Index).Caption = "1" Then Track(Index).Picture = ImageList2.ListImages(2).Picture
If Space(Index).Caption = "0" Then Track(Index).Picture = ImageList2.ListImages(4).Picture
A = 1
End Sub

Private Sub Track_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Help2.Label1.Caption = "Sound Track " & (Index + 1) & "."
If MakeToPlay = 1 Then
Dim IM As String
IM = Index + 1
IM = "Track " + IM
NTrk.Caption = IM
Label2.Caption = Index
Label3.Caption = S(Index).FileName
End If
If A = 1 Then
If Space(Index).Caption = "0" Then
If X > 0 Then Track(Index).Picture = ImageList2.ListImages(4).Picture
If Y > 0 Then Track(Index).Picture = ImageList2.ListImages(4).Picture
If X > 420 Then Track(Index).Picture = ImageList2.ListImages(3).Picture
If Y > 420 Then Track(Index).Picture = ImageList2.ListImages(3).Picture
If X < 0 Then Track(Index).Picture = ImageList2.ListImages(3).Picture
If Y < 0 Then Track(Index).Picture = ImageList2.ListImages(3).Picture
End If
If Space(Index).Caption = "1" Then
If X > 0 Then Track(Index).Picture = ImageList2.ListImages(2).Picture
If Y > 0 Then Track(Index).Picture = ImageList2.ListImages(2).Picture
If X > 420 Then Track(Index).Picture = ImageList2.ListImages(1).Picture
If Y > 420 Then Track(Index).Picture = ImageList2.ListImages(1).Picture
If X < 0 Then Track(Index).Picture = ImageList2.ListImages(1).Picture
If Y < 0 Then Track(Index).Picture = ImageList2.ListImages(1).Picture
End If
End If
If S(Index).FileName = "" Then Track(Index).Picture = ImageList1.ListImages(2).Picture
End Sub

Private Sub Track_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
If Track(Index).Picture = ImageList2.ListImages(4).Picture Then
Track(Index).Picture = ImageList2.ListImages(3).Picture
End If
If Track(Index).Picture = ImageList2.ListImages(2).Picture Then
Track(Index).Picture = ImageList2.ListImages(1).Picture
End If
If S(Index).FileName = "" Then Track(Index).Picture = ImageList1.ListImages(2).Picture
A = 0
If Button And 2 Then OpenF.Show , Me: OpenF.Label6.Caption = "0"
End Sub

