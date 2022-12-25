#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#UseHook, On
#SingleInstance, force
; F13 & Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; macOS like keymap
F13 & /::^/
F13 & 1::^1
F13 & 2::^2
F13 & 3::^3
F13 & 4::^4
F13 & 5::^5
F13 & 6::^6
F13 & 7::^7
F13 & 8::^8
F13 & 9::^9
F13 & 0::^0
F13 & a::^a
F13 & c::^c
F13 & f::^f
F13 & i::^i
F13 & k::^k
F13 & l::^l
F13 & n::^n
F13 & p::^p
F13 & q::!F4
F13 & r::^r
F13 & s::^s
F13 & t::^t
F13 & v::^v
F13 & w::^w
F13 & x::^x
F13 & z::^z
F13 & Enter::^Enter
F13 & Space::#s

F13 & Tab:: 
    AltTabMenu := true
    If GetKeyState("Shift","P")
        Send {Alt Down}{Shift Down}{Tab}
    else
        Send {Alt Down}{Tab}
return

If (AltTabMenu) {
    ~*F13 Up::
        Send {Shift Up}{Alt Up}{Tab Up}
        AltTabMenu := false 
    return
}

; Windows keymap
F13 & e::#e
F13 & Up::#Up
F13 & Right::#Right
F13 & Down::#Down
F13 & Left::#Left

; Emacs like keymap
#IfWinNotActive, ahk_exe WindowsTerminal.exe
^p::Send,  {Up}
^f::Send,  {Right}
^n::Send,  {Down}
^b::Send,  {Left}
^+p::Send, {Shift}+{Up}
^+f::Send, {Shift}+{Right}
^+n::Send, {Shift}+{Down}
^+b::Send, {Shift}+{Left}
^a::Send,  {Home}
^e::Send,  {End}
^d::Send,  {Delete}
^h::Send,  {BackSpace}
^m::Send,  {Enter}
^k::Send,  {Shift}+{End}{BackSpace}
Return
#IfWinNotActive