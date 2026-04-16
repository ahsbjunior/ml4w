#!/usr/bin/env bash
# Alterna o estado do microfone, para ser utilizado por atalho de teclado
# O melhor local para pôr esse script é em 
# ~/.local/bin
#
# Toggle mute
pactl set-source-mute @DEFAULT_SOURCE@ toggle

# Verifica estado atual
STATUS=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

if [ "$STATUS" = "yes" ]; then
    notify-send "🎤 Microfone MUTADO"
else
    notify-send "🎤 Microfone ATIVO"
fi
paplay /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga
