#Requires AutoHotkey v2
#Include "%A_ScriptDir%"
#UseHook True

; State
AltTabMenu := false

set_ignore_emacs_keymap_applications() {
    GroupAdd "EmacsKaymapIgnoreApplications", "ahk_class CASCADIA_HOSTING_WINDOW_CLASS" ; Windows Terminal
}

main() {
    set_ignore_emacs_keymap_applications()
}
main()

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
        Send "{Shift Down}{Alt Down}{Tab Down}"
    } else {
        Send "{Alt Down}{Tab Down}"
    }
}
*~F13 Up:: {
    AltTabMenu := false
    Send "{Alt Up}{Shift Up}{Tab Up}"
}

; Windows keymap
F13 & e::#e
F13 & Up::#Up
F13 & Right::#Right
F13 & Down::#Down
F13 & Left::#Left

; Emacs like keymap
#Hotif not WinActive("ahk_group EmacsKaymapIgnoreApplications")
    ^p::Send  "{Up}"
    ^f::Send  "{Right}"
    ^n::Send  "{Down}"
    ^b::Send  "{Left}"
    ^+p::Send "{Shift}+{Up}"
    ^+f::Send "{Shift}+{Right}"
    ^+n::Send "{Shift}+{Down}"
    ^+b::Send "{Shift}+{Left}"
    ^a::Send  "{Home}"
    ^e::Send  "{End}"
    ^d::Send  "{Delete}"
    ^h::Send  "{BackSpace}"
    ^m::Send  "{Enter}"
    ^k::Send  "{Shift}+{End}{BackSpace}"
#Hotif
