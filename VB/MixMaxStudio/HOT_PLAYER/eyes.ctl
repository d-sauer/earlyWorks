VERSION 5.00
Begin VB.UserControl Eyes 
   AutoRedraw      =   -1  'True
   ClientHeight    =   1290
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1755
   FillStyle       =   0  'Solid
   ScaleHeight     =   86
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   117
   ToolboxBitmap   =   "EYES.ctx":0000
   Begin VB.Timer tmrEyes 
      Interval        =   200
      Left            =   240
      Top             =   360
   End
End
Attribute VB_Name = "Eyes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Private Type POINTAPI
    x As Long
    y As Long
End Type

Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Private Declare Function ScreenToClient Lib "user32" (ByVal hwnd As Long, lpPoint As POINTAPI) As Long

'Default Property Values:
Const m_def_EdgeColor = vbBlack
Const m_def_PupilColor = vbBlack
Const m_def_EyeballColor = vbWhite
'Property Variables:
Dim m_EdgeColor As OLE_COLOR
Dim m_PupilColor As OLE_COLOR
Dim m_EyeballColor As OLE_COLOR

' Drawing dimensions.
Private cx1 As Single
Private cx2 As Single
Private cy As Single
Private radius1 As Single
Private radius2 As Single
Private aspect As Single
Private hgt As Single
Private wid As Single
' Draw one eyeball.
Private Sub DrawEye(ByVal x1 As Single, ByVal y1 As Single, ByVal x As Single, ByVal y As Single)
Dim x2 As Single
Dim y2 As Single
Dim dx As Single
Dim dy As Single
Dim dist As Single

    ' Draw the outside of the eye.
    FillColor = m_EyeballColor
    Circle (x1, y1), radius1, m_EdgeColor, , , aspect

    dx = x - x1
    dy = y - y1
    dist = Sqr(dx * dx + dy * dy)
    If dist > 0 Then
        dx = dx / dist
        dy = dy / dist
    Else
        dx = 0
        dy = 0
    End If

    ' Draw the pupil.
    x2 = x1 + wid * dx / 2
    y2 = y1 + hgt * dy / 2
    FillColor = m_PupilColor
    Circle (x2, y2), radius2, m_PupilColor, , , aspect
End Sub
' Draw the eyes looking at the indicated point.
Private Sub DrawEyes(ByVal x As Single, ByVal y As Single)
    Cls
    DrawEye cx1, cy, x, y
    DrawEye cx2, cy, x, y
End Sub


' Draw the eyes looking toward the cursor.
Private Sub tmrEyes_Timer()
Static LastX As Long
Static LastY As Long

Dim pt As POINTAPI

    If Not Ambient.UserMode Then Exit Sub
    
    ' See where the cursor is.
    GetCursorPos pt

    ' If the cursor hasn't moved, do nothing.
    If (LastX = pt.x) And (LastY = pt.y) _
        Then Exit Sub
    LastX = pt.x
    LastY = pt.y

    ' Convert into form coordinates.
    ScreenToClient hwnd, pt

    ' Draw the eyes.
    DrawEyes pt.x, pt.y
End Sub
'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=UserControl,UserControl,-1,BackColor
Public Property Get BackColor() As OLE_COLOR
Attribute BackColor.VB_Description = "Returns/sets the background color used to display text and graphics in an object."
    BackColor = UserControl.BackColor
End Property

Public Property Let BackColor(ByVal New_BackColor As OLE_COLOR)
    UserControl.BackColor() = New_BackColor
    PropertyChanged "BackColor"
    If Not Ambient.UserMode Then _
        DrawEyes ScaleWidth * 1.5, ScaleHeight
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=tmrEyes,tmrEyes,-1,Interval
Public Property Get Interval() As Long
Attribute Interval.VB_Description = "Returns/sets the number of milliseconds between calls to a Timer control's Timer event."
    Interval = tmrEyes.Interval
End Property

Public Property Let Interval(ByVal New_Interval As Long)
    tmrEyes.Interval() = New_Interval
    PropertyChanged "Interval"
End Property

'Initialize Properties for User Control
Private Sub UserControl_InitProperties()
    m_EdgeColor = m_def_EdgeColor
    m_PupilColor = m_def_PupilColor
    m_EyeballColor = m_def_EyeballColor
End Sub
'Load property values from storage
Private Sub UserControl_ReadProperties(PropBag As PropertyBag)

    UserControl.BackColor = PropBag.ReadProperty("BackColor", &H8000000F)
    tmrEyes.Interval = PropBag.ReadProperty("Interval", 1000)
    m_EdgeColor = PropBag.ReadProperty("EdgeColor", m_def_EdgeColor)
    m_PupilColor = PropBag.ReadProperty("PupilColor", m_def_PupilColor)
    m_EyeballColor = PropBag.ReadProperty("EyeballColor", m_def_EyeballColor)
    tmrEyes.Enabled = PropBag.ReadProperty("Enabled", True)

    ' Make it draw now.
    tmrEyes_Timer
End Sub

' Save dimensions for later drawing.
Private Sub UserControl_Resize()

    cx1 = ScaleWidth * 0.25
    cx2 = ScaleWidth * 0.75
    cy = ScaleHeight * 0.5
    
    hgt = ScaleHeight * 0.4
    wid = ScaleWidth / 2 * 0.4
    If hgt > wid Then
        radius1 = hgt
    Else
        radius1 = wid
    End If
    radius2 = radius1 * 0.5
    aspect = hgt / wid
    
    If Not Ambient.UserMode Then _
        DrawEyes ScaleWidth * 1.5, ScaleHeight
End Sub
'Write property values to storage
Private Sub UserControl_WriteProperties(PropBag As PropertyBag)

    Call PropBag.WriteProperty("BackColor", UserControl.BackColor, &H8000000F)
    Call PropBag.WriteProperty("Interval", tmrEyes.Interval, 1000)
    Call PropBag.WriteProperty("EdgeColor", m_EdgeColor, m_def_EdgeColor)
    Call PropBag.WriteProperty("PupilColor", m_PupilColor, m_def_PupilColor)
    Call PropBag.WriteProperty("EyeballColor", m_EyeballColor, m_def_EyeballColor)
    Call PropBag.WriteProperty("Enabled", tmrEyes.Enabled, True)
End Sub
Public Property Get EdgeColor() As OLE_COLOR
    EdgeColor = m_EdgeColor
End Property

Public Property Let EdgeColor(ByVal New_EdgeColor As OLE_COLOR)
    m_EdgeColor = New_EdgeColor
    PropertyChanged "EdgeColor"
    If Not Ambient.UserMode Then _
        DrawEyes ScaleWidth * 1.5, ScaleHeight
End Property

Public Property Get PupilColor() As OLE_COLOR
    PupilColor = m_PupilColor
End Property

Public Property Let PupilColor(ByVal New_PupilColor As OLE_COLOR)
    m_PupilColor = New_PupilColor
    PropertyChanged "PupilColor"
    If Not Ambient.UserMode Then _
        DrawEyes ScaleWidth * 1.5, ScaleHeight
End Property

Public Property Get EyeballColor() As OLE_COLOR
    EyeballColor = m_EyeballColor
End Property

Public Property Let EyeballColor(ByVal New_EyeballColor As OLE_COLOR)
    m_EyeballColor = New_EyeballColor
    PropertyChanged "EyeballColor"
    If Not Ambient.UserMode Then _
        DrawEyes ScaleWidth * 1.5, ScaleHeight
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=tmrEyes,tmrEyes,-1,Enabled
Public Property Get Enabled() As Boolean
Attribute Enabled.VB_Description = "Returns/sets a value that determines whether an object can respond to user-generated events."
    Enabled = tmrEyes.Enabled
End Property

Public Property Let Enabled(ByVal New_Enabled As Boolean)
    tmrEyes.Enabled() = New_Enabled
    PropertyChanged "Enabled"
End Property

