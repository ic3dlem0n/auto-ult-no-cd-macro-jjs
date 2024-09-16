;Delays are set at 80 to account for lag you can change them but it could break
toggle := false
loopStopped := false

=:: 
{
    toggle := !toggle
    if (toggle) {
        SetTimer, LoopSequence, 3
        loopStopped := false
    } else {
        SetTimer, LoopSequence, Off
        loopStopped := true
    }
}
return

LoopSequence:
{
    Send, {Enter}
    Sleep, 80

    Send, {Down}
    Sleep, 80

    Send, {Enter}
    Sleep, 80
    Send, {Enter}
    Sleep, 80

    Send, {Up}
    Sleep, 80
}
return

PostLoopActions:
{
    if (loopStopped) {
        loopStopped := false

            Send, {Down}
            Sleep, 50

            Send, {Enter}
            Sleep, 80

        Loop, 6 {
            Send, {Up}
            Sleep, 80
        }

        Send, {Enter}
        Sleep, 80

        Send, \
    }
}
return

