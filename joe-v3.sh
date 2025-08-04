#!/bin/bash

# JOE NASH × BRANDTRACKERS - Version 3.0
# HIGH-ENERGY LOGO EXPERIENCE - Constant momentum, multiple transformations!
# Max 20 seconds, never holds longer than 2 seconds per scene

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
BLACK='\033[0;30m'
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

# Improved Joe Nash face (faster rendering)
joe_face=(
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

# Base logo structure
bt_logo_base=(
    "██████╗ ██████╗  █████╗ ███╗   ██╗██████╗ "
    "██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔══██╗"
    "██████╔╝██████╔╝███████║██╔██╗ ██║██║  ██║"
    "██╔══██╗██╔══██╗██╔══██║██║╚██╗██║██║  ██║"
    "██████╔╝██║  ██║██║  ██║██║ ╚████║██████╔╝"
    "                                         "
    "████████╗██████╗  █████╗ ██████╗██╗  ██╗███████╗██████╗ ███████╗"
    "╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗██╔════╝"
    "   ██║   ██████╔╝███████║██║     █████╔╝ █████╗  ██████╔╝███████╗"
    "   ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗╚════██║"
    "   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║███████║"
)

# Sound effects (only when things change)
play_sound() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        afplay /System/Library/Sounds/Pop.aiff 2>/dev/null &
    fi
}

play_swoosh() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        afplay /System/Library/Sounds/Submarine.aiff 2>/dev/null &
    fi
}

play_zap() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        afplay /System/Library/Sounds/Tink.aiff 2>/dev/null &
    fi
}

# Fast transitions
clear_screen() {
    printf "\033[2J\033[H"
}

hide_cursor() {
    printf "\033[?25l"
}

show_cursor() {
    printf "\033[?25h"
}

# Scene 1: Quick intro (1.5 seconds)
scene_intro() {
    clear_screen
    hide_cursor
    
    echo
    echo "                      ${BOLD}${BRIGHT_CYAN}⚡ BRANDTRACKERS PRESENTS ⚡${RESET}"
    sleep 0.7
    play_sound
    
    clear_screen
    echo
    echo
    echo "                         ${BOLD}${BRIGHT_YELLOW}THE JOE NASH${RESET}"
    echo "                        ${BOLD}${BRIGHT_MAGENTA}EXPERIENCE${RESET}"
    sleep 0.8
}

# Scene 2: Fast face reveal (1.5 seconds)
scene_face_reveal() {
    clear_screen
    play_swoosh
    
    # Quick face appearance with sparkles
    printf "\033[4;15H${BRIGHT_YELLOW}✨${RESET}"
    printf "\033[4;55H${BRIGHT_YELLOW}✨${RESET}"
    for line in "${joe_face[@]}"; do
        echo "$line"
    done
    
    printf "\033[8;36H${BRIGHT_YELLOW}✨${RESET}"
    printf "\033[11;64H${BRIGHT_YELLOW}✨${RESET}"
    
    echo
    echo "                 ${BOLD}${BRIGHT_YELLOW}>>> JOE NASH <<<${RESET}"
    echo "              ${BRIGHT_CYAN}BrandTrackers Founder & Visionary${RESET}"
    
    sleep 1.5
}

# Scene 3: Face to Classic Logo (1.5 seconds)
scene_face_to_logo() {
    # Quick morph transition
    clear_screen
    play_zap
    
    # Show morphing from face to logo
    for line in "${joe_face[@]:0:6}"; do
        echo "$line"
    done
    
    echo "${CYAN}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██████╗ ${GREEN}██████╗  ${YELLOW}█████╗ ${BLUE}███╗   ██╗${MAGENTA}██████╗${RESET}${CYAN}                             ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██╗${BLUE}████╗  ██║${MAGENTA}██╔══██╗${RESET}${CYAN}                            ║${RESET}"
    
    sleep 0.8
    
    # Complete logo reveal
    clear_screen
    echo "${CYAN}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██████╗ ${GREEN}██████╗  ${YELLOW}█████╗ ${BLUE}███╗   ██╗${MAGENTA}██████╗${RESET}${CYAN}                             ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██╗${BLUE}████╗  ██║${MAGENTA}██╔══██╗${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██████╔╝${YELLOW}███████║${BLUE}██╔██╗ ██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██║${BLUE}██║╚██╗██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██║  ██║${YELLOW}██║  ██║${BLUE}██║ ╚████║${MAGENTA}██████╔╝${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║                                                                                ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}████████╗${RED}██████╗  ${GREEN}█████╗ ${YELLOW}██████╗${BLUE}██╗  ██╗${MAGENTA}███████╗${CYAN}██████╗ ${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}╚══██╔══╝${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔════╝${BLUE}██║ ██╔╝${MAGENTA}██╔════╝${CYAN}██╔══██╗${WHITE}██╔════╝${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██████╔╝${GREEN}███████║${YELLOW}██║     ${BLUE}█████╔╝ ${MAGENTA}█████╗  ${CYAN}██████╔╝${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██╔══██╗${GREEN}██╔══██║${YELLOW}██║     ${BLUE}██╔═██╗ ${MAGENTA}██╔══╝  ${CYAN}██╔══██╗${WHITE}╚════██║${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██║  ██║${GREEN}██║  ██║${YELLOW}╚██████╗${BLUE}██║  ██╗${MAGENTA}███████╗${CYAN}██║  ██║${WHITE}███████║${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}╚════════════════════════════════════════════════════════════════════════════════╝${RESET}"
    
    sleep 0.7
}

# Scene 4: Matrix Green Transform (2 seconds)
scene_matrix() {
    clear_screen
    play_sound
    
    echo "${GREEN}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo "${GREEN}║  ${BOLD}${BRIGHT_GREEN}██████╗ ██████╗  █████╗ ███╗   ██╗██████╗${RESET}${GREEN}                             ║${RESET}"
    echo "${GREEN}║  ${BOLD}${BRIGHT_GREEN}██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔══██╗${RESET}${GREEN}                            ║${RESET}"
    echo "${GREEN}║  ${BOLD}${BRIGHT_GREEN}██████╔╝██████╔╝███████║██╔██╗ ██║██║  ██║${RESET}${GREEN}                            ║${RESET}"
    echo "${GREEN}║  ${BOLD}${BRIGHT_GREEN}██╔══██╗██╔══██╗██╔══██║██║╚██╗██║██║  ██║${RESET}${GREEN}                            ║${RESET}"
    echo "${GREEN}║  ${BOLD}${BRIGHT_GREEN}██████╔╝██║  ██║██║  ██║██║ ╚████║██████╔╝${RESET}${GREEN}                            ║${RESET}"
    echo "${GREEN}║                                                                                ║${RESET}"
    echo "${GREEN}║  ${BOLD}${BRIGHT_GREEN}████████╗██████╗  █████╗ ██████╗██╗  ██╗███████╗██████╗ ███████╗${RESET}${GREEN}  ║${RESET}"
    echo "${GREEN}║  ${BOLD}${BRIGHT_GREEN}╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗██╔════╝${RESET}${GREEN}  ║${RESET}"
    echo "${GREEN}║  ${BOLD}${BRIGHT_GREEN}   ██║   ██████╔╝███████║██║     █████╔╝ █████╗  ██████╔╝███████╗${RESET}${GREEN}  ║${RESET}"
    echo "${GREEN}║  ${BOLD}${BRIGHT_GREEN}   ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗╚════██║${RESET}${GREEN}  ║${RESET}"
    echo "${GREEN}║  ${BOLD}${BRIGHT_GREEN}   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║███████║${RESET}${GREEN}  ║${RESET}"
    echo "${GREEN}╚════════════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo "                            ${BRIGHT_GREEN}[[ MATRIX MODE ]]${RESET}"
    
    sleep 2
}

# Scene 5: Fire Gradient (2 seconds) 
scene_fire() {
    clear_screen
    play_swoosh
    
    echo "${RED}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo "${RED}║  ${BOLD}${BRIGHT_RED}██████╗ ${BRIGHT_YELLOW}██████╗  █████╗ ${BRIGHT_RED}███╗   ██╗${BRIGHT_YELLOW}██████╗${RESET}${RED}                             ║${RESET}"
    echo "${RED}║  ${BOLD}${BRIGHT_YELLOW}██╔══██╗${BRIGHT_RED}██╔══██╗${BRIGHT_YELLOW}██╔══██╗${BRIGHT_RED}████╗  ██║${BRIGHT_YELLOW}██╔══██╗${RESET}${RED}                            ║${RESET}"
    echo "${RED}║  ${BOLD}${BRIGHT_RED}██████╔╝${BRIGHT_YELLOW}██████╔╝${BRIGHT_RED}███████║${BRIGHT_YELLOW}██╔██╗ ██║${BRIGHT_RED}██║  ██║${RESET}${RED}                            ║${RESET}"
    echo "${RED}║  ${BOLD}${BRIGHT_YELLOW}██╔══██╗${BRIGHT_RED}██╔══██╗${BRIGHT_YELLOW}██╔══██║${BRIGHT_RED}██║╚██╗██║${BRIGHT_YELLOW}██║  ██║${RESET}${RED}                            ║${RESET}"
    echo "${RED}║  ${BOLD}${BRIGHT_RED}██████╔╝${BRIGHT_YELLOW}██║  ██║${BRIGHT_RED}██║  ██║${BRIGHT_YELLOW}██║ ╚████║${BRIGHT_RED}██████╔╝${RESET}${RED}                            ║${RESET}"
    echo "${RED}║                                                                                ║${RESET}"
    echo "${RED}║  ${BOLD}${BRIGHT_YELLOW}████████╗${BRIGHT_RED}██████╗  ${BRIGHT_YELLOW}█████╗ ${BRIGHT_RED}██████╗${BRIGHT_YELLOW}██╗  ██╗${BRIGHT_RED}███████╗${BRIGHT_YELLOW}██████╗ ${BRIGHT_RED}███████╗${RESET}${RED}  ║${RESET}"
    echo "${RED}║  ${BOLD}${BRIGHT_RED}╚══██╔══╝${BRIGHT_YELLOW}██╔══██╗${BRIGHT_RED}██╔══██╗${BRIGHT_YELLOW}██╔════╝${BRIGHT_RED}██║ ██╔╝${BRIGHT_YELLOW}██╔════╝${BRIGHT_RED}██╔══██╗${BRIGHT_YELLOW}██╔════╝${RESET}${RED}  ║${RESET}"
    echo "${RED}║  ${BOLD}${BRIGHT_YELLOW}   ██║   ${BRIGHT_RED}██████╔╝${BRIGHT_YELLOW}███████║${BRIGHT_RED}██║     ${BRIGHT_YELLOW}█████╔╝ ${BRIGHT_RED}█████╗  ${BRIGHT_YELLOW}██████╔╝${BRIGHT_RED}███████╗${RESET}${RED}  ║${RESET}"
    echo "${RED}║  ${BOLD}${BRIGHT_RED}   ██║   ${BRIGHT_YELLOW}██╔══██╗${BRIGHT_RED}██╔══██║${BRIGHT_YELLOW}██║     ${BRIGHT_RED}██╔═██╗ ${BRIGHT_YELLOW}██╔══╝  ${BRIGHT_RED}██╔══██╗${BRIGHT_YELLOW}╚════██║${RESET}${RED}  ║${RESET}"
    echo "${RED}║  ${BOLD}${BRIGHT_YELLOW}   ██║   ${BRIGHT_RED}██║  ██║${BRIGHT_YELLOW}██║  ██║${BRIGHT_RED}╚██████╗${BRIGHT_YELLOW}██║  ██╗${BRIGHT_RED}███████╗${BRIGHT_YELLOW}██║  ██║${BRIGHT_RED}███████║${RESET}${RED}  ║${RESET}"
    echo "${RED}╚════════════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo "                              ${BRIGHT_RED}🔥 FIRE MODE 🔥${RESET}"
    
    sleep 2
}

# Scene 6: Neon Glow (2 seconds)
scene_neon() {
    clear_screen
    play_zap
    
    echo "${MAGENTA}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo "${MAGENTA}║  ${BOLD}${BRIGHT_MAGENTA}██████╗ ${BRIGHT_CYAN}██████╗  ${BRIGHT_MAGENTA}█████╗ ${BRIGHT_CYAN}███╗   ██╗${BRIGHT_MAGENTA}██████╗${RESET}${MAGENTA}                             ║${RESET}"
    echo "${MAGENTA}║  ${BOLD}${BRIGHT_CYAN}██╔══██╗${BRIGHT_MAGENTA}██╔══██╗${BRIGHT_CYAN}██╔══██╗${BRIGHT_MAGENTA}████╗  ██║${BRIGHT_CYAN}██╔══██╗${RESET}${MAGENTA}                            ║${RESET}"
    echo "${MAGENTA}║  ${BOLD}${BRIGHT_MAGENTA}██████╔╝${BRIGHT_CYAN}██████╔╝${BRIGHT_MAGENTA}███████║${BRIGHT_CYAN}██╔██╗ ██║${BRIGHT_MAGENTA}██║  ██║${RESET}${MAGENTA}                            ║${RESET}"
    echo "${MAGENTA}║  ${BOLD}${BRIGHT_CYAN}██╔══██╗${BRIGHT_MAGENTA}██╔══██╗${BRIGHT_CYAN}██╔══██║${BRIGHT_MAGENTA}██║╚██╗██║${BRIGHT_CYAN}██║  ██║${RESET}${MAGENTA}                            ║${RESET}"
    echo "${MAGENTA}║  ${BOLD}${BRIGHT_MAGENTA}██████╔╝${BRIGHT_CYAN}██║  ██║${BRIGHT_MAGENTA}██║  ██║${BRIGHT_CYAN}██║ ╚████║${BRIGHT_MAGENTA}██████╔╝${RESET}${MAGENTA}                            ║${RESET}"
    echo "${MAGENTA}║                                                                                ║${RESET}"
    echo "${MAGENTA}║  ${BOLD}${BRIGHT_CYAN}████████╗${BRIGHT_MAGENTA}██████╗  ${BRIGHT_CYAN}█████╗ ${BRIGHT_MAGENTA}██████╗${BRIGHT_CYAN}██╗  ██╗${BRIGHT_MAGENTA}███████╗${BRIGHT_CYAN}██████╗ ${BRIGHT_MAGENTA}███████╗${RESET}${MAGENTA}  ║${RESET}"
    echo "${MAGENTA}║  ${BOLD}${BRIGHT_MAGENTA}╚══██╔══╝${BRIGHT_CYAN}██╔══██╗${BRIGHT_MAGENTA}██╔══██╗${BRIGHT_CYAN}██╔════╝${BRIGHT_MAGENTA}██║ ██╔╝${BRIGHT_CYAN}██╔════╝${BRIGHT_MAGENTA}██╔══██╗${BRIGHT_CYAN}██╔════╝${RESET}${MAGENTA}  ║${RESET}"
    echo "${MAGENTA}║  ${BOLD}${BRIGHT_CYAN}   ██║   ${BRIGHT_MAGENTA}██████╔╝${BRIGHT_CYAN}███████║${BRIGHT_MAGENTA}██║     ${BRIGHT_CYAN}█████╔╝ ${BRIGHT_MAGENTA}█████╗  ${BRIGHT_CYAN}██████╔╝${BRIGHT_MAGENTA}███████╗${RESET}${MAGENTA}  ║${RESET}"
    echo "${MAGENTA}║  ${BOLD}${BRIGHT_MAGENTA}   ██║   ${BRIGHT_CYAN}██╔══██╗${BRIGHT_MAGENTA}██╔══██║${BRIGHT_CYAN}██║     ${BRIGHT_MAGENTA}██╔═██╗ ${BRIGHT_CYAN}██╔══╝  ${BRIGHT_MAGENTA}██╔══██╗${BRIGHT_CYAN}╚════██║${RESET}${MAGENTA}  ║${RESET}"
    echo "${MAGENTA}║  ${BOLD}${BRIGHT_CYAN}   ██║   ${BRIGHT_MAGENTA}██║  ██║${BRIGHT_CYAN}██║  ██║${BRIGHT_MAGENTA}╚██████╗${BRIGHT_CYAN}██║  ██╗${BRIGHT_MAGENTA}███████╗${BRIGHT_CYAN}██║  ██║${BRIGHT_MAGENTA}███████║${RESET}${MAGENTA}  ║${RESET}"
    echo "${MAGENTA}╚════════════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo "                             ${BRIGHT_MAGENTA}⚡ NEON GLOW ⚡${RESET}"
    
    sleep 2
}

# Scene 7: Rainbow Cycle (2 seconds)
scene_rainbow() {
    clear_screen
    play_sound
    
    # Rapid color cycling
    colors=(${RED} ${YELLOW} ${GREEN} ${CYAN} ${BLUE} ${MAGENTA})
    
    for i in {0..3}; do
        color=${colors[$((i % 6))]}
        clear_screen
        echo "${color}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
        echo "${color}║  ${BOLD}${BRIGHT_RED}██████╗ ${BRIGHT_YELLOW}██████╗  ${BRIGHT_GREEN}█████╗ ${BRIGHT_CYAN}███╗   ██╗${BRIGHT_BLUE}██████╗${RESET}${color}                             ║${RESET}"
        echo "${color}║  ${BOLD}${BRIGHT_YELLOW}██╔══██╗${BRIGHT_GREEN}██╔══██╗${BRIGHT_CYAN}██╔══██╗${BRIGHT_BLUE}████╗  ██║${BRIGHT_MAGENTA}██╔══██╗${RESET}${color}                            ║${RESET}"
        echo "${color}║  ${BOLD}${BRIGHT_GREEN}██████╔╝${BRIGHT_CYAN}██████╔╝${BRIGHT_BLUE}███████║${BRIGHT_MAGENTA}██╔██╗ ██║${BRIGHT_RED}██║  ██║${RESET}${color}                            ║${RESET}"
        echo "${color}║  ${BOLD}${BRIGHT_CYAN}██╔══██╗${BRIGHT_BLUE}██╔══██╗${BRIGHT_MAGENTA}██╔══██║${BRIGHT_RED}██║╚██╗██║${BRIGHT_YELLOW}██║  ██║${RESET}${color}                            ║${RESET}"
        echo "${color}║  ${BOLD}${BRIGHT_BLUE}██████╔╝${BRIGHT_MAGENTA}██║  ██║${BRIGHT_RED}██║  ██║${BRIGHT_YELLOW}██║ ╚████║${BRIGHT_GREEN}██████╔╝${RESET}${color}                            ║${RESET}"
        echo "${color}║                                                                                ║${RESET}"
        echo "${color}║  ${BOLD}${BRIGHT_MAGENTA}████████╗${BRIGHT_RED}██████╗  ${BRIGHT_YELLOW}█████╗ ${BRIGHT_GREEN}██████╗${BRIGHT_CYAN}██╗  ██╗${BRIGHT_BLUE}███████╗${BRIGHT_MAGENTA}██████╗ ${BRIGHT_RED}███████╗${RESET}${color}  ║${RESET}"
        echo "${color}║  ${BOLD}${BRIGHT_RED}╚══██╔══╝${BRIGHT_YELLOW}██╔══██╗${BRIGHT_GREEN}██╔══██╗${BRIGHT_CYAN}██╔════╝${BRIGHT_BLUE}██║ ██╔╝${BRIGHT_MAGENTA}██╔════╝${BRIGHT_RED}██╔══██╗${BRIGHT_YELLOW}██╔════╝${RESET}${color}  ║${RESET}"
        echo "${color}║  ${BOLD}${BRIGHT_YELLOW}   ██║   ${BRIGHT_GREEN}██████╔╝${BRIGHT_CYAN}███████║${BRIGHT_BLUE}██║     ${BRIGHT_MAGENTA}█████╔╝ ${BRIGHT_RED}█████╗  ${BRIGHT_YELLOW}██████╔╝${BRIGHT_GREEN}███████╗${RESET}${color}  ║${RESET}"
        echo "${color}║  ${BOLD}${BRIGHT_GREEN}   ██║   ${BRIGHT_CYAN}██╔══██╗${BRIGHT_BLUE}██╔══██║${BRIGHT_MAGENTA}██║     ${BRIGHT_RED}██╔═██╗ ${BRIGHT_YELLOW}██╔══╝  ${BRIGHT_GREEN}██╔══██╗${BRIGHT_CYAN}╚════██║${RESET}${color}  ║${RESET}"
        echo "${color}║  ${BOLD}${BRIGHT_CYAN}   ██║   ${BRIGHT_BLUE}██║  ██║${BRIGHT_MAGENTA}██║  ██║${BRIGHT_RED}╚██████╗${BRIGHT_YELLOW}██║  ██╗${BRIGHT_GREEN}███████╗${BRIGHT_CYAN}██║  ██║${BRIGHT_BLUE}███████║${RESET}${color}  ║${RESET}"
        echo "${color}╚════════════════════════════════════════════════════════════════════════════════╝${RESET}"
        echo "                            ${BOLD}🌈 RAINBOW CYCLE 🌈${RESET}"
        sleep 0.5
    done
}

# Scene 8: Glitch Effect (2 seconds)
scene_glitch() {
    clear_screen
    play_zap
    
    # Glitch effect with random characters
    for i in {0..4}; do
        clear_screen
        echo "${WHITE}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
        if (( i % 2 == 0 )); then
            echo "${WHITE}║  ${BOLD}${RED}██▓▓██╗ ${GREEN}██░░██╗  ${YELLOW}▓▓▓██╗ ${BLUE}▓██╗   ██║${MAGENTA}██▓▓██╗${RESET}${WHITE}                             ║${RESET}"
            echo "${WHITE}║  ${BOLD}${RED}██╔══▓▓╗${GREEN}██╔══██╗${YELLOW}▓▓╔══██╗${BLUE}████╗  ██║${MAGENTA}██╔══██╗${RESET}${WHITE}                            ║${RESET}"
        else
            echo "${WHITE}║  ${BOLD}${RED}██████╗ ${GREEN}██████╗  ${YELLOW}█████╗ ${BLUE}███╗   ██╗${MAGENTA}██████╗${RESET}${WHITE}                             ║${RESET}"
            echo "${WHITE}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██╗${BLUE}████╗  ██║${MAGENTA}██╔══██╗${RESET}${WHITE}                            ║${RESET}"
        fi
        echo "${WHITE}║  ${BOLD}${RED}██████╔╝${GREEN}██████╔╝${YELLOW}███████║${BLUE}██╔██╗ ██║${MAGENTA}██║  ██║${RESET}${WHITE}                            ║${RESET}"
        echo "${WHITE}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██║${BLUE}██║╚██╗██║${MAGENTA}██║  ██║${RESET}${WHITE}                            ║${RESET}"
        echo "${WHITE}║  ${BOLD}${RED}██████╔╝${GREEN}██║  ██║${YELLOW}██║  ██║${BLUE}██║ ╚████║${MAGENTA}██████╔╝${RESET}${WHITE}                            ║${RESET}"
        echo "${WHITE}║                                                                                ║${RESET}"
        echo "${WHITE}║  ${BOLD}${WHITE}████████╗${RED}██████╗  ${GREEN}█████╗ ${YELLOW}██████╗${BLUE}██╗  ██╗${MAGENTA}███████╗${CYAN}██████╗ ${WHITE}███████╗${RESET}${WHITE}  ║${RESET}"
        echo "${WHITE}║  ${BOLD}${WHITE}╚══██╔══╝${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔════╝${BLUE}██║ ██╔╝${MAGENTA}██╔════╝${CYAN}██╔══██╗${WHITE}██╔════╝${RESET}${WHITE}  ║${RESET}"
        echo "${WHITE}║  ${BOLD}${WHITE}   ██║   ${RED}██████╔╝${GREEN}███████║${YELLOW}██║     ${BLUE}█████╔╝ ${MAGENTA}█████╗  ${CYAN}██████╔╝${WHITE}███████╗${RESET}${WHITE}  ║${RESET}"
        echo "${WHITE}║  ${BOLD}${WHITE}   ██║   ${RED}██╔══██╗${GREEN}██╔══██║${YELLOW}██║     ${BLUE}██╔═██╗ ${MAGENTA}██╔══╝  ${CYAN}██╔══██╗${WHITE}╚════██║${RESET}${WHITE}  ║${RESET}"
        echo "${WHITE}║  ${BOLD}${WHITE}   ██║   ${RED}██║  ██║${GREEN}██║  ██║${YELLOW}╚██████╗${BLUE}██║  ██╗${MAGENTA}███████╗${CYAN}██║  ██║${WHITE}███████║${RESET}${WHITE}  ║${RESET}"
        echo "${WHITE}╚════════════════════════════════════════════════════════════════════════════════╝${RESET}"
        echo "                             ${BLINK}${WHITE}⚡ G̸L̸I̸T̸C̸H̸ ⚡${RESET}"
        sleep 0.4
    done
}

# Scene 9: Epic Finale (3 seconds)
scene_finale() {
    clear_screen
    play_swoosh
    
    # Final clean logo with effects
    echo "${CYAN}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██████╗ ${GREEN}██████╗  ${YELLOW}█████╗ ${BLUE}███╗   ██╗${MAGENTA}██████╗${RESET}${CYAN}                             ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██╗${BLUE}████╗  ██║${MAGENTA}██╔══██╗${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██████╔╝${YELLOW}███████║${BLUE}██╔██╗ ██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██║${BLUE}██║╚██╗██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██║  ██║${YELLOW}██║  ██║${BLUE}██║ ╚████║${MAGENTA}██████╔╝${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║                                                                                ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}████████╗${RED}██████╗  ${GREEN}█████╗ ${YELLOW}██████╗${BLUE}██╗  ██╗${MAGENTA}███████╗${CYAN}██████╗ ${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}╚══██╔══╝${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔════╝${BLUE}██║ ██╔╝${MAGENTA}██╔════╝${CYAN}██╔══██╗${WHITE}██╔════╝${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██████╔╝${GREEN}███████║${YELLOW}██║     ${BLUE}█████╔╝ ${MAGENTA}█████╗  ${CYAN}██████╔╝${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██╔══██╗${GREEN}██╔══██║${YELLOW}██║     ${BLUE}██╔═██╗ ${MAGENTA}██╔══╝  ${CYAN}██╔══██╗${WHITE}╚════██║${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██║  ██║${GREEN}██║  ██║${YELLOW}╚██████╗${BLUE}██║  ██╗${MAGENTA}███████╗${CYAN}██║  ██║${WHITE}███████║${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}╚════════════════════════════════════════════════════════════════════════════════╝${RESET}"
    
    echo
    echo "                           ${BOLD}${BRIGHT_YELLOW}www.brandtrackers.xyz${RESET}"
    echo
    echo "                    ${BRIGHT_GREEN}✨ ${BOLD}Built by Joe Nash${RESET} ${BRIGHT_GREEN}✨${RESET}"
    
    # Burst of emojis
    emojis=("🔥" "🚀" "💎" "⚡" "🎯" "⭐")
    for row in {21..22}; do
        for col in {10..70}; do
            if (( RANDOM % 8 == 0 )); then
                emoji=${emojis[$((RANDOM % 6))]}
                printf "\033[${row};${col}H${emoji}"
                printf "\033[${row};${col}H "
            fi
        done
    done
    
    # Sparkle effects
    for i in {0..12}; do
        x=$((10 + RANDOM % 60))
        y=$((5 + RANDOM % 15))
        printf "\033[${y};${x}H${BRIGHT_YELLOW}✨${RESET}"
    done
    
    sleep 1.5
    
    echo
    echo "              ${BLINK}${BOLD}${BRIGHT_MAGENTA}🎉 WHERE VISION MEETS INTELLIGENCE 🎉${RESET}"
    show_cursor
    echo "                    ${DIM}Total experience: ~18 seconds${RESET}"
}

# Main execution
main() {
    # Hide cursor for smooth animation
    hide_cursor
    
    echo "${BOLD}${BRIGHT_CYAN}🎬 JOE NASH × BRANDTRACKERS v3.0 🎬${RESET}"
    sleep 0.5
    
    # Execute all scenes in sequence
    scene_intro          # 1.5s
    scene_face_reveal   # 1.5s  
    scene_face_to_logo  # 1.5s
    scene_matrix        # 2s
    scene_fire          # 2s
    scene_neon          # 2s
    scene_rainbow       # 2s
    scene_glitch        # 2s
    scene_finale        # 3s
    
    # Total: ~18 seconds of pure momentum!
}

# Run the show!
main