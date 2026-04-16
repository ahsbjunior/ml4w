#!/usr/bin/env bash
# Verifica o estado do microfone, para ser acessado na barra de status
# O melhor local para pôr esse script é em 
# ~/.local/bin
#

# Verifica estado atual
STATUS=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

if [ "$STATUS" = "yes" ]; then
    echo "🔴🎤"
else
    echo "🟢🎤"
fi
