SendMode Input
CoordMode, Pixel, Screen

F1::
Pause, Off
MouseMove 800, 630
Loop {
    Send {Backspace}
    Sleep 50
    Send ^a
    Sleep 50
    Send {Backspace}
    Sleep 50

    Send ^v
    Sleep 50
    Send {Enter}
    Sleep 500

    PixelGetColor, color, 800, 630, RGB
    if (color = 0x4452BB)
    {
        Send {Click Left}
        Sleep 5000
    }
}
return

F2::Pause
Esc::ExitApp