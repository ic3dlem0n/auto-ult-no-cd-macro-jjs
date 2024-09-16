;Delays are set at 80 to account for lag you can change them but it could break
toggle := false

=:: 
{
    toggle := !toggle
    if (toggle) {
        SetTimer, LoopSequence, 3
    } else {
        SetTimer, LoopSequence, Off
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
