VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Opcije 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Options"
   ClientHeight    =   5865
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6570
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5865
   ScaleWidth      =   6570
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame PZ 
      BackColor       =   &H00FF8080&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00000000&
      Height          =   5295
      Index           =   2
      Left            =   6600
      TabIndex        =   14
      Top             =   360
      Width           =   5055
      Begin VB.Frame Frame1 
         BackColor       =   &H00FF8080&
         BorderStyle     =   0  'None
         Caption         =   "Frame1"
         Height          =   735
         Left            =   2040
         TabIndex        =   39
         Top             =   1440
         Visible         =   0   'False
         Width           =   2535
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            ForeColor       =   &H00FFFF00&
            Height          =   195
            Index           =   3
            Left            =   0
            TabIndex        =   42
            ToolTipText     =   "Giga bayta"
            Top             =   480
            Width           =   90
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            ForeColor       =   &H00FFFF00&
            Height          =   195
            Index           =   2
            Left            =   0
            TabIndex        =   41
            ToolTipText     =   "Mega bayta"
            Top             =   240
            Width           =   90
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            ForeColor       =   &H00FFFF00&
            Height          =   195
            Index           =   1
            Left            =   0
            TabIndex        =   40
            ToolTipText     =   "Kilo bayta"
            Top             =   0
            Width           =   90
         End
      End
      Begin VB.Timer Timer2 
         Interval        =   100
         Left            =   4560
         Top             =   120
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "16"
         Height          =   195
         Index           =   11
         Left            =   840
         TabIndex        =   60
         Top             =   3240
         Width           =   180
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "R"
         Height          =   195
         Index           =   10
         Left            =   1320
         TabIndex        =   59
         Top             =   3000
         Width           =   120
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "System Resources free :"
         Height          =   195
         Index           =   9
         Left            =   240
         TabIndex        =   58
         Top             =   4920
         Visible         =   0   'False
         Width           =   1725
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ram :"
         Height          =   195
         Index           =   8
         Left            =   720
         TabIndex        =   57
         Top             =   4680
         Visible         =   0   'False
         Width           =   420
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "F"
         Height          =   195
         Index           =   6
         Left            =   3840
         TabIndex        =   56
         Top             =   4560
         Visible         =   0   'False
         Width           =   90
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "85 %"
         Height          =   195
         Index           =   5
         Left            =   2160
         TabIndex        =   55
         Top             =   4920
         Visible         =   0   'False
         Width           =   345
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "32"
         Height          =   195
         Index           =   4
         Left            =   1680
         TabIndex        =   54
         Top             =   4680
         Visible         =   0   'False
         Width           =   180
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "266 MHz"
         Height          =   195
         Index           =   3
         Left            =   1560
         TabIndex        =   53
         Top             =   4440
         Visible         =   0   'False
         Width           =   645
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "C:"
         Height          =   195
         Index           =   2
         Left            =   1440
         TabIndex        =   52
         Top             =   2640
         Width           =   150
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "C:\"
         Height          =   195
         Index           =   1
         Left            =   1440
         TabIndex        =   51
         Top             =   2400
         Width           =   225
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Windows 98"
         Height          =   195
         Index           =   0
         Left            =   1440
         TabIndex        =   50
         Top             =   2160
         Width           =   885
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Colors :"
         Height          =   195
         Index           =   7
         Left            =   240
         TabIndex        =   49
         Top             =   3240
         Width           =   525
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Screen area :"
         Height          =   195
         Index           =   6
         Left            =   240
         TabIndex        =   48
         Top             =   3000
         Width           =   960
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Computer name :"
         Height          =   195
         Index           =   5
         Left            =   2520
         TabIndex        =   47
         Top             =   4560
         Visible         =   0   'False
         Width           =   1200
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Windows Ver. :"
         Height          =   195
         Index           =   4
         Left            =   240
         TabIndex        =   46
         Top             =   2160
         Width           =   1080
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Procesor :"
         Height          =   195
         Index           =   3
         Left            =   600
         TabIndex        =   45
         Top             =   4440
         Visible         =   0   'False
         Width           =   720
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "System Path :"
         Height          =   195
         Index           =   2
         Left            =   240
         TabIndex        =   44
         Top             =   2640
         Width           =   975
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Windows Path :"
         Height          =   195
         Index           =   1
         Left            =   240
         TabIndex        =   43
         Top             =   2400
         Width           =   1125
      End
      Begin VB.Image Image9 
         Height          =   480
         Left            =   4440
         Picture         =   "Opcije.frx":0000
         ToolTipText     =   "Remove MMStudio"
         Top             =   4680
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         ForeColor       =   &H00FFFF00&
         Height          =   195
         Index           =   0
         Left            =   2040
         TabIndex        =   18
         Top             =   1200
         Width           =   90
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Free Disk Space :"
         Height          =   195
         Index           =   0
         Left            =   720
         TabIndex        =   17
         Top             =   1200
         Width           =   1275
      End
      Begin VB.Image Image8 
         Height          =   480
         Index           =   1
         Left            =   120
         Picture         =   "Opcije.frx":030A
         Top             =   1080
         Width           =   480
      End
      Begin VB.Image Image8 
         Height          =   480
         Index           =   0
         Left            =   120
         Picture         =   "Opcije.frx":0614
         Top             =   240
         Width           =   480
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "System Information"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFC0C0&
         Height          =   300
         Left            =   720
         TabIndex        =   16
         Top             =   360
         Width           =   2145
      End
   End
   Begin VB.Frame PZ 
      BackColor       =   &H00FF8080&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00000000&
      Height          =   5295
      Index           =   1
      Left            =   6600
      TabIndex        =   13
      Top             =   360
      Width           =   5055
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Warning :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   120
         TabIndex        =   38
         Top             =   4185
         Width           =   840
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   $"Opcije.frx":091E
         Height          =   975
         Left            =   120
         TabIndex        =   37
         Top             =   4200
         Width           =   4815
      End
      Begin VB.Label Datee 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "21.05.2000"
         ForeColor       =   &H00C00000&
         Height          =   195
         Left            =   2400
         TabIndex        =   36
         Top             =   2640
         Width           =   810
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Register Date :"
         Height          =   195
         Index           =   3
         Left            =   240
         TabIndex        =   35
         Top             =   2640
         Width           =   1065
      End
      Begin VB.Label Corp 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Flokysofft"
         ForeColor       =   &H00C00000&
         Height          =   195
         Left            =   2400
         TabIndex        =   34
         Top             =   2280
         Width           =   675
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Company :"
         Height          =   195
         Index           =   2
         Left            =   240
         TabIndex        =   33
         Top             =   2280
         Width           =   750
      End
      Begin VB.Label RName 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Davor Sauer"
         ForeColor       =   &H00C00000&
         Height          =   195
         Left            =   2400
         TabIndex        =   32
         Top             =   1920
         Width           =   900
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "This product is licensed to :"
         Height          =   195
         Index           =   1
         Left            =   240
         TabIndex        =   31
         Top             =   1920
         Width           =   1935
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Version : 1.0"
         Height          =   195
         Index           =   0
         Left            =   240
         TabIndex        =   15
         Top             =   1560
         Width           =   885
      End
      Begin VB.Image Image6 
         Height          =   465
         Left            =   3720
         Picture         =   "Opcije.frx":0A4C
         Top             =   240
         Width           =   375
      End
      Begin VB.Image Image5 
         Height          =   1005
         Index           =   0
         Left            =   120
         Picture         =   "Opcije.frx":102C
         Top             =   120
         Width           =   3675
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0C000&
      BorderStyle     =   0  'None
      Height          =   855
      Left            =   1200
      TabIndex        =   9
      Top             =   5880
      Width           =   5055
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C000&
         BorderStyle     =   0  'None
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   855
         HideSelection   =   0   'False
         Left            =   600
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   10
         Text            =   "Opcije.frx":26C0
         Top             =   0
         Width           =   4455
      End
      Begin VB.Image Image4 
         Height          =   480
         Left            =   0
         Stretch         =   -1  'True
         Top             =   0
         Width           =   480
      End
   End
   Begin VB.VScrollBar Visina 
      Height          =   5055
      Left            =   6600
      Max             =   0
      TabIndex        =   7
      Top             =   480
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.PictureBox Picture5 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   1190
      Picture         =   "Opcije.frx":26D0
      ScaleHeight     =   255
      ScaleWidth      =   5265
      TabIndex        =   6
      Top             =   5640
      Width           =   5265
   End
   Begin VB.PictureBox Picture4 
      BorderStyle     =   0  'None
      Height          =   5535
      Left            =   0
      Picture         =   "Opcije.frx":27FA
      ScaleHeight     =   5535
      ScaleWidth      =   1080
      TabIndex        =   4
      Top             =   360
      Width           =   1075
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   720
         Top             =   5160
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
               Picture         =   "Opcije.frx":6BAB
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Opcije.frx":6EC7
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Opcije.frx":71E3
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Opcije.frx":74FF
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Opcije.frx":781B
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Opcije.frx":7B37
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Opcije.frx":7E53
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Opcije.frx":82A7
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Opcije.frx":86FB
               Key             =   ""
            EndProperty
            BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Opcije.frx":8A17
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin VB.Timer Timer1 
         Interval        =   900
         Left            =   600
         Tag             =   "900"
         Top             =   5520
      End
      Begin VB.Image APPL 
         Height          =   480
         Left            =   240
         Picture         =   "Opcije.frx":8D33
         Top             =   3960
         Width           =   480
      End
      Begin VB.Image Image7 
         Height          =   480
         Index           =   2
         Left            =   240
         Picture         =   "Opcije.frx":903D
         Top             =   1680
         Width           =   480
      End
      Begin VB.Label INDX 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "100"
         Height          =   195
         Left            =   720
         TabIndex        =   11
         Top             =   5160
         Visible         =   0   'False
         Width           =   270
      End
      Begin VB.Image Image2 
         Height          =   480
         Left            =   0
         Picture         =   "Opcije.frx":9347
         ToolTipText     =   "What's This ?"
         Top             =   4800
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "20:24:45"
         BeginProperty Font 
            Name            =   "Small Fonts"
            Size            =   6.75
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C0C0&
         Height          =   165
         Left            =   0
         TabIndex        =   5
         Top             =   5340
         Width           =   510
      End
      Begin VB.Image Image7 
         Height          =   480
         Index           =   1
         Left            =   240
         Picture         =   "Opcije.frx":9651
         Top             =   960
         Width           =   480
      End
      Begin VB.Image Image7 
         Height          =   480
         Index           =   0
         Left            =   240
         Picture         =   "Opcije.frx":995B
         Top             =   240
         Width           =   480
      End
   End
   Begin VB.PictureBox Image1 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   300
      Left            =   0
      Picture         =   "Opcije.frx":9C65
      ScaleHeight     =   300
      ScaleWidth      =   6555
      TabIndex        =   3
      Top             =   0
      Width           =   6555
      Begin VB.Label TT 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "About"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   6.75
            Charset         =   238
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   180
         Left            =   360
         TabIndex        =   12
         Top             =   45
         Width           =   375
      End
      Begin VB.Label Izlaz 
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
         ForeColor       =   &H00C0C000&
         Height          =   300
         Left            =   6000
         TabIndex        =   8
         Top             =   0
         Width           =   180
      End
      Begin VB.Image Image3 
         Height          =   270
         Left            =   2160
         Picture         =   "Opcije.frx":A8E4
         Top             =   0
         Width           =   2265
      End
   End
   Begin VB.PictureBox Picture2 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   8835
      Left            =   6360
      Picture         =   "Opcije.frx":F668
      ScaleHeight     =   8835
      ScaleWidth      =   90
      TabIndex        =   2
      Top             =   360
      Width           =   90
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   5535
      Left            =   1080
      Picture         =   "Opcije.frx":FBE4
      ScaleHeight     =   5535
      ScaleWidth      =   105
      TabIndex        =   1
      Top             =   360
      Width           =   110
   End
   Begin VB.Frame PZ 
      BackColor       =   &H00FF8080&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H00000000&
      Height          =   5295
      Index           =   0
      Left            =   1200
      TabIndex        =   0
      Top             =   360
      Width           =   5055
      Begin VB.PictureBox Picture3 
         BackColor       =   &H00FF8080&
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   480
         ScaleHeight     =   255
         ScaleWidth      =   4215
         TabIndex        =   66
         Top             =   4080
         Width           =   4215
         Begin VB.Image Image10 
            Height          =   480
            Left            =   -120
            Picture         =   "Opcije.frx":10160
            Top             =   -120
            Width           =   480
         End
      End
      Begin MSComctlLib.Slider Slider1 
         Height          =   255
         Left            =   600
         TabIndex        =   61
         Top             =   4800
         Visible         =   0   'False
         Width           =   3375
         _ExtentX        =   5953
         _ExtentY        =   450
         _Version        =   393216
         Min             =   5
         Max             =   400
         SelStart        =   5
         TickStyle       =   3
         Value           =   5
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00808000&
         BorderWidth     =   2
         X1              =   600
         X2              =   4440
         Y1              =   4440
         Y2              =   4440
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "S"
         Height          =   195
         Index           =   6
         Left            =   4440
         TabIndex        =   65
         Top             =   2520
         Visible         =   0   'False
         Width           =   105
      End
      Begin VB.Label Qu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "5"
         Height          =   195
         Left            =   2280
         TabIndex        =   64
         Top             =   4440
         Width           =   90
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Low"
         Height          =   195
         Index           =   1
         Left            =   4320
         TabIndex        =   63
         Top             =   4440
         Width           =   300
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Hard"
         Height          =   195
         Index           =   0
         Left            =   480
         TabIndex        =   62
         Top             =   4440
         Width           =   345
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Auto Open File"
         Height          =   195
         Index           =   5
         Left            =   840
         TabIndex        =   30
         Top             =   2280
         Width           =   1050
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Qualty to Record"
         Height          =   195
         Index           =   4
         Left            =   360
         TabIndex        =   29
         Top             =   3720
         Width           =   1200
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Show Track Key ..."
         Height          =   195
         Index           =   3
         Left            =   840
         TabIndex        =   28
         Top             =   1680
         Width           =   1365
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Show Clock"
         Height          =   195
         Index           =   2
         Left            =   840
         TabIndex        =   27
         Top             =   960
         Width           =   855
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Auto Play"
         Height          =   195
         Index           =   1
         Left            =   840
         TabIndex        =   26
         Top             =   3000
         Width           =   675
      End
      Begin VB.Image Check 
         Height          =   480
         Index           =   5
         Left            =   240
         Stretch         =   -1  'True
         Top             =   2160
         Width           =   480
      End
      Begin VB.Image Check 
         Height          =   480
         Index           =   4
         Left            =   4200
         Stretch         =   -1  'True
         Top             =   3000
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.Image Check 
         Height          =   480
         Index           =   3
         Left            =   240
         Stretch         =   -1  'True
         Top             =   1440
         Width           =   480
      End
      Begin VB.Image Check 
         Height          =   480
         Index           =   2
         Left            =   240
         Stretch         =   -1  'True
         Top             =   840
         Width           =   480
      End
      Begin VB.Image Check 
         Height          =   480
         Index           =   1
         Left            =   240
         Stretch         =   -1  'True
         Top             =   2880
         Width           =   480
      End
      Begin VB.Label CheckI 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   195
         Index           =   5
         Left            =   0
         TabIndex        =   25
         Top             =   2280
         Visible         =   0   'False
         Width           =   90
      End
      Begin VB.Label CheckI 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   195
         Index           =   4
         Left            =   120
         TabIndex        =   24
         Top             =   4200
         Visible         =   0   'False
         Width           =   90
      End
      Begin VB.Label CheckI 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   195
         Index           =   3
         Left            =   0
         TabIndex        =   23
         Top             =   1560
         Visible         =   0   'False
         Width           =   90
      End
      Begin VB.Label CheckI 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   195
         Index           =   2
         Left            =   0
         TabIndex        =   22
         Top             =   960
         Visible         =   0   'False
         Width           =   90
      End
      Begin VB.Label CheckI 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   195
         Index           =   1
         Left            =   0
         TabIndex        =   21
         Top             =   3000
         Visible         =   0   'False
         Width           =   90
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Show Icon"
         Height          =   195
         Index           =   0
         Left            =   840
         TabIndex        =   20
         Top             =   360
         Visible         =   0   'False
         Width           =   765
      End
      Begin VB.Label CheckI 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   195
         Index           =   0
         Left            =   0
         TabIndex        =   19
         Top             =   360
         Visible         =   0   'False
         Width           =   90
      End
      Begin VB.Image Check 
         Height          =   480
         Index           =   0
         Left            =   240
         Stretch         =   -1  'True
         Top             =   240
         Visible         =   0   'False
         Width           =   480
      End
   End
End
Attribute VB_Name = "Opcije"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function GetDesktopWindow Lib "user32" () As Long
Private Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long
Private Declare Function GetDeviceCaps Lib "gdi32" (ByVal hdc As Long, ByVal nIndex As Long) As Long
Private Declare Function ReleaseDC Lib "user32" (ByVal hwnd As Long, ByVal hdc As Long) As Long
'
Dim K As Integer ' For Move form
Dim mm As POINTAPI
Dim P
Dim XX
Dim YY
Dim IZ
Dim CH As Integer
Dim X As String
Dim rtn
Dim WPath
Dim R
Dim A


Private Sub APPL_Click()
On Error Resume Next
WPath = App.Path + "\" + "snd3.wav"
R = WavPlay(WPath, SND_ASYNC)
'Creat 'Folder'
CreateKey "HKEY_LOCAL_MACHINE\Software\MMStudio"
'Creat Information
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch0", CheckI(0).Caption
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch1", CheckI(1).Caption
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch2", CheckI(2).Caption
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch3", CheckI(3).Caption
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch4", CheckI(4).Caption
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch5", CheckI(5).Caption
'About
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic1", RName.Caption
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic2", Corp.Caption
SetStringValue "HKEY_LOCAL_MACHINE\Software\MMStudio", "Q", Qu.Caption
Unload Me
End Sub

Private Sub APPL_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
TT.Caption = "Apply"
End Sub

Private Sub Check_Click(Index As Integer)
INDX.Caption = Index
CH = CheckI(Index).Caption
CH = CH + 1
If CH > 1 Then CH = 0
Select Case CH
Case 1
Check(Index).Picture = ImageList1.ListImages(1).Picture
Case 0
Check(Index).Picture = ImageList1.ListImages(2).Picture
End Select
CheckI(Index).Caption = CH
Call Help_Text
End Sub

Private Sub CheckI_Change(Index As Integer)
On Error Resume Next
If CheckI(Index).Caption = "1" Then Check(Index).Picture = ImageList1.ListImages(1).Picture
If CheckI(Index).Caption = "0" Then Check(Index).Picture = ImageList1.ListImages(2).Picture
End Sub

Private Sub Form_Load()
Call Shov_Icon
Call R_Regedit
Opcije.Width = 6570
Opcije.Height = 5865
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
Opcije.Left = (P * mm.X) - XX
Opcije.Top = (P * mm.Y) - YY
End If
End Sub

Private Sub Image1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
K = 0
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub


Private Sub Image2_Click()
Static B
B = B + 1
If B > 1 Then B = 0
Select Case B
Case 1
Dim OPH
Frame2.Height = 855
Frame2.Top = 4780
Visina.Height = 5055 - 855
Call Help_Text
For OPH = 0 To 5055 Step 40
Frame2.Width = OPH
Next OPH
Case 0
Visina.Height = 5055
Frame2.Top = 5880
End Select
End Sub

Private Sub Image3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
K = 1
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Image3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If K = 1 Then
GetCursorPos mm
Opcije.Left = (P * mm.X) - XX - 2160
Opcije.Top = (P * mm.Y) - YY
End If
End Sub

Private Sub Image3_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
K = 0
End Sub


Private Sub Image7_Click(Index As Integer)
On Error Resume Next
WPath = App.Path + "\" + "snd1.wav"
R = WavPlay(WPath, SND_ASYNC)
'Skrivanje svih
Dim L
For L = 0 To 2
PZ(L).Left = 6600
Visina.Visible = False
Next L
'Dalje
If Index = 0 Then Visina.Visible = True
Visina.Max = Abs(PZ(Index).Height - 5295)
PZ(Index).Left = 1200
End Sub

Private Sub Image7_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Select Case Index
Case 0
TT.Caption = "Options"
Case 1
TT.Caption = "About"
Case 2
TT.Caption = "System Information"
End Select
End Sub

Private Sub Image9_Click()
DeleteKey "HKEY_LOCAL_MACHINE\Software\MMStudio"
End Sub

Private Sub Izlaz_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Izlaz.ForeColor = QBColor(0)
IZ = 1
End Sub

Private Sub Izlaz_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
IZ = 1
Izlaz.ForeColor = QBColor(9)
If X < 0 Then IZ = 0: Izlaz.ForeColor = &HC0C000
If Y < 0 Then IZ = 0: Izlaz.ForeColor = &HC0C000
If X > 150 Then IZ = 0: Izlaz.ForeColor = &HC0C000
If Y > 170 Then IZ = 0: Izlaz.ForeColor = &HC0C000
End Sub

Private Sub Izlaz_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If IZ = 1 Then
Unload Me
End If
Izlaz.ForeColor = &H0&
End Sub


Private Sub Label4_Click(Index As Integer)
On Error Resume Next
WPath = App.Path + "\" + "snd1.wav"
R = WavPlay(WPath, SND_ASYNC)
End Sub

Private Sub Label5_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
X = DiskSpace("C:\")
Dim K As String
Dim L As String
L = X
K = L + " B"
Label5(0).Caption = K

L = L / 1024
K = L + " kB"
Label5(1).Caption = K

L = L / 1027
K = L + " MB"
Label5(2).Caption = K

L = L / 1024
K = L + " GB"
Label5(3).Caption = K
Frame1.Visible = True
End Sub

Private Sub Label5_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Frame1.Visible = False
End Sub

Private Sub Label6_Click(Index As Integer)
INDX.Caption = Index
INDX.Caption = Index
CH = CheckI(Index).Caption
CH = CH + 1
If CH > 1 Then CH = 0
Select Case CH
Case 1
Check(Index).Picture = ImageList1.ListImages(1).Picture
Case 0
Check(Index).Picture = ImageList1.ListImages(2).Picture
End Select
CheckI(Index).Caption = CH
Call Help_Text
End Sub

Private Sub LBB_Click()
INDX.Caption = "6"
End Sub

Private Sub Picture4_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
INDX.Caption = "100"
Call Help_Text
K = 1
P = Screen.TwipsPerPixelX
XX = X
YY = Y
End Sub

Private Sub Picture4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If K = 1 Then
GetCursorPos mm
Opcije.Left = (P * mm.X) - XX
Opcije.Top = (P * mm.Y) - YY - 360
End If
End Sub

Private Sub Picture4_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
K = 0
End Sub

Private Sub Slider1_Click()
Qu.Caption = Slider1.Value
End Sub

Private Sub Slider1_Scroll()
Qu.Caption = Slider1.Value
End Sub

Private Sub Timer1_Timer()
Label1.Caption = Time
End Sub
Sub Help_Text()
Select Case INDX.Caption
Case 100
Image4.Picture = ImageList1.ListImages(4).Picture
Text1.Text = "This is Option For MixMax Studio...  You chose the object and click to >>?<< , to look what's this. Always click to icon to change option or show what's this."
Case 0
Image4.Picture = ImageList1.ListImages(5).Picture
Text1.Text = "Show program's icon in Tray vhen Minimize or start System."
Case 1
Image4.Picture = ImageList1.ListImages(3).Picture
Text1.Text = "When you Save Mix Parameters program make project, program's copy all sound samples in this Mix to one directories (Folder) width list parameters from this directories."
Case 2
Image4.Picture = ImageList1.ListImages(7).Picture
Text1.Text = "This option show all Key on screen to direct with MMStudio."
Case 3
Image4.Picture = ImageList1.ListImages(8).Picture
Text1.Text = "This option show Key to direct width insert sound on two CD in screen."
Case 5
Image4.Picture = ImageList1.ListImages(10).Picture
Text1.Text = "In Play Mode automation open file in Key Track."
End Select
End Sub
Sub Shov_Icon()
Check(0).Picture = ImageList1.ListImages(2).Picture
Check(1).Picture = ImageList1.ListImages(2).Picture
Check(2).Picture = ImageList1.ListImages(2).Picture
Check(3).Picture = ImageList1.ListImages(2).Picture
Check(4).Picture = ImageList1.ListImages(2).Picture
Check(5).Picture = ImageList1.ListImages(2).Picture
End Sub
Sub R_Regedit()
On Error Resume Next
'Read information from Register.exe
CheckI(0).Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch0")
CheckI(1).Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch1")
CheckI(2).Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch2")
CheckI(3).Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch3")
CheckI(4).Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch4")
CheckI(5).Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Ch5")
'About
RName.Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic1")
Corp.Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic2")
Datee.Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Lic3")
Qu.Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\MMStudio", "Q")
'System information
Label4(10).Caption = GetStringValue("HKEY_CURRENT_CONFIG\Display\Settings", "Resolution")
Image10.Left = Fix(Qu * 9.45)
End Sub

Private Sub Timer2_Timer()
X = DiskSpace("C:\")
Label5(0).Caption = X
Call DeviceInfo
Call Getwin
Label9(0).Caption = GetStringValue("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "Version")
Timer2.Interval = 0
End Sub
Public Function DiskSpace(DrivePath As String) As Double
On Error Resume Next
  Dim Drive As String
  Dim SectorsPerCluster As Long, BytesPerSector As Long
  Dim NumberOfFreeClusters As Long, TotalClusters As Long, Sts As Long
  Dim DS

  Drive = Left(Trim(DrivePath), 1) & ":\"     ' Ensure path is at the root.
  Sts = GetDiskFreeSpace(Drive, SectorsPerCluster, BytesPerSector, NumberOfFreeClusters, TotalClusters)
  If Sts <> 0 Then
    DiskSpace = SectorsPerCluster * BytesPerSector * NumberOfFreeClusters
    DS = Format$(DiskSpace, "###,###")
    Label1 = DS & " bytes"
  Else
    DiskSpace = -1
  End If
End Function

Public Sub DesktopHandle()
Dim hdesktopwnd
hdesktopwnd = GetDesktopWindow()
End Sub


Public Sub DeviceInfo()
Dim DisplayBits
Dim DisplayPlanes
Dim DisplayWidth
Dim DisplayHeight
Dim retval
hdccaps = GetDC(hdesktopwnd)

DisplayBits = GetDeviceCaps(hdccaps, 12)

DisplayPlanes = GetDeviceCaps(hdccaps, 14)

DisplayWidth = GetDeviceCaps(hdccaps, 8)

DisplayHeight = GetDeviceCaps(hdccaps, 10)

retval = ReleaseDC(hdesktopwnd, hdccaps)

If DisplayBits = 1 Then
If DisplayPlanes = 1 Then
 Label4(11) = "1-bit/2 colours"
ElseIf DisplayPlanes = 4 Then
 Label4(11) = "4-bit/16 colur mode"
End If
ElseIf DisplayBits = 8 Then
 Label4(11) = "8 bit/256 colours"
ElseIf DisplayBits = 16 Then
 Label4(11) = "16 bit/65,000 colours"
Else
 Label4(11) = "16,000,000 colurs, or Custom Mode"
End If
End Sub




Sub Getsys()

Dim Buffer As String

Buffer = Space(MAX_PATH)
rtn = GetSystemDirectory(Buffer, Len(Buffer))
WinSysPath = Left(Buffer, rtn)

Label9(2).Caption = WinSysPath

End Sub


Sub Getwin()
On Error Resume Next
Dim Buffer As String

Buffer = Space(MAX_PATH)
rtn = GetWindowsDirectory(Buffer, Len(Buffer))
WinPath = Left(Buffer, rtn)

Label9(1).Caption = WinPath
Call Getsys
End Sub

Private Sub Image10_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
A = 1
End Sub

Private Sub Image10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If A = 1 Then
On Error Resume Next
If Image10.Left < 0 Then Image10.Left = 0: Slider1.Value = 1
If Image10.Left > 3720 Then Image10.Left = 3735
Image10.Left = X + (Image10.Left) - 240
Slider1.Value = Abs(Fix((Image10.Left * 395) / 3720))
Qu = Slider1.Value
End If
End Sub

Private Sub Image10_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Image10.Left < 1 Then Image10.Left = 0
If Image10.Left > 3720 Then Image10.Left = 3720
A = 0
End Sub

