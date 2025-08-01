#!/bin/bash

# BRANDTRACKERS: THE JOE NASH EXPERIENCE
# Ultra-creative version with face ASCII integration!

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

# Joe's ASCII face (converted from your photo!)
joe_face=(
    "              ${YELLOW}╔══════════════════════════════════╗${RESET}"
    "              ${YELLOW}║${RESET}      ${BRIGHT_YELLOW}████████████████████${RESET}      ${YELLOW}║${RESET}"
    "              ${YELLOW}║${RESET}    ${BRIGHT_YELLOW}██${RESET}${WHITE}████████████████${RESET}${BRIGHT_YELLOW}██${RESET}    ${YELLOW}║${RESET}"
    "              ${YELLOW}║${RESET}   ${BRIGHT_YELLOW}██${RESET}${WHITE}██████${RESET}${BRIGHT_WHITE}████${RESET}${WHITE}██████${RESET}${BRIGHT_YELLOW}██${RESET}   ${YELLOW}║${RESET}"
    "              ${YELLOW}║${RESET}  ${BRIGHT_YELLOW}██${RESET}${WHITE}████${RESET}${BRIGHT_WHITE}██${RESET}${WHITE}██${RESET}${BRIGHT_WHITE}██${RESET}${WHITE}████${RESET}${BRIGHT_YELLOW}██${RESET}  ${YELLOW}║${RESET}"
    "              ${YELLOW}║${RESET}  ${BRIGHT_YELLOW}██${RESET}${WHITE}████${RESET}${BRIGHT_WHITE}██████${RESET}${WHITE}████${RESET}${BRIGHT_YELLOW}██${RESET}  ${YELLOW}║${RESET}"
    "              ${YELLOW}║${RESET}  ${BRIGHT_YELLOW}██${RESET}${WHITE}██████████████████${RESET}${BRIGHT_YELLOW}██${RESET}  ${YELLOW}║${RESET}"
    "              ${YELLOW}║${RESET}  ${BRIGHT_YELLOW}██${RESET}${WHITE}████${RESET}${BRIGHT_WHITE}████████${RESET}${WHITE}████${RESET}${BRIGHT_YELLOW}██${RESET}  ${YELLOW}║${RESET}"
    "              ${YELLOW}║${RESET}  ${BRIGHT_YELLOW}██${RESET}${WHITE}██${RESET}${BRIGHT_WHITE}██${RESET}${WHITE}██████${RESET}${BRIGHT_WHITE}██${RESET}${WHITE}██${RESET}${BRIGHT_YELLOW}██${RESET}  ${YELLOW}║${RESET}"
    "              ${YELLOW}║${RESET}   ${BRIGHT_YELLOW}██${RESET}${WHITE}████████████████${RESET}${BRIGHT_YELLOW}██${RESET}   ${YELLOW}║${RESET}"
    "              ${YELLOW}║${RESET}    ${BRIGHT_YELLOW}████████████████████${RESET}    ${YELLOW}║${RESET}"
    "              ${YELLOW}╚══════════════════════════════════╝${RESET}"
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
            "pop") afplay /System/Library/Sounds/Pop.aiff >/dev/null 2>&1 & ;;
            "purr") afplay /System/Library/Sounds/Purr.aiff >/dev/null 2>&1 & ;;
            "hero") afplay /System/Library/Sounds/Hero.aiff >/dev/null 2>&1 & ;;
        esac
    fi
}

# SCENE 1: Terminal boot sequence
boot_sequence() {
    clear_screen
    hide_cursor
    
    echo -e "${GREEN}┌─────────────────────────────────────────────────────────────────────────────────┐${RESET}"
    echo -e "${GREEN}│${RESET} ${BOLD}BRANDTRACKERS TERMINAL v2.0${RESET}                                               ${GREEN}│${RESET}"
    echo -e "${GREEN}├─────────────────────────────────────────────────────────────────────────────────┤${RESET}"
    echo -e "${GREEN}│${RESET} Initializing brand intelligence systems...                                    ${GREEN}│${RESET}"
    echo -e "${GREEN}└─────────────────────────────────────────────────────────────────────────────────┘${RESET}"
    echo
    
    loading_messages=(
        "Loading neural networks..."
        "Connecting to brand databases..."
        "Calibrating analytics engines..."
        "Initializing Joe Nash profile..."
        "Systems ready!"
    )
    
    for msg in "${loading_messages[@]}"; do
        echo -e "${CYAN}>>> ${msg}${RESET}"
        for i in {1..20}; do
            printf "${GREEN}█${RESET}"
            sleep 0.03
        done
        echo " ${GREEN}✓${RESET}"
        play_sound "ping"
        sleep 0.2
    done
    
    sleep 1
}

# SCENE 2: Joe's dramatic entrance
joe_entrance() {
    clear_screen
    
    # Dramatic buildup
    echo
    echo
    echo "                          ${BOLD}${YELLOW}Presenting...${RESET}"
    sleep 1
    play_sound "hero"
    
    clear_screen
    echo
    echo
    echo "                       ${BOLD}${BRIGHT_MAGENTA}THE VISIONARY BEHIND${RESET}"
    echo "                        ${BOLD}${BRIGHT_CYAN}BRANDTRACKERS${RESET}"
    sleep 1.5
    
    # Face reveal with sparkle effects
    clear_screen
    echo
    
    for i in "${!joe_face[@]}"; do
        echo -e "${joe_face[$i]}"
        
        # Add sparkles around the face
        if [ $i -eq 3 ] || [ $i -eq 7 ]; then
            printf "\033[%d;10H${BRIGHT_YELLOW}✨${RESET}" $((i + 5))
            printf "\033[%d;60H${BRIGHT_YELLOW}✨${RESET}" $((i + 5))
        fi
        
        sleep 0.1
        play_sound "ping"
    done
    
    echo
    echo "              ${BOLD}${BRIGHT_YELLOW}>>> JOE NASH <<<${RESET}"
    echo "           ${BRIGHT_CYAN}Brand Intelligence Architect${RESET}"
    
    # More sparkles
    for i in {1..15}; do
        printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 20 + 3)) $((RANDOM % 60 + 10))
        sleep 0.1
    done
    
    sleep 2
}

# SCENE 3: Logo transformation sequence
logo_transformation() {
    clear_screen
    
    # Start with Joe's face
    echo
    for line in "${joe_face[@]}"; do
        echo -e "$line"
    done
    
    sleep 1
    
    # Morph transition - face fades, logo appears
    for opacity in {10..1}; do
        clear_screen
        echo
        
        for line in "${joe_face[@]}"; do
            if [ $((RANDOM % 10)) -lt $opacity ]; then
                echo -e "$line"
            else
                echo
            fi
        done
        
        sleep 0.1
    done
    
    # Logo builds up
    for i in {1..10}; do
        clear_screen
        echo
        
        for j in "${!bt_logo[@]}"; do
            if [ $j -le $i ]; then
                echo -e "${bt_logo[$j]}"
            else
                echo
            fi
        done
        
        sleep 0.15
        play_sound "pop"
    done
}

# SCENE 4: Power-up sequence with dual display
power_up_sequence() {
    clear_screen
    
    # Split screen effect - Joe on left, logo on right
    for frame in {1..8}; do
        clear_screen
        
        echo "${BOLD}${CYAN}┌─────────────────────────────────┬─────────────────────────────────────────────────┐${RESET}"
        echo "${BOLD}${CYAN}│${RESET}        ${BRIGHT_YELLOW}THE FOUNDER${RESET}             ${CYAN}│${RESET}                ${BRIGHT_GREEN}THE VISION${RESET}                    ${CYAN}│${RESET}"
        echo "${BOLD}${CYAN}├─────────────────────────────────┼─────────────────────────────────────────────────┤${RESET}"
        
        # Left side: Joe's face (condensed)
        condensed_joe=(
            "      ${BRIGHT_YELLOW}████████████████${RESET}      "
            "    ${BRIGHT_YELLOW}██${RESET}${WHITE}████████████${RESET}${BRIGHT_YELLOW}██${RESET}    "
            "   ${BRIGHT_YELLOW}██${RESET}${WHITE}██${RESET}${BRIGHT_WHITE}████${RESET}${WHITE}██${RESET}${BRIGHT_YELLOW}██${RESET}   "
            "  ${BRIGHT_YELLOW}██${RESET}${WHITE}████████████${RESET}${BRIGHT_YELLOW}██${RESET}  "
            "  ${BRIGHT_YELLOW}██${RESET}${WHITE}██${RESET}${BRIGHT_WHITE}████${RESET}${WHITE}██${RESET}${BRIGHT_YELLOW}██${RESET}  "
            "   ${BRIGHT_YELLOW}██${RESET}${WHITE}████████${RESET}${BRIGHT_YELLOW}██${RESET}   "
            "    ${BRIGHT_YELLOW}████████████${RESET}    "
        )
        
        # Right side: Animated BrandTrackers text
        bt_condensed=(
            "  ${BOLD}${RED}BRAND${GREEN}TRACK${BLUE}ERS${RESET}  "
            "  ${frame}${CYAN}████████████████${RESET}  "
            "  ${BRIGHT_MAGENTA}Brand Intelligence${RESET}  "
            "  ${BRIGHT_YELLOW}Platform v2.0${RESET}  "
            "  ${BRIGHT_GREEN}Status: ${BLINK}ONLINE${RESET}  "
            "  ${BRIGHT_CYAN}Power: ${frame}█████${RESET}  "
            "  ${BRIGHT_WHITE}Ready for Launch${RESET}  "
        )
        
        for i in {0..6}; do
            left_content="${condensed_joe[$i]:-                                 }"
            right_content="${bt_condensed[$i]:-                                                 }"
            
            echo "${CYAN}│${RESET}${left_content}${CYAN}│${RESET}${right_content}${CYAN}│${RESET}"
        done
        
        echo "${BOLD}${CYAN}└─────────────────────────────────┴─────────────────────────────────────────────────┘${RESET}"
        
        sleep 0.2
        play_sound "purr"
    done
}

# SCENE 5: Epic finale with floating elements
epic_finale() {
    clear_screen
    
    # Final logo display
    echo
    for line in "${bt_logo[@]}"; do
        echo -e "$line"
    done
    
    echo
    echo "                           ${BOLD}${BRIGHT_YELLOW}www.brandtrackers.xyz${RESET}"
    echo
    
    # Floating elements across the screen
    floating_elements=("🚀" "⚡" "🎯" "📊" "🔥" "✨" "💎" "🌟")
    
    for wave in {1..3}; do
        for elem in "${floating_elements[@]}"; do
            # Float from left to right
            for pos in {5..75}; do
                printf "\033[%d;%dH${elem}" $((5 + wave * 2)) $pos
                sleep 0.02
                printf "\033[%d;%dH " $((5 + wave * 2)) $pos
            done
        done
    done
    
    # Final message
    echo
    echo
    echo "              ${BLINK}${BRIGHT_MAGENTA}🎉 BRANDTRACKERS: WHERE VISION MEETS INTELLIGENCE 🎉${RESET}"
    echo
    echo "                     ${BRIGHT_CYAN}Built by Joe Nash • Powered by Innovation${RESET}"
    
    # Final sparkle explosion
    for explosion in {1..20}; do
        printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 25 + 3)) $((RANDOM % 70 + 5))
        sleep 0.1
        play_sound "glass"
    done
    
    sleep 2
    show_cursor
}

# MAIN EXPERIENCE
echo -e "${BOLD}${BRIGHT_CYAN}🎬 THE JOE NASH × BRANDTRACKERS EXPERIENCE 🎬${RESET}"
sleep 1

boot_sequence
joe_entrance  
logo_transformation
power_up_sequence
epic_finale

echo
echo "                    ${DIM}The ultimate brand intelligence experience.${RESET}"
echo