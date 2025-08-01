#!/bin/bash

# WILD BrandTrackers Animations - Think Outside The Box!
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
BOLD='\033[1m'
BLINK='\033[5m'
RESET='\033[0m'

BRIGHT_RED='\033[1;31m'
BRIGHT_GREEN='\033[1;32m'
BRIGHT_YELLOW='\033[1;33m'
BRIGHT_BLUE='\033[1;34m'
BRIGHT_MAGENTA='\033[1;35m'
BRIGHT_CYAN='\033[1;36m'

# Logo lines
logo_lines=(
    "${CYAN}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
    "${CYAN}║                                                                                ║${RESET}"
    "${CYAN}║  ${BOLD}${RED}██████╗ ${GREEN}██████╗  ${YELLOW}█████╗ ${BLUE}███╗   ██╗${MAGENTA}██████╗${RESET}${CYAN}                             ║${RESET}"
    "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██╗${BLUE}████╗  ██║${MAGENTA}██╔══██╗${RESET}${CYAN}                            ║${RESET}"
    "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██████╔╝${YELLOW}███████║${BLUE}██╔██╗ ██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
    "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██║${BLUE}██║╚██╗██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
    "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██║  ██║${YELLOW}██║  ██║${BLUE}██║ ╚████║${MAGENTA}██████╔╝${RESET}${CYAN}                            ║${RESET}"
    "${CYAN}║  ${BOLD}${RED}╚═════╝ ${GREEN}╚═╝  ╚═╝${YELLOW}╚═╝  ╚═╝${BLUE}╚═╝  ╚═══╝${MAGENTA}╚═════╝${RESET}${CYAN}                             ║${RESET}"
    "${CYAN}║                                                                                ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}████████╗${RED}██████╗  ${GREEN}█████╗ ${YELLOW}██████╗${BLUE}██╗  ██╗${MAGENTA}███████╗${CYAN}██████╗ ${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}╚══██╔══╝${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔════╝${BLUE}██║ ██╔╝${MAGENTA}██╔════╝${CYAN}██╔══██╗${WHITE}██╔════╝${RESET}${CYAN}  ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██████╔╝${GREEN}███████║${YELLOW}██║     ${BLUE}█████╔╝ ${MAGENTA}█████╗  ${CYAN}██████╔╝${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██╔══██╗${GREEN}██╔══██║${YELLOW}██║     ${BLUE}██╔═██╗ ${MAGENTA}██╔══╝  ${CYAN}██╔══██╗${WHITE}╚════██║${RESET}${CYAN}  ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██║  ██║${GREEN}██║  ██║${YELLOW}╚██████╗${BLUE}██║  ██╗${MAGENTA}███████╗${CYAN}██║  ██║${WHITE}███████║${RESET}${CYAN}  ║${RESET}"
    "${CYAN}║  ${BOLD}${WHITE}   ╚═╝   ${RED}╚═╝  ╚═╝${GREEN}╚═╝  ╚═╝${YELLOW} ╚═════╝${BLUE}╚═╝  ╚═╝${MAGENTA}╚══════╝${CYAN}╚═╝  ╚═╝${WHITE}╚══════╝${RESET}${CYAN}  ║${RESET}"
    "${CYAN}║                                                                                ║${RESET}"
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
        esac
    fi
}

# 🌈 RAINBOW WAVE EFFECT
rainbow_wave() {
    hide_cursor
    clear_screen
    
    for cycle in {1..8}; do
        clear_screen
        echo
        
        # Rainbow colors that shift each cycle
        colors=($RED $YELLOW $GREEN $CYAN $BLUE $MAGENTA)
        
        for i in "${!logo_lines[@]}"; do
            # Calculate shifting color index
            color_index=$(((cycle + i) % ${#colors[@]}))
            color="${colors[$color_index]}"
            
            # Apply color to entire line
            line="${logo_lines[$i]}"
            echo -e "${color}${line}${RESET}"
        done
        
        echo
        echo -e "                           ${BLINK}${BRIGHT_YELLOW}www.brandtrackers.xyz${RESET}"
        
        sleep 0.25
        play_sound "ping"
    done
    
    play_sound "glass"
    show_cursor
}

# 💀 MATRIX DIGITAL RAIN
matrix_effect() {
    hide_cursor
    clear_screen
    
    term_width=$(tput cols 2>/dev/null || echo 80)
    term_height=$(tput lines 2>/dev/null || echo 24)
    
    # Fill screen with matrix rain
    for i in {1..15}; do
        clear_screen
        
        for row in $(seq 1 $term_height); do
            line=""
            for col in $(seq 1 $term_width); do
                if [ $((RANDOM % 15)) -eq 0 ]; then
                    char=$((RANDOM % 26 + 65))  # Random A-Z
                    line+="${GREEN}$(printf \\$(printf "%03o" $char))${RESET}"
                else
                    line+=" "
                fi
            done
            echo -e "$line"
        done
        
        sleep 0.1
        play_sound "pop"
    done
    
    # Reveal logo through the matrix
    clear_screen
    echo
    
    for line in "${logo_lines[@]}"; do
        echo -e "${BRIGHT_GREEN}${line}${RESET}"
        sleep 0.15
        play_sound "ping"
    done
    
    echo
    echo -e "                           ${BRIGHT_GREEN}www.brandtrackers.xyz${RESET}"
    
    play_sound "glass"
    show_cursor
}

# 🔥 FIRE RISING EFFECT
fire_effect() {
    hide_cursor
    clear_screen
    
    # Fire colors: red -> orange -> yellow -> white
    fire_colors=($RED $BRIGHT_RED $YELLOW $BRIGHT_YELLOW $WHITE)
    
    for flame in {1..12}; do
        clear_screen
        echo
        
        # Fire particles at bottom
        echo
        for particle in $(seq 1 6); do
            spaces=$((RANDOM % 80))
            printf "%*s" $spaces ""
            color="${fire_colors[$((RANDOM % ${#fire_colors[@]}))]}"
            printf "${color}▲${RESET} "
        done
        echo
        echo
        
        # Logo with fire colors
        for i in "${!logo_lines[@]}"; do
            # Fire intensity decreases from bottom to top
            intensity=$((flame + i))
            color_index=$((intensity % ${#fire_colors[@]}))
            color="${fire_colors[$color_index]}"
            
            echo -e "${color}${logo_lines[$i]}${RESET}"
        done
        
        echo
        echo -e "                           ${BRIGHT_YELLOW}www.brandtrackers.xyz${RESET}"
        
        sleep 0.2
        play_sound "purr"
    done
    
    play_sound "glass"
    show_cursor
}

# 💥 GLITCH CYBERPUNK EFFECT
glitch_effect() {
    hide_cursor
    
    for glitch in {1..10}; do
        clear_screen
        echo
        
        glitch_colors=($RED $MAGENTA $CYAN $BRIGHT_RED $BRIGHT_MAGENTA $BRIGHT_CYAN $WHITE)
        
        for i in "${!logo_lines[@]}"; do
            line="${logo_lines[$i]}"
            
            # Random corruption
            if [ $((RANDOM % 3)) -eq 0 ]; then
                # Corrupt some characters
                corrupted=""
                for (( j=0; j<${#line}; j++ )); do
                    if [ $((RANDOM % 25)) -eq 0 ]; then
                        corrupted+="█"
                    elif [ $((RANDOM % 25)) -eq 0 ]; then
                        corrupted+="▓"
                    elif [ $((RANDOM % 25)) -eq 0 ]; then
                        corrupted+="░"
                    else
                        corrupted+="${line:$j:1}"
                    fi
                done
                line="$corrupted"
            fi
            
            # Random color
            color="${glitch_colors[$((RANDOM % ${#glitch_colors[@]}))]}"
            echo -e "${color}${line}${RESET}"
        done
        
        echo
        if [ $((glitch % 3)) -eq 0 ]; then
            echo -e "                           ${BLINK}${RED}w̴w̴w̴.̴b̴r̴a̴n̴d̴t̴r̴a̴c̴k̴e̴r̴s̴.̴x̴y̴z̴${RESET}"
        else
            echo -e "                           ${BRIGHT_CYAN}www.brandtrackers.xyz${RESET}"
        fi
        
        sleep 0.1
        play_sound "pop"
    done
    
    # Clean final version
    clear_screen
    echo
    for line in "${logo_lines[@]}"; do
        echo -e "$line"
    done
    echo
    echo -e "                           ${BRIGHT_YELLOW}www.brandtrackers.xyz${RESET}"
    
    play_sound "glass"
    show_cursor
}

# 🎲 EASTER EGG - RANDOM SURPRISE
easter_egg() {
    hide_cursor
    clear_screen
    
    surprises=(
        "🦄 You found the unicorn! 🦄"
        "🎮 Achievement Unlocked: Terminal Master! 🎮"
        "🚀 Launching brand into orbit... 🚀"
        "🔮 The brand sees all... 🔮"
        "🎪 Welcome to the brand circus! 🎪"
        "🦖 Rawrrr! Brand-o-saurus Rex! 🦖"
        "🌟 You're a terminal wizard! 🌟"
    )
    
    surprise="${surprises[$((RANDOM % ${#surprises[@]}))]}"
    
    echo
    echo
    echo
    echo "                              ${BLINK}${BRIGHT_MAGENTA}SURPRISE!${RESET}"
    echo
    echo "                        ${BRIGHT_YELLOW}${surprise}${RESET}"
    echo
    echo
    
    # Animated sparkles
    for i in {1..20}; do
        printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 20 + 5)) $((RANDOM % 70 + 5))
        sleep 0.1
        play_sound "ping"
    done
    
    sleep 2
    
    # Show normal logo
    clear_screen
    echo
    for line in "${logo_lines[@]}"; do
        echo -e "$line"
    done
    echo
    echo -e "                           ${BRIGHT_YELLOW}www.brandtrackers.xyz${RESET}"
    
    play_sound "glass"
    show_cursor
}

# 🎯 MAIN EXECUTION
case "${1:-random}" in
    "rainbow"|"r")
        rainbow_wave
        ;;
    "matrix"|"m")
        matrix_effect
        ;;
    "fire"|"f")
        fire_effect
        ;;
    "glitch"|"g")
        glitch_effect
        ;;
    "surprise"|"egg"|"e")
        easter_egg
        ;;
    "random"|*)
        # Random effect each time!
        effects=("rainbow_wave" "matrix_effect" "fire_effect" "glitch_effect")
        
        # 5% chance for easter egg
        if [ $((RANDOM % 20)) -eq 0 ]; then
            easter_egg
        else
            random_effect="${effects[$((RANDOM % ${#effects[@]}))]}"
            $random_effect
        fi
        ;;
esac

echo
echo "                    ${DIM}Run again for a different effect! 🎲${RESET}"
echo