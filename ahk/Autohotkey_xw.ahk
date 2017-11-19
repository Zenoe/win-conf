#Include D:\portable\dotfiles\ahk\Common.ahk

;********command line


; If WinExist("ahk_class ahk_class mintty")
; {
; ifWinActive
; WinActivatebottom , ahk_class mintty
; else
; WinActivate
; }
; else
; run D:\cygwin\bin\mintty.exe -i /Cygwin-Terminal.ico -
; return

#c::
ActiveWinClass("Chrome_WidgetWin_1", "C:\Program Files\Google\Chrome\Application\chrome.exe")^
return 

<#[::
run emacsclient --no-wait "c:/Documents and Settings/xwrj/My Documents/AutoHotkey.ahk"
return

<#]::
run c:/Documents and Settings/xwrj/My Documents/AutoHotkey.ahk
return


; <#+z::
; run emacsclient "newfile.txt" 
; return
;-----------------------------------------------------
; <#x::
; myclip:=clipboard
; gurl := "www.iciba.com/" . myclip 
; ; Run chrome.exe %gurl%
; run chrome.exe %gurl%
; return
