#Requires AutoHotkey v2
#Include "%A_ScriptDir%"
#UseHook True

; macOS like keymap
!/::^/
!1::^1
!2::^2
!3::^3
!4::^4
!5::^5
!6::^6
!7::^7
!8::^8
!9::^9
!0::^0
!a::^a
!c::^c
!f::^f
!i::^i
!j::^j
!k::^k
!l::^l
!n::^n
!p::^p
!q::!F4
!r::^r
!s::^s
!t::^t
!v::^v
!w::^w
!x::^x
!z::^z
!Enter::^Enter
!Space::#s
!LButton:: {
    SendInput "{Control Down}"
    MouseClick "left"
    SendInput "{Control Up}"
}

; Windows keymap
!e::#e
!Up::#Up
!Right::#Right
!Down::#Down
!Left::#Left
!+e::^+e

; Emacs like keymap
GroupAdd "EmacsKaymapIgnoreApplications", "ahk_class CASCADIA_HOSTING_WINDOW_CLASS" ; Windows Terminal
GroupAdd "EmacsKaymapIgnoreApplications", "ahk_exe wezterm-gui.exe" ; WezTerm

#Hotif not WinActive("ahk_group EmacsKaymapIgnoreApplications")
^p:: SendInput "{Up}"
^f:: SendInput "{Right}"
^n:: SendInput "{Down}"
^b:: SendInput "{Left}"
^+p:: SendInput "{Shift}+{Up}"
^+f:: SendInput "{Shift}+{Right}"
^+n:: SendInput "{Shift}+{Down}"
^+b:: SendInput "{Shift}+{Left}"
^a:: SendInput "{Home}"
^e:: SendInput "{End}"
^d:: SendInput "{Delete}"
^h:: SendInput "{BackSpace}"
^m:: SendInput "{Enter}"
^k:: SendInput "{Shift}+{End}{BackSpace}"
#Hotif