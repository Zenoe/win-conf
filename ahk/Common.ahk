﻿#Include d:/portable/dotfiles/ahk/func.ahk

#SingleInstance Force
SetTitleMatchMode, 2
;DetectHiddenWindows, on

;*************************************
cos_mousedrag_treshold := 20 ; pixels
#IfWinNotActive ahk_class ConsoleWindowClass

; ~mbutton::
;   WinGetClass cos_class, A
;   if (cos_class == "Emacs")
;     SendInput ^y
;   else
;     SendInput ^v
;   return
  
#IfWinNotActive


;; clipx
^mbutton::
  sendinput ^+{insert}
  return

#i::Run, "C:\Windows\system32\rundll32.exe" sysdm.cpl`,EditEnvironmentVariables
return
; #+i::Run, "C:\WINDOWS\system32\rundll32.exe" shell32.dll,Control_RunDLL sysdm.cpl,,3  ; 直接在“运行”执行是OK的
#+i::Run "C:\WINDOWS\system32\rundll32.exe" shell32.dll`,Control_RunDLL sysdm.cpl
return

;; pdf
<#+p::
ActiveWinClass("classFoxitReader")
return


;**************Notepad
<#o::
ActiveWinClass("Notepad", "Notepad")
return

<#+o::
run "notepad"
return


<#f::
ActiveWinClass("EVERYTHING", "D:\portable\Everything\Everything.exe")
return

<#+f::
ActiveWinClass("EVERYTHING", "D:\portable\Everything\Everything.exe", "Clipboard")
return

<#+s::
run regedit.exe
return

<#F12::
ActiveWinClass("TXGuiFoundation")
return

<#F11::
if WinExist("ahk_class ahk_class #32770")
    {
    ifWinActive
        {
        WinMinimize, ahk_class ahk_class #32770
        }
    else
    {
        WinActivate
    }
    return
}
return

#v::
ActiveWinClass("VirtualConsoleClass", "D:\portable\cmder\vendor\conemu-maximus5\ConEmu64.exe")^
; ActiveWinClass("ConsoleWindowClass","cmd.exe")
return

#x::
ActiveWinClass("mintty", "D:\portable\.babun\cygwin\bin\mintty.exe")^
return

#s::
IfWinExist ,Microsoft Visual Studio
{
ifWinActive
{
   WinActivatebottom Microsoft Visual Studio
}
else
   WinActivate
}
return
;-----------------------------------------------------
#z::
ActiveWinClass("Emacs", "D:\portable\emacs\bin\runemacs.exe")
; invoke #z without return would disable win7's drag and drop function
; it's very important to return
return

; if ActiveWinClass("Emacs") = false
;   {
;     IfWinExist , ahk_class ahk_class mintty
;     {
;       WinActivate

;     }
;     else
;     {
;       ActiveWinClass("mintty", "D:\portable\.babun\cygwin\bin\mintty.exe")
;     }
;     ; WinWait, ahk_class mintty ;Waits until the specified window exists.
;       ;Waits until the specified window is active
;       WinWaitActive, ahk_class mintty 
;       send, emacs-w32 & {enter}
;       WinMinimize, ahk_class mintty
;   }
; return

$CapsLock::ESC
LAlt & Capslock::SetCapsLockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"

:://b:: 
  Run http://www.baidu.com
return 

<#t::
if WinExist Windows 任务
WinActivate 
else 
Run taskmgr.exe 
return 

<#+t::
Run D:\portable\ProcessExplorer\procexp.exe
return

<#q:: !F4 ;退出
<#h::Send {Left}
<#j::Send {Down}
<#k::Send {Up}
<#;::Send {Right}
<#,::Send ^+{Left} 
<#.::Send ^+{Right} 
<#a::Send {Home}
<#e::Send {End}
; <#+P::Send ^{Home}
; #Capslock::Send {Enter}

;选择一行 
<#space::
Send {Home}
Send +{End}
return

#?::Run calc.exe
return 

<#w::
ActiveWinClass("CabinetWClass", "explorer.exe")
return
<#n::
ActiveWinClass("TNavicatMainForm", "C:\Program Files\PremiumSoft\Navicat Premium\navicat.exe")
return

<#+w::
Run shell:RecycleBinFolder
return

; <#+w::
; ; run network explorer
; Run explorer.exe ::{208D2C60-3AEA-1069-A2D7-08002B30309D}
; return


