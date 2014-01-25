VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Music 
   BorderStyle     =   0  'None
   ClientHeight    =   6615
   ClientLeft      =   -30
   ClientTop       =   -315
   ClientWidth     =   10830
   ControlBox      =   0   'False
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6615
   ScaleWidth      =   10830
   ShowInTaskbar   =   0   'False
   Begin VB.ListBox List3 
      Height          =   645
      Left            =   3960
      Sorted          =   -1  'True
      TabIndex        =   39
      Top             =   9840
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.ListBox List2 
      Height          =   1425
      Left            =   3960
      Sorted          =   -1  'True
      TabIndex        =   38
      Top             =   8280
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.ListBox List1 
      Height          =   1620
      Left            =   2160
      Sorted          =   -1  'True
      TabIndex        =   37
      Top             =   8640
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.ListBox List6 
      Height          =   2010
      Left            =   1800
      Sorted          =   -1  'True
      TabIndex        =   36
      Top             =   6600
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.ListBox List5 
      Height          =   2010
      Left            =   120
      Sorted          =   -1  'True
      TabIndex        =   35
      Top             =   8640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.ListBox List4 
      Height          =   2010
      Left            =   120
      Sorted          =   -1  'True
      TabIndex        =   34
      Top             =   6600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin MSComctlLib.TreeView Treii 
      Height          =   3255
      Index           =   0
      Left            =   4800
      TabIndex        =   46
      Top             =   2595
      Visible         =   0   'False
      Width           =   2415
      _ExtentX        =   4260
      _ExtentY        =   5741
      _Version        =   393217
      Indentation     =   4
      LabelEdit       =   1
      LineStyle       =   1
      PathSeparator   =   "×"
      Sorted          =   -1  'True
      Style           =   6
      Appearance      =   1
   End
   Begin MSComctlLib.ListView compilation 
      Height          =   1095
      Left            =   5880
      TabIndex        =   45
      Top             =   7920
      Visible         =   0   'False
      Width           =   4815
      _ExtentX        =   8493
      _ExtentY        =   1931
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin MSComctlLib.ListView ListF 
      Height          =   1215
      Left            =   5880
      TabIndex        =   43
      Top             =   6600
      Visible         =   0   'False
      Width           =   4815
      _ExtentX        =   8493
      _ExtentY        =   2143
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Height          =   5895
      Left            =   0
      TabIndex        =   7
      Top             =   600
      Width           =   10815
      Begin MSComctlLib.Toolbar Toolbar3 
         Height          =   660
         Left            =   0
         TabIndex        =   41
         Top             =   0
         Visible         =   0   'False
         Width           =   1380
         _ExtentX        =   2434
         _ExtentY        =   1164
         ButtonWidth     =   2117
         ButtonHeight    =   582
         Appearance      =   1
         Style           =   1
         TextAlignment   =   1
         ImageList       =   "ImageList2"
         DisabledImageList=   "ImageList2"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   2
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "New Artist"
               ImageIndex      =   1
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "New Album"
               ImageIndex      =   5
            EndProperty
         EndProperty
      End
      Begin VB.PictureBox Picture1 
         BackColor       =   &H00808080&
         BorderStyle     =   0  'None
         Height          =   200
         Index           =   0
         Left            =   0
         ScaleHeight     =   195
         ScaleWidth      =   3135
         TabIndex        =   22
         Top             =   0
         Width           =   3135
         Begin VB.Image Image1 
            Height          =   195
            Left            =   30
            Picture         =   "Music.frx":0000
            ToolTipText     =   "View by"
            Top             =   0
            Width           =   195
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Artist"
            Height          =   195
            Left            =   300
            TabIndex        =   23
            Top             =   0
            Width           =   345
         End
      End
      Begin VB.PictureBox Picture1 
         BackColor       =   &H00808080&
         BorderStyle     =   0  'None
         Height          =   200
         Index           =   1
         Left            =   3240
         ScaleHeight     =   195
         ScaleWidth      =   7575
         TabIndex        =   20
         Top             =   0
         Width           =   7575
         Begin VB.TextBox Text8 
            Appearance      =   0  'Flat
            BackColor       =   &H000000C0&
            BorderStyle     =   0  'None
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   238
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FF00&
            Height          =   285
            Left            =   600
            TabIndex        =   42
            Text            =   "Title to search"
            Top             =   0
            Visible         =   0   'False
            Width           =   6975
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Song"
            Height          =   195
            Left            =   120
            TabIndex        =   21
            Top             =   0
            Width           =   375
         End
      End
      Begin VB.Frame Frame2 
         Height          =   1935
         Left            =   3600
         TabIndex        =   8
         Top             =   3840
         Width           =   7215
         Begin VB.CheckBox Check1 
            Height          =   255
            Index           =   4
            Left            =   3840
            TabIndex        =   30
            Top             =   1200
            Width           =   255
         End
         Begin VB.CheckBox Check1 
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   29
            Top             =   1440
            Value           =   2  'Grayed
            Width           =   255
         End
         Begin VB.CheckBox Check1 
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   28
            Top             =   1200
            Width           =   255
         End
         Begin VB.CheckBox Check1 
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   27
            Top             =   960
            Width           =   255
         End
         Begin VB.CheckBox Check1 
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   26
            Top             =   720
            Width           =   255
         End
         Begin VB.TextBox Text2 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            ForeColor       =   &H00000000&
            Height          =   195
            Left            =   720
            TabIndex        =   1
            Top             =   360
            Width           =   6345
         End
         Begin VB.TextBox Text3 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            ForeColor       =   &H00000000&
            Height          =   195
            Left            =   960
            TabIndex        =   2
            Top             =   720
            Width           =   2655
         End
         Begin VB.TextBox Text4 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            ForeColor       =   &H00000000&
            Height          =   195
            Left            =   1080
            TabIndex        =   3
            Top             =   960
            Width           =   2535
         End
         Begin VB.TextBox Text5 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            ForeColor       =   &H00000000&
            Height          =   195
            Left            =   960
            TabIndex        =   4
            Top             =   1200
            Width           =   2655
         End
         Begin VB.TextBox Text6 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            ForeColor       =   &H00000000&
            Height          =   195
            Left            =   1200
            TabIndex        =   5
            Top             =   1440
            Width           =   2415
         End
         Begin VB.TextBox Text7 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            ForeColor       =   &H00000000&
            Height          =   645
            Left            =   4920
            MultiLine       =   -1  'True
            ScrollBars      =   2  'Vertical
            TabIndex        =   6
            Top             =   1200
            Width           =   2175
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Label7"
            Height          =   195
            Left            =   1080
            TabIndex        =   40
            Top             =   1680
            Visible         =   0   'False
            Width           =   480
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Data Label :"
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   19
            Top             =   120
            Width           =   870
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Artist :"
            Height          =   195
            Index           =   1
            Left            =   480
            TabIndex        =   18
            Top             =   720
            Width           =   435
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Album :"
            Height          =   195
            Index           =   2
            Left            =   480
            TabIndex        =   17
            Top             =   960
            Width           =   525
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Song :"
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   16
            Top             =   360
            Width           =   465
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Year :"
            Height          =   195
            Index           =   4
            Left            =   480
            TabIndex        =   15
            Top             =   1200
            Width           =   420
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Genre :"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   238
               Weight          =   700
               Underline       =   -1  'True
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   480
            TabIndex        =   14
            Top             =   1440
            Width           =   645
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Size :"
            Height          =   195
            Index           =   5
            Left            =   4080
            TabIndex        =   13
            Top             =   720
            Width           =   390
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "0 bytes"
            Height          =   195
            Left            =   4560
            TabIndex        =   12
            Top             =   720
            Width           =   510
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Length :"
            Height          =   195
            Index           =   6
            Left            =   4080
            TabIndex        =   11
            Top             =   960
            Width           =   585
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "0 min"
            Height          =   195
            Left            =   4680
            TabIndex        =   10
            Top             =   960
            Width           =   375
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Comment :"
            Height          =   195
            Index           =   7
            Left            =   4080
            TabIndex        =   9
            Top             =   1200
            Width           =   750
         End
      End
      Begin MSComctlLib.TreeView Artist 
         Height          =   5535
         Left            =   0
         TabIndex        =   24
         Top             =   240
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   9763
         _Version        =   393217
         HideSelection   =   0   'False
         Indentation     =   423
         LabelEdit       =   1
         LineStyle       =   1
         Style           =   6
         HotTracking     =   -1  'True
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSComctlLib.ListView Song 
         Height          =   3615
         Left            =   3240
         TabIndex        =   25
         Top             =   240
         Width           =   7575
         _ExtentX        =   13361
         _ExtentY        =   6376
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   0   'False
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483624
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   0
      End
      Begin MSComctlLib.TreeView DrvLab 
         Height          =   5535
         Left            =   0
         TabIndex        =   31
         Top             =   240
         Visible         =   0   'False
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   9763
         _Version        =   393217
         Indentation     =   423
         LabelEdit       =   1
         LineStyle       =   1
         Style           =   6
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSComctlLib.TreeView Yearr 
         Height          =   5535
         Left            =   0
         TabIndex        =   32
         Top             =   240
         Visible         =   0   'False
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   9763
         _Version        =   393217
         HideSelection   =   0   'False
         Indentation     =   423
         LabelEdit       =   1
         LineStyle       =   1
         Style           =   6
         HotTracking     =   -1  'True
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSComctlLib.TreeView Genree 
         Height          =   5535
         Left            =   0
         TabIndex        =   33
         Top             =   240
         Visible         =   0   'False
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   9763
         _Version        =   393217
         HideSelection   =   0   'False
         Indentation     =   423
         LabelEdit       =   1
         LineStyle       =   1
         Style           =   6
         HotTracking     =   -1  'True
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   238
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSComctlLib.Toolbar Toolbar2 
         Height          =   1980
         Left            =   3195
         TabIndex        =   44
         Top             =   3840
         Width           =   375
         _ExtentX        =   661
         _ExtentY        =   3493
         ButtonWidth     =   609
         ButtonHeight    =   582
         Style           =   1
         ImageList       =   "ImageList2"
         DisabledImageList=   "ImageList2"
         HotImageList    =   "ImageList2"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   6
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Apply Change"
               ImageIndex      =   11
               Object.Width           =   1e-4
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Move"
               ImageIndex      =   4
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Find"
               ImageIndex      =   8
               Style           =   1
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "... to Compilation"
               ImageIndex      =   7
               Object.Width           =   1e-4
               BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
                  NumButtonMenus  =   1
                  BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Text            =   "View Compilation"
                  EndProperty
               EndProperty
            EndProperty
            BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Show all Song of Select Artist"
               ImageIndex      =   9
               Style           =   1
            EndProperty
            BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Remove"
               ImageIndex      =   3
            EndProperty
         EndProperty
      End
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   9120
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   11
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":0072
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":038E
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":06AA
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":09C6
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":0CE2
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":1006
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":18E2
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":1BFE
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":1F1A
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":2236
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":2552
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   8400
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   16
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":286E
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":314A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":3466
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":3782
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":405E
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":6812
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":6B2E
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":6E4A
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":7166
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":7482
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":779E
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":7ABA
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":7DD6
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":80F2
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":840E
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Music.frx":872A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Height          =   600
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10800
      _ExtentX        =   19050
      _ExtentY        =   1058
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      DisabledImageList=   "ImageList1"
      HotImageList    =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   10
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "New .. ."
            ImageIndex      =   5
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Object.ToolTipText     =   "Artist"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Object.ToolTipText     =   "Artist Info"
            ImageIndex      =   9
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Search Music"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Object.ToolTipText     =   "Creat Compilation"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Info"
            ImageIndex      =   15
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Generate"
            ImageIndex      =   14
            Object.Width           =   1e-4
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Refresh"
            ImageIndex      =   16
         EndProperty
      EndProperty
      BorderStyle     =   1
   End
   Begin VB.Menu ViewTre 
      Caption         =   "ViewBy"
      Visible         =   0   'False
      Begin VB.Menu TreList 
         Caption         =   "Artist"
         Index           =   0
      End
      Begin VB.Menu TreList 
         Caption         =   "Drive Label"
         Index           =   1
      End
      Begin VB.Menu TreList 
         Caption         =   "Year"
         Index           =   2
      End
      Begin VB.Menu TreList 
         Caption         =   "Genre"
         Index           =   3
      End
   End
   Begin VB.Menu Cpy 
      Caption         =   "Copy"
      Visible         =   0   'False
      Begin VB.Menu CpyM 
         Caption         =   "Copy Title"
         Index           =   0
      End
      Begin VB.Menu CpyM 
         Caption         =   "Copy Title - Leght"
         Index           =   1
      End
      Begin VB.Menu CpyM 
         Caption         =   "Copy Artist"
         Index           =   2
      End
      Begin VB.Menu CpyM 
         Caption         =   "Copy Album"
         Index           =   3
      End
      Begin VB.Menu CpyM 
         Caption         =   "Copy Artist - Title - Leght"
         Index           =   4
      End
   End
End
Attribute VB_Name = "Music"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Toolbar3New
Dim L As ListItem
Dim N
Dim MBox, STR, STR1, STR2
Dim Num As String
Dim SelL
Dim ListAll
Dim MouseDwn
Dim Node1, Node2
Dim RFBase
Dim p
Dim Clip, ClipM
Dim M
Dim ToComp
Dim SZ, Mn As Integer

Private Sub Artist_Click()
On Error Resume Next
Label1.Caption = "Artist:  " & Artist.SelectedItem.FullPath
Toolbar3New = 0
Toolbar3.Visible = False

End Sub


Private Sub Artist_KeyPress(KeyAscii As Integer)
Label1.Caption = "Artist:  " & Artist.SelectedItem.FullPath
If KeyAscii = 32 Then Song.SetFocus
End Sub



Private Sub Artist_NodeClick(ByVal Node As MSComctlLib.Node)
Label7.Caption = Node.FullPath
End Sub






Private Sub Command1_Click()

End Sub

Private Sub CpyM_Click(Index As Integer)
Clip = ""
Select Case Index
Case 0 ' Copy Title
    Clipboard.Clear
    For N = 1 To Song.ListItems.Count
    If Song.ListItems(N).Selected = True Then Clip = Clip & Song.ListItems(N) & vbCrLf
    Next N
    Clipboard.SetText Clip, vbCFText
Case 1 'Copy Title  Leght
    Clipboard.Clear
    For N = 1 To Song.ListItems.Count
    ClipM = ToMin(Song.ListItems(N).SubItems(7))
    If Song.ListItems(N).Selected = True Then Clip = Clip & Song.ListItems(N) & vbTab & ClipM & vbCrLf
    Next N
    Clipboard.SetText Clip, vbCFText
Case 2 'Copy Artist
    Clipboard.Clear
    For N = 1 To Song.ListItems.Count
    If Song.ListItems(N).Selected = True Then Clip = Clip & Song.ListItems(N).SubItems(1) & vbCrLf
    Next N
    Clipboard.SetText Clip, vbCFText
Case 3 ' Copy Album
    Clipboard.Clear
    For N = 1 To Song.ListItems.Count
    If Song.ListItems(N).Selected = True Then Clip = Clip & Song.ListItems(N).SubItems(2) & vbCrLf
    Next N
    Clipboard.SetText Clip, vbCFText
Case 4 'Copy artist - Title - Leght
    Clipboard.Clear
    For N = 1 To Song.ListItems.Count
    ClipM = ToMin(Song.ListItems(N).SubItems(7))
    If Song.ListItems(N).Selected = True Then Clip = Clip & Song.ListItems(N).SubItems(1) & vbTab & Song.ListItems(N) & vbTab & ClipM & vbCrLf
    Next N
    Clipboard.SetText Clip, vbCFText
End Select
End Sub

Private Sub DrvLab_Click()
Label1.Caption = "Drive Label:  " & DrvLab.SelectedItem.FullPath
End Sub

Private Sub DrvLab_KeyPress(KeyAscii As Integer)
Label1.Caption = "Drive Label:  " & DrvLab.SelectedItem.FullPath
If KeyAscii = 32 Then Song.SetFocus
End Sub


Private Sub Form_Resize()
ListAll = 0
Frame1.Width = Music.Width
Frame1.Height = Music.Height
Artist.Height = Music.Height - 1010
DrvLab.Height = Music.Height - 1010
Yearr.Height = Music.Height - 1010
Genree.Height = Music.Height - 1010
Frame2.Top = Music.Height - 2700
Toolbar2.Top = Music.Height - 2700
Song.Height = Music.Height - 2950
Song.Width = Music.Width - 3270
Frame2.Width = Music.Width - 3610
'Text2.Width = Frame2.Width - 870
'Text2.Height = 100
Text7.Width = Frame2.Width - 5040
Toolbar1.Width = Music.Width
Picture1(1).Width = Music.Width
Text8.Width = Song.Width
End Sub

Private Sub Frame2_Click()
Treii(0).Visible = False
End Sub

Private Sub Genree_Click()
Label1.Caption = "Genre:  " & Genree.SelectedItem.FullPath
End Sub

Private Sub Genree_KeyPress(KeyAscii As Integer)
Label1.Caption = "Genre:  " & Genree.SelectedItem.FullPath
If KeyAscii = 32 Then Song.SetFocus
End Sub


Private Sub Genree_NodeClick(ByVal Node As MSComctlLib.Node)
Label7.Caption = Node.FullPath
End Sub

Private Sub Image1_Click()
PopupMenu ViewTre, 1, Me.Left + Image1.Left - 20, Me.Top + Image1.Top + 800
End Sub

Private Sub Label1_Change()
On Error Resume Next
Select Case ListAll
Case 0
FindMusic (Artist.SelectedItem.FullPath)
Case 1
FindDriveLab (DrvLab.SelectedItem.FullPath)
Case 2
FindYear (Yearr.SelectedItem.FullPath)
Case 3
FindGenre (Genree.SelectedItem.FullPath)
End Select
End Sub

Private Sub Label2_Click()
Text1.SetFocus
End Sub



Private Sub Label3_Click(Index As Integer)
On Error Resume Next
Select Case Index
Case 5 Or 6
SZ = 0
Mn = 0
For SelL = 0 To Song.ListItems.Count
If Song.ListItems(SelL).Selected = True Then
SZ = SZ + Song.ListItems(SelL).SubItems(9)
Mn = Mn + Song.ListItems(SelL).SubItems(7)
End If
Next SelL
Label5.Caption = Format(SZ, "###,###,###,###") & " bytes"
Label6.Caption = ToMin(Mn) & " min"
End Select
End Sub

Private Sub Label4_Click()
Static M
M = Treii(0).Visible
M = M + 1
If M > 1 Then M = False
Select Case M
Case 1
Treii(0).Top = Frame2.Top + Text6.Top - 2680
Treii(0).Visible = True
Treii(0).SetFocus
Case 0
Treii(0).Visible = False
End Select
End Sub

Private Sub Label5_Click()
On Error Resume Next
SZ = 0
Mn = 0
For SelL = 0 To Song.ListItems.Count
If Song.ListItems(SelL).Selected = True Then
SZ = SZ + Song.ListItems(SelL).SubItems(9)
Mn = Mn + Song.ListItems(SelL).SubItems(7)
End If
Next SelL
Label5.Caption = Format(SZ, "###,###,###,###") & " bytes"
Label6.Caption = ToMin(Mn) & " min"
End Sub

Private Sub Label6_Click()
On Error Resume Next
SZ = 0
Mn = 0
For SelL = 0 To Song.ListItems.Count
If Song.ListItems(SelL).Selected = True Then
SZ = SZ + Song.ListItems(SelL).SubItems(9)
Mn = Mn + Song.ListItems(SelL).SubItems(7)
End If
Next SelL
Label5.Caption = Format(SZ, "###,###,###,###") & " bytes"
Label6.Caption = ToMin(Mn) & " min"
End Sub

Private Sub Label7_Change()
'If Not Label7.Caption = "" Then
'    Select Case ListAll
'    Case 0
'    MusicMove (Label7.Caption)
'    Case 1
'    'FindDriveLab (DrvLab.SelectedItem.FullPath)
'    Case 2
'    YearMove (Label7.Caption)
'    Case 3
'    GenreMove (Label7.Caption)
'    End Select
'End If
'Label7.Caption = ""
Toolbar2.Buttons(2).ToolTipText = "Move: " & Label7.Caption
End Sub

Private Sub Song_AfterLabelEdit(Cancel As Integer, NewString As String)
STR = Song.SelectedItem.Text
N = Song.SelectedItem.SubItems(13)

STR1 = "Do you want to apply the changes ''" & STR & "'' to ''" & NewString & "'' ?"
MBox = MsgBox(STR1, 36, "CD Collection")
Select Case MBox
Case 6 'Yes
AppSongChange NewString, N
Case 7 'No
NewString = STR
End Select
End Sub

Private Sub Song_Click()
On Error Resume Next
Label3(0).Caption = "Data Label :" & Song.SelectedItem.SubItems(6)
Text2.Text = Song.SelectedItem.Text
Text3.Text = Song.SelectedItem.SubItems(1)
Text4.Text = Song.SelectedItem.SubItems(2)
Text5.Text = Song.SelectedItem.SubItems(3)
Text6.Text = Song.SelectedItem.SubItems(4)
Label5.Caption = Format(Song.SelectedItem.SubItems(9), "###,###,###,###") & " bytes"
Label6.Caption = ToMin(Song.SelectedItem.SubItems(7)) & " min"
Text7.Text = Song.SelectedItem.SubItems(12)
End Sub

Private Sub Song_KeyPress(KeyAscii As Integer)
    Select Case Toolbar2.Buttons(4).Value
    Case 0
    'Find iskljucen
    Case 1
    If KeyAscii = 13 Then Text8.SetFocus
    End Select
End Sub

Private Sub Song_KeyUp(KeyCode As Integer, Shift As Integer)
On Error Resume Next
Label3(0).Caption = "Data Label :" & Song.SelectedItem.SubItems(6)
Text2.Text = Song.SelectedItem.Text
Text3.Text = Song.SelectedItem.SubItems(1)
Text4.Text = Song.SelectedItem.SubItems(2)
Text5.Text = Song.SelectedItem.SubItems(3)
Text6.Text = Song.SelectedItem.SubItems(4)
Label5.Caption = Format(Song.SelectedItem.SubItems(9), "###,###,###,###") & " bytes"
Label6.Caption = ToMin(Song.SelectedItem.SubItems(7)) & " min"
Text7.Text = Song.SelectedItem.SubItems(12)
End Sub


Private Sub Text1_Change()
List2.Clear
For N = List1.ListCount To 0 Step -1
STR = LCase(List1.List(N))
If InStr(1, STR, Trim(LCase(Text1.Text))) >= 1 Then List2.AddItem List1.List(N)
Next N

End Sub

Private Sub Song_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 2 Then PopupMenu Cpy, 1, Song.Left + X, Song.Top + Y + 620
End Sub

Private Sub Text3_Change()
If Len(Trim(Text3.Text)) > 0 Then Check1(0).Value = 1
If Len(Trim(Text3.Text)) <= 0 Then Check1(0).Value = 0
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)
If Len(Trim(Text3.Text)) > 0 Then Check1(0).Value = 1
If Len(Trim(Text3.Text)) <= 0 Then Check1(0).Value = 0
End Sub

Private Sub Text4_Change()
If Len(Trim(Text4.Text)) > 0 Then Check1(1).Value = 1
If Len(Trim(Text4.Text)) <= 0 Then Check1(1).Value = 0
End Sub

Private Sub Text5_Change()
If Len(Trim(Text5.Text)) > 0 Then Check1(2).Value = 1
If Len(Trim(Text5.Text)) <= 0 Then Check1(2).Value = 0
End Sub

Private Sub Text6_Change()
If Len(Trim(Text6.Text)) > 0 Then Check1(3).Value = 1
If Len(Trim(Text6.Text)) <= 0 Then Check1(3).Value = 0
End Sub

Private Sub Text7_Change()
If Len(Trim(Text7.Text)) > 0 Then Check1(4).Value = 1
If Len(Trim(Text7.Text)) <= 0 Then Check1(4).Value = 0
End Sub

Private Sub Text8_Change()
On Error Resume Next
Song.ListItems.Clear
GLF.PBar.Visible = True
GLF.PBar.Max = Fix(ListF.ListItems.Count / 4)
If Trim(Text8.Text) = "" Then GoTo 10
For N = 0 To ListF.ListItems.Count
GLF.PBar.Value = Fix(N / 4)
STR = ListF.ListItems(N).Text
If InStr(1, LCase(STR), Trim(LCase(Text8.Text))) >= 1 Then
    Set L = Song.ListItems.Add(, , STR)
    L.SubItems(1) = ListF.ListItems(N).SubItems(1)
    L.SubItems(2) = ListF.ListItems(N).SubItems(2)
    L.SubItems(3) = ListF.ListItems(N).SubItems(3)
    L.SubItems(4) = ListF.ListItems(N).SubItems(4)
    L.SubItems(5) = ListF.ListItems(N).SubItems(5)
    L.SubItems(6) = ListF.ListItems(N).SubItems(6)
    L.SubItems(7) = ListF.ListItems(N).SubItems(7)
    L.SubItems(8) = ListF.ListItems(N).SubItems(8)
    L.SubItems(9) = ListF.ListItems(N).SubItems(9)
    L.SubItems(10) = ListF.ListItems(N).SubItems(10)
    L.SubItems(11) = ListF.ListItems(N).SubItems(11)
    L.SubItems(12) = ListF.ListItems(N).SubItems(12)
    L.SubItems(13) = ListF.ListItems(N).SubItems(13)
End If
Next N
GLF.PBar.Visible = False
Exit Sub
10:
GLF.PBar.Visible = False
End Sub

Private Sub Text8_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then Song.SetFocus
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
Select Case Button.Index
Case 1
'New
If ListAll = 0 Then
Toolbar3New = Toolbar3New + 1
If Toolbar3New > 1 Then Toolbar3New = 0
    Select Case Toolbar3New
    Case 0
    Toolbar3.Visible = False
    Case 1
    Toolbar3.Visible = True
    End Select
End If
Case 2
Load ArtistFrm
GLF.Enabled = False
ArtistFrm.Show 1
Case 5
scanf.Caption = "Search for Music"
scanf.Show 1
Case 6
'Label1.Caption = "Artist"
'Label2.Caption = "Compilation"
'Song.ListItems.Clear

'Toolbar2.Buttons(1).Enabled = False
'Toolbar2.Buttons(2).Enabled = False
'Toolbar2.Buttons(3).Enabled = False
'Toolbar2.Buttons(4).Enabled = True
'Toolbar2.Buttons(5).Enabled = True
'Toolbar2.Buttons(6).Enabled = True
'For N = 1 To compilation.ListItems.Count
'Set L = Song.ListItems.Add(, , compilation.ListItems(N).Text)
'    L.SubItems(1) = compilation.ListItems(N).SubItems(1)
'    L.SubItems(2) = compilation.ListItems(N).SubItems(2)
'    L.SubItems(3) = compilation.ListItems(N).SubItems(3)
'    L.SubItems(4) = compilation.ListItems(N).SubItems(4)
'    L.SubItems(5) = compilation.ListItems(N).SubItems(5)
'    L.SubItems(6) = compilation.ListItems(N).SubItems(6)
'    L.SubItems(7) = compilation.ListItems(N).SubItems(7)
'    L.SubItems(8) = compilation.ListItems(N).SubItems(8)
'    L.SubItems(9) = compilation.ListItems(N).SubItems(9)
'    L.SubItems(10) = compilation.ListItems(N).SubItems(10)
'    L.SubItems(11) = compilation.ListItems(N).SubItems(11)
'    L.SubItems(12) = compilation.ListItems(N).SubItems(12)
'    L.SubItems(13) = compilation.ListItems(N).SubItems(13)
'Next N
Case 8
Call InfoM
Case 9
Load Gen
GLF.Enabled = False
Gen.Combo1.ListIndex = 0
Gen.Show 1
Case 10
Music.Song.ListItems.Clear
    Select Case ListAll
    Case 0
    Call LSTArtAlbum
    Label1.Caption = "Artist:"
    Case 1
    Call LoadDriveLabel
    Label1.Caption = "Drive Label:"
    Case 2
    Call LoadYear
    Label1.Caption = "Year:"
    Case 3
    Call LoadGenre
    Label1.Caption = "Genre:"
    End Select
End Select
End Sub

Public Function ToMin(Numb As Integer)
On Error Resume Next
    M = Numb
    M = Fix(M / 60)
    M = M & ":" & Numb - (M * 60)
    ToMin = M
End Function

Private Sub Toolbar2_ButtonClick(ByVal Button As MSComctlLib.Button)
On Error Resume Next

If Len(Trim(Text5.Text)) >= 1 Then Check1(2).Value = 1
If Len(Trim(Text5.Text)) = 0 Then Check1(2).Value = 0
If Len(Trim(Text6.Text)) >= 1 Then Check1(3).Value = 1
If Len(Trim(Text6.Text)) = 0 Then Check1(3).Value = 0
If Len(Trim(Text7.Text)) >= 1 Then Check1(4).Value = 1
If Len(Trim(Text8.Text)) = 0 Then Check1(4).Value = 0
Select Case Button.Index
Case 1
For SelL = Song.ListItems.Count To 1 Step -1
If Song.ListItems(SelL).Selected = True Then
Text3.Text = swp(Text3.Text)
Text4.Text = swp(Text4.Text)
Text5.Text = swp(Text5.Text)
Text6.Text = swp(Text6.Text)
If Check1(0).Value = 1 Then Song.ListItems(SelL).SubItems(1) = Trim(Text3.Text): Text3.Text = Trim(Text3.Text)
If Check1(1).Value = 1 Then Song.ListItems(SelL).SubItems(2) = Trim(Text4.Text): Text4.Text = Trim(Text4.Text)
If Check1(2).Value = 1 Then Song.ListItems(SelL).SubItems(3) = Trim(Text5.Text): Text5.Text = Trim(Text5.Text)
If Check1(3).Value = 1 Then Song.ListItems(SelL).SubItems(4) = Trim(Text6.Text): Text6.Text = Trim(Text6.Text)
If Check1(4).Value = 1 Then Song.ListItems(SelL).SubItems(12) = Trim(Text7.Text): Text7.Text = Trim(Text7.Text)
AppSongChange1 Song.ListItems(SelL).SubItems(11), Song.ListItems(SelL).SubItems(13), Text3.Text, Text4.Text, Text5.Text, Text6.Text, Text7.Text
End If
Next SelL

Case 2
    Select Case ListAll
    Case 0
    MusicMove (Label7.Caption)
    Case 1
    'FindDriveLab (DrvLab.SelectedItem.FullPath)
    Case 2
    YearMove (Label7.Caption)
    Case 3
    GenreMove (Label7.Caption)
    End Select
For SelL = Song.ListItems.Count To 1 Step -1
If Song.ListItems(SelL).Selected = True Then Song.ListItems.Remove (SelL)
Next SelL
Case 3 'Find
    Select Case Toolbar2.Buttons(3).Value
    Case 0
    Picture1(1).BackColor = &H808080
    Label2.ForeColor = &H80000012
    Text8.Visible = False
    Case 1
    Call ToFindLS
    Text8.Visible = True
    Text8.BackColor = &HC0&
    Picture1(1).BackColor = &HC0&
    Label2.ForeColor = &H8000000F
    Text8.SetFocus
    End Select
Case 4 'To compilation
Toolbar2.Buttons(1).Enabled = True
Toolbar2.Buttons(2).Enabled = True
Toolbar2.Buttons(3).Enabled = True
Toolbar2.Buttons(4).Enabled = True
Toolbar2.Buttons(5).Enabled = True
Toolbar2.Buttons(6).Enabled = True
For N = 0 To Song.ListItems.Count
If Song.ListItems(N).Selected = True Then
    Set L = compilation.ListItems.Add(, , Song.ListItems(N).Text)
        L.SubItems(1) = Song.ListItems(N).SubItems(1)
        L.SubItems(2) = Song.ListItems(N).SubItems(2)
        L.SubItems(3) = Song.ListItems(N).SubItems(3)
        L.SubItems(4) = Song.ListItems(N).SubItems(4)
        L.SubItems(5) = Song.ListItems(N).SubItems(5)
        L.SubItems(6) = Song.ListItems(N).SubItems(6)
        L.SubItems(7) = Song.ListItems(N).SubItems(7)
        L.SubItems(8) = Song.ListItems(N).SubItems(8)
        L.SubItems(9) = Song.ListItems(N).SubItems(9)
        L.SubItems(10) = Song.ListItems(N).SubItems(10)
        L.SubItems(11) = Song.ListItems(N).SubItems(11)
        L.SubItems(12) = Song.ListItems(N).SubItems(12)
        L.SubItems(13) = Song.ListItems(N).SubItems(13)
    End If
Next N
Case 5
If Artist.Visible = True Then Label1.Caption = "Artist": FindMusic (Artist.SelectedItem.FullPath)
Case 6
If ToComp = 1 Then
For SelL = Song.ListItems.Count To 1 Step -1
If Song.ListItems(SelL).Selected = True Then
    Song.ListItems.Remove (SelL)
    compilation.ListItems.Remove (SelL)
    End If
Next SelL
Exit Sub

End If
RFBase = 0
For SelL = Song.ListItems.Count To 1 Step -1
If Song.ListItems(SelL).Selected = True Then RFBase = RFBase + 1
Next SelL
p = "Delete " & RFBase & ", infomation from database!!"
p = MsgBox(p, 52, "Remove")
    Select Case p
    Case 6
    Call Remm
    Case 7
    Exit Sub
    End Select
End Select
End Sub


Private Sub Toolbar2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
If Y > 990 And Button = 2 Then
ToComp = ToComp + 1
If ToComp > 1 Then ToComp = 0
Select Case ToComp
Case 1 'Compilation
Picture1(1).BackColor = &HFF8080
Label1.Caption = "Artist"
Label2.Caption = "Compilation"
Song.ListItems.Clear

Toolbar2.Buttons(1).Enabled = False
Toolbar2.Buttons(2).Enabled = False
Toolbar2.Buttons(3).Enabled = False
Toolbar2.Buttons(4).Enabled = True
Toolbar2.Buttons(5).Enabled = True
Toolbar2.Buttons(6).Enabled = True
For N = 1 To compilation.ListItems.Count
Set L = Song.ListItems.Add(, , compilation.ListItems(N).Text)
    L.SubItems(1) = compilation.ListItems(N).SubItems(1)
    L.SubItems(2) = compilation.ListItems(N).SubItems(2)
    L.SubItems(3) = compilation.ListItems(N).SubItems(3)
    L.SubItems(4) = compilation.ListItems(N).SubItems(4)
    L.SubItems(5) = compilation.ListItems(N).SubItems(5)
    L.SubItems(6) = compilation.ListItems(N).SubItems(6)
    L.SubItems(7) = compilation.ListItems(N).SubItems(7)
    L.SubItems(8) = compilation.ListItems(N).SubItems(8)
    L.SubItems(9) = compilation.ListItems(N).SubItems(9)
    L.SubItems(10) = compilation.ListItems(N).SubItems(10)
    L.SubItems(11) = compilation.ListItems(N).SubItems(11)
    L.SubItems(12) = compilation.ListItems(N).SubItems(12)
    L.SubItems(13) = compilation.ListItems(N).SubItems(13)
Next N

Case 0 'Song
Picture1(1).BackColor = &H808080
Label1.Caption = "Artist"
Label2.Caption = "Song"
Song.ListItems.Clear
Toolbar2.Buttons(1).Enabled = True
Toolbar2.Buttons(2).Enabled = True
Toolbar2.Buttons(3).Enabled = True
Toolbar2.Buttons(4).Enabled = True
Toolbar2.Buttons(5).Enabled = True
Toolbar2.Buttons(6).Enabled = True

End Select
End If

Song.SetFocus
End Sub


Private Sub Toolbar3_ButtonClick(ByVal Button As MSComctlLib.Button)
On Error Resume Next
Toolbar3New = 0
Toolbar3.Visible = False
Select Case Button.Index
Case 1
STR = vbCrLf & "Write/Insert" & vbCrLf & "Artist Name"
STR = InputBox(STR, "New Artist")
If Len(Trim(STR)) >= 1 Then Set Node1 = Artist.Nodes.Add(, , , Trim(STR))
Case 2
STR = vbCrLf & "Write/Insert" & vbCrLf & "New Album for " & Artist.SelectedItem.Tag
STR = InputBox(STR, "New Artist")
    Node1 = Artist.SelectedItem.FirstSibling.Index - 1
    Select Case Node1
    Case 0
    Node1 = Artist.SelectedItem.Index
    Case Default
    Node1 = (Artist.SelectedItem.FirstSibling - 1)
    End Select

If Len(Trim(STR)) >= 1 Then Set Node2 = Artist.Nodes.Add(Node1, tvwChild, , Trim(STR))
End Select
End Sub


Private Sub Treii_DblClick(Index As Integer)
Select Case Index
Case 0
Text6.Text = Treii(0).SelectedItem.Text
End Select
End Sub

Private Sub Treii_KeyPress(Index As Integer, KeyAscii As Integer)
If KeyAscii = 13 Then Text6.Text = Treii(0).SelectedItem.Text: Treii(0).Visible = False
End Sub

Private Sub Treii_LostFocus(Index As Integer)
Treii(0).Visible = False
End Sub

Private Sub TreList_Click(Index As Integer)
ListAll = Index
Select Case Index
Case 0
Artist.Visible = True
DrvLab.Visible = False
Yearr.Visible = False
Genree.Visible = False
Music.Song.ListItems.Clear
Label1.Caption = "Artist"
If Not Artist.Nodes.Count >= 2 Then Call LSTArtAlbum
Case 1
Artist.Visible = False
DrvLab.Visible = True
Yearr.Visible = False
Genree.Visible = False
Music.Song.ListItems.Clear
Label1.Caption = "Drive Label"
If Not DrvLab.Nodes.Count >= 2 Then Call LoadDriveLabel
Case 2
Artist.Visible = False
DrvLab.Visible = False
Yearr.Visible = True
Genree.Visible = False
Music.Song.ListItems.Clear
Label1.Caption = "Year"
If Not Yearr.Nodes.Count >= 2 Then Call LoadYear
Case 3
Artist.Visible = False
DrvLab.Visible = False
Yearr.Visible = False
Genree.Visible = True
Music.Song.ListItems.Clear
Label1.Caption = "Genre"
If Not Genree.Nodes.Count >= 2 Then Call LoadGenre
End Select
End Sub




Private Sub Yearr_Click()
Label1.Caption = "Year:  " & Yearr.SelectedItem.FullPath
End Sub

Private Sub Yearr_KeyPress(KeyAscii As Integer)
Label1.Caption = "Year:  " & Yearr.SelectedItem.FullPath
If KeyAscii = 32 Then Song.SetFocus
End Sub

Private Sub Yearr_NodeClick(ByVal Node As MSComctlLib.Node)
Label7.Caption = Node.FullPath
End Sub
