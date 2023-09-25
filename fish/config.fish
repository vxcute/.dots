if status is-interactive
    # Commands to run in interactive sessions can go here
    alias c='clear'
    alias e='exit'
    alias ls='lsd'
    alias cat='bat'
    alias f='lf'
    alias less='less -r'
    alias hd='hexyl'
    export QT_QPA_PLATFORMTHEME='qt5ct'
    export QT_STYLE_OVERRIDE=gtk2
    export _JAVA_AWT_WM_NONREPARENTING=1
end
