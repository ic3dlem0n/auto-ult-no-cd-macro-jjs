toggle := false
loopStopped := false

-::
{
    Send, \ 
    Sleep, 80

    Loop, 7 {
        Send, {Right}
        Sleep, 80
    }

    Send, {Enter}
    Sleep, 80

    Loop, 3 {
        Send, {Down}
        Sleep, 80
    }

    Send, {Enter}
    Sleep, 80

    Send, {Up}
    Sleep, 80

    Send, {Right}
    Sleep, 80

    Send, {Enter}
    Sleep, 80

  
    Loop, 6 {
        Send, {Down}
        Sleep, 80
    }

    Send, {Enter}
    Sleep, 80

    Send, {Up}
    Send, {=}
}
return

=:: 
{
    toggle := !toggle
    if (toggle) {
        SetTimer, LoopSequence, 3
        loopStopped := false
    } else {
        SetTimer, LoopSequence, Off
        loopStopped := true
        PostLoopActions()
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

; Actions after stopping the loop
PostLoopActions:
{
    if (loopStopped) {
        loopStopped := false 

        ; Sending Up key 5 times
        Loop, 5 {
            Send, {Up}
            Sleep, 80
        }

        Send, {Enter}
        Sleep, 80

        Send, \
    }
}
return
