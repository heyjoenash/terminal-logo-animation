#!/bin/bash

# JOE NASH × BRANDTRACKERS - Version 2.0
# Faster, clearer, more accurate face rendering!

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
BOLD='\033[1m'
DIM='\033[2m'
BLINK='\033[5m'
RESET='\033[0m'

BRIGHT_RED='\033[1;31m'
BRIGHT_GREEN='\033[1;32m'
BRIGHT_YELLOW='\033[1;33m'
BRIGHT_BLUE='\033[1;34m'
BRIGHT_MAGENTA='\033[1;35m'
BRIGHT_CYAN='\033[1;36m'
BRIGHT_WHITE='\033[1;37m'

# Better Joe Nash ASCII (based on your actual photos!)
joe_face_v2=(
    "                 ${YELLOW}╔══════════════════════════════╗${RESET}"
    "                 ${YELLOW}║${RESET}  ${BRIGHT_WHITE}▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄${RESET}  ${YELLOW}║${RESET}"
    "                 ${YELLOW}║${RESET} ${BRIGHT_WHITE}▄${WHITE}██${BRIGHT_WHITE}████████████████${WHITE}██${BRIGHT_WHITE}▄${RESET} ${YELLOW}║${RESET}"
    "                 ${YELLOW}║${RESET}${BRIGHT_WHITE}▄${WHITE}████${BRIGHT_WHITE}██${WHITE}████████${BRIGHT_WHITE}██${WHITE}████${BRIGHT_WHITE}▄${RESET}${YELLOW}║${RESET}"
    "                 ${YELLOW}║${WHITE}██${BRIGHT_WHITE}██${WHITE}██${BRIGHT_WHITE}██${BLACK}▓▓${RESET}${WHITE}████${BLACK}▓▓${RESET}${BRIGHT_WHITE}██${WHITE}██${BRIGHT_WHITE}██${WHITE}██${RESET}${YELLOW}║${RESET}"
    "                 ${YELLOW}║${WHITE}████${BRIGHT_WHITE}████${WHITE}██████${BRIGHT_WHITE}████${WHITE}████${RESET}${YELLOW}║${RESET}"
    "                 ${YELLOW}║${RESET} ${WHITE}██${BRIGHT_WHITE}██${WHITE}████${BRIGHT_WHITE}▄▄▄▄${WHITE}████${BRIGHT_WHITE}██${WHITE}██${RESET} ${YELLOW}║${RESET}"
    "                 ${YELLOW}║${RESET} ${WHITE}████${BRIGHT_WHITE}██${WHITE}██${BRIGHT_WHITE}████${WHITE}██${BRIGHT_WHITE}██${WHITE}████${RESET} ${YELLOW}║${RESET}"
    "                 ${YELLOW}║${RESET}  ${WHITE}██${BRIGHT_WHITE}████${WHITE}██${BRIGHT_WHITE}██${WHITE}████${BRIGHT_WHITE}██${RESET}  ${YELLOW}║${RESET}"
    "                 ${YELLOW}║${RESET}   ${WHITE}████${BRIGHT_WHITE}██████${WHITE}████${RESET}   ${YELLOW}║${RESET}"
    "                 ${YELLOW}║${RESET}    ${BRIGHT_WHITE}▀▀▀▀▀▀▀▀▀▀▀▀▀▀${RESET}    ${YELLOW}║${RESET}"
    "                 ${YELLOW}╚══════════════════════════════╝${RESET}"
)

# BrandTrackers logo
bt_logo=(
    "${CYAN}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
    "${CYAN}║  ${BOLD}${RED}██████╗ ${GREEN}██████╗  ${YELLOW}█████╗ ${BLUE}███╗   ██╗${MAGENTA}██████╗${RESET}${CYAN}                             ║${RESET}"
    "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██╗${BLUE}████╗  ██║${MAGENTA}██╔══██╗${RESET}${CYAN}                            ║${RESET}"
    "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██████╔╝${YELLOW}███████║${BLUE}██╔██╗ ██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
    "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██║${BLUE}██║╚██╗██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
    "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██║  ██║${YELLOW}██║  ██║${BLUE}██║ ╚████║${MAGENTA}██████╔╝${RESET}${CYAN}                            ║${RESET}"
    "${CYAN}║                                                                                ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}████████╗${RED}██████╗  ${GREEN}█████╗ ${YELLOW}██████╗${BLUE}██╗  ██╗${MAGENTA}███████╗${CYAN}██████╗ ${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}╚══██╔══╝${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔════╝${BLUE}██║ ██╔╝${MAGENTA}██╔════╝${CYAN}██╔══██╗${WHITE}██╔════╝${RESET}${CYAN}  ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██████╔╝${GREEN}███████║${YELLOW}██║     ${BLUE}█████╔╝ ${MAGENTA}█████╗  ${CYAN}██████╔╝${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██╔══██╗${GREEN}██╔══██║${YELLOW}██║     ${BLUE}██╔═██╗ ${MAGENTA}██╔══╝  ${CYAN}██╔══██╗${WHITE}╚════██║${RESET}${CYAN}  ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██║  ██║${GREEN}██║  ██║${YELLOW}╚██████╗${BLUE}██║  ██╗${MAGENTA}███████╗${CYAN}██║  ██║${WHITE}███████║${RESET}${CYAN}  ║${RESET}"
    "${CYAN}╚════════════════════════════════════════════════════════════════════════════════╝${RESET}"
)

hide_cursor() { printf "\033[?25l"; }
show_cursor() { printf "\033[?25h"; }
clear_screen() { printf "\033[2J\033[H"; }

play_sound() {
    if command -v afplay >/dev/null 2>&1; then
        case $1 in
            "ping") afplay /System/Library/Sounds/Ping.aiff >/dev/null 2>&1 & ;;
            "glass") afplay /System/Library/Sounds/Glass.aiff >/dev/null 2>&1 & ;;
            "hero") afplay /System/Library/Sounds/Hero.aiff >/dev/null 2>&1 & ;;
        esac
    fi
}

# SCENE 1: Quick intro
quick_intro() {
    clear_screen
    hide_cursor
    
    echo
    echo
    echo "                      ${BOLD}${BRIGHT_CYAN}⚡ BRANDTRACKERS PRESENTS ⚡${RESET}"
    sleep 0.8
    play_sound "ping"
    
    clear_screen
    echo
    echo
    echo "                         ${BOLD}${BRIGHT_YELLOW}THE JOE NASH${RESET}"
    echo "                        ${BOLD}${BRIGHT_MAGENTA}EXPERIENCE${RESET}"
    sleep 1.2
    play_sound "hero"
}

# SCENE 2: Face reveal - much faster!
face_reveal() {
    clear_screen
    echo
    echo
    
    # Show face instantly with sparkle effects
    for i in "${!joe_face_v2[@]}"; do
        echo -e "${joe_face_v2[$i]}"
        
        # Add occasional sparkles
        if [ $((i % 3)) -eq 0 ]; then
            printf "\033[%d;15H${BRIGHT_YELLOW}✨${RESET}" $((i + 4))
            printf "\033[%d;55H${BRIGHT_YELLOW}✨${RESET}" $((i + 4))
        fi
        
        sleep 0.08
    done
    
    echo
    echo "                 ${BOLD}${BRIGHT_YELLOW}>>> JOE NASH <<<${RESET}"
    echo "              ${BRIGHT_CYAN}BrandTrackers Founder & Visionary${RESET}"
    
    # Quick sparkle burst
    for i in {1..8}; do
        printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 15 + 5)) $((RANDOM % 50 + 15))
        sleep 0.1
    done
    
    sleep 1.5
    play_sound "glass"
}

# SCENE 3: Fast transformation
fast_transform() {
    # Quick wipe transition
    for wipe in {1..5}; do
        clear_screen
        echo
        
        # Show decreasing face, increasing logo
        face_opacity=$((6 - wipe))
        logo_lines_to_show=$((wipe * 3))
        
        if [ $face_opacity -gt 0 ]; then
            for i in "${!joe_face_v2[@]}"; do
                if [ $((RANDOM % 6)) -lt $face_opacity ]; then
                    echo -e "${joe_face_v2[$i]}"
                else
                    echo
                fi
            done
        fi
        
        echo
        
        # Show growing logo
        for i in $(seq 0 $logo_lines_to_show); do
            if [ $i -lt ${#bt_logo[@]} ]; then
                echo -e "${bt_logo[$i]}"
            fi
        done
        
        sleep 0.3
        play_sound "ping"
    done
}

# SCENE 4: Final logo with power effects
power_finale() {
    clear_screen
    echo
    
    # Show complete logo
    for line in "${bt_logo[@]}"; do
        echo -e "$line"
    done
    
    echo
    echo "                           ${BOLD}${BRIGHT_YELLOW}www.brandtrackers.xyz${RESET}"
    echo
    echo "                    ${BRIGHT_GREEN}✨ ${BOLD}Built by Joe Nash${RESET} ${BRIGHT_GREEN}✨${RESET}"
    
    # Power wave effect across screen
    wave_chars=("⚡" "🚀" "🎯" "💎" "⭐" "🔥")
    
    for wave in {1..2}; do
        for pos in {10..70}; do
            char="${wave_chars[$((RANDOM % ${#wave_chars[@]}))]}"
            printf "\033[%d;%dH${char}" $((20 + wave)) $pos
            sleep 0.02
            printf "\033[%d;%dH " $((20 + wave)) $pos
        done
    done
    
    # Final sparkle explosion
    for explosion in {1..12}; do
        printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 20 + 5)) $((RANDOM % 60 + 10))
        sleep 0.1
    done
    
    echo
    echo
    echo "              ${BLINK}${BRIGHT_MAGENTA}🎉 WHERE VISION MEETS INTELLIGENCE 🎉${RESET}"
    
    show_cursor
    play_sound "glass"
}

# MAIN EXPERIENCE - Much faster!
echo -e "${BOLD}${BRIGHT_CYAN}🎬 JOE NASH × BRANDTRACKERS v2.0 🎬${RESET}"
sleep 0.5

quick_intro      # 2 seconds
face_reveal      # 3 seconds  
fast_transform   # 2 seconds
power_finale     # 3 seconds

echo
echo "                    ${DIM}Total experience: ~10 seconds${RESET}"
echo