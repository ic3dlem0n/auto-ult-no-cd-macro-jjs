; AutoHotkey script to perform a sequence of key presses with 80 ms delays when the minus key is pressed

; delays are set at 80 to account for lag you can change it but it could break
-::
{
    Send, \ 
    Sleep, 80

    Send, {Right}
    Sleep, 80
    Send, {Right}
    Sleep, 80
    Send, {Right}
    Sleep, 80
    Send, {Right}
    Sleep, 80
    Send, {Right}
    Sleep, 80
    Send, {Right}
    Sleep, 80
    Send, {Right}
    Sleep, 80

    Send, {Enter}
    Sleep, 80

    Send, {Down}
    Sleep, 80

    Send, {Down}
    Sleep, 80

    Send, {Down}
    Sleep, 80

    Send, {Enter}
    Sleep, 80

    Send, {Up}
    Sleep, 80

    Send, {Right}
    Sleep, 80

    Send, {Enter}
    Sleep, 80

    Send, {Down}
    Sleep, 80
    Send, {Down}
    Sleep, 80
    Send, {Down}
    Sleep, 80
    Send, {Down}
    Sleep, 80
    Send, {Down}
    Sleep, 80
    Send, {Down}
    Sleep, 80

    Send, {Enter}
    Sleep, 80

    Send, {Up}
}
return
