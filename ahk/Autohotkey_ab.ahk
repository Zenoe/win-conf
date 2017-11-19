#Include D:\portable\dotfiles\ahk\Common.ahk

;******************Chrome
<#c::
IfWinExist ,Chrome
{
    ifWinActive
    {
        ; WinActivatebottom ,Chrome
    }
    else
    {
        WinActivate
    }
    return
}
else
{
    run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
    return
}

return 

<#]::
run C:/Users/ab/Documents/AutoHotkey.ahk
return



; <#+z::
; run emacsclient "newfile.txt" 
; return
;-----------------------------------------------------

