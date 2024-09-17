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
        PostLoopActions()  ; Call PostLoopActions when stopping the loop
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
    Sleep, 90
}
return

PostLoopActions()
{
    Send, {Down}
    Sleep, 90

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
