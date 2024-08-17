#Requires AutoHotkey v2
#Include "%A_ScriptDir%"
#UseHook True

; State
AltTabMenu := false

GroupAdd "EmacsKaymapIgnoreApplications", "ahk_class CASCADIA_HOSTING_WINDOW_CLASS" ; Windows Terminal

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
F13 & j::^j
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
F13 & Tab:: {
    AltTabMenu := true
    if GetKeyState("Shift") {
        SendInput "{Shift Down}{Alt Down}{Tab Down}"
    } else {
        SendInput "{Alt Down}{Tab Down}"
    }
}
~F13::Return
F13 Up:: {
    AltTabMenu := false
    if GetKeyState("Shift") {
        SendInput "{Shift Up}{Alt Up}{Tab Up}"
    } else {
        SendInput "{Alt Up}{Tab Up}"
    }
}
F13 & LButton:: {
    SendInput "{Control Down}"
    MouseClick "left"
    SendInput "{Control Up}"
}

; Windows keymap
F13 & e::#e
F13 & Up::#Up
F13 & Right::#Right
F13 & Down::#Down
F13 & Left::#Left

; Emacs like keymap
#Hotif not WinActive("ahk_group EmacsKaymapIgnoreApplications")
    ^p::SendInput  "{Up}"
    ^f::SendInput  "{Right}"
    ^n::SendInput  "{Down}"
    ^b::SendInput  "{Left}"
    ^+p::SendInput "{Shift}+{Up}"
    ^+f::SendInput "{Shift}+{Right}"
    ^+n::SendInput "{Shift}+{Down}"
    ^+b::SendInput "{Shift}+{Left}"
    ^a::SendInput  "{Home}"
    ^e::SendInput  "{End}"
    ^d::SendInput  "{Delete}"
    ^h::SendInput  "{BackSpace}"
    ^m::SendInput  "{Enter}"
    ^k::SendInput  "{Shift}+{End}{BackSpace}"
#Hotif
