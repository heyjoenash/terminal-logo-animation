#!/bin/bash

# BRANDTRACKERS MEGA FLOW - Classic Logo Animation Sequence
# Smooth transitions between all effects like a movie intro!

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
    "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██████╗ ${GREEN}███████║${YELLOW}██║     ${BLUE}█████╔╝ ${MAGENTA}█████╗  ${CYAN}██████╔╝${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
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
            "funk") afplay /System/Library/Sounds/Funk.aiff >/dev/null 2>&1 & ;;
        esac
    fi
}

# Smooth fade in transition
fade_in() {
    clear_screen
    
    # Fade from black
    for opacity in {1..5}; do
        clear_screen
        echo
        
        for line in "${logo_lines[@]}"; do
            case $opacity in
                1) echo -e "${DIM}${line}${RESET}" ;;
                2) echo -e "${DIM}${line}${RESET}" ;;
                3) echo -e "${line}" ;;
                4) echo -e "${BOLD}${line}${RESET}" ;;
                5) echo -e "${BOLD}${line}${RESET}" ;;
            esac
        done
        
        echo
        if [ $opacity -ge 3 ]; then
            echo -e "                           ${BOLD}${YELLOW}www.brandtrackers.xyz${RESET}"
        fi
        
        sleep 0.3
    done
    play_sound "ping"
}

# Smooth fade out transition
fade_out() {
    for opacity in {5..1}; do
        clear_screen
        echo
        
        for line in "${logo_lines[@]}"; do
            case $opacity in
                5) echo -e "${BOLD}${line}${RESET}" ;;
                4) echo -e "${line}" ;;
                3) echo -e "${DIM}${line}${RESET}" ;;
                2) echo -e "${DIM}${line}${RESET}" ;;
                1) echo -e "${DIM}${line}${RESET}" ;;
            esac
        done
        
        echo
        if [ $opacity -ge 3 ]; then
            echo -e "                           ${DIM}${YELLOW}www.brandtrackers.xyz${RESET}"
        fi
        
        sleep 0.2
    done
}

# Smooth wipe transition (left to right)
wipe_transition() {
    local direction=${1:-"right"}
    
    for wipe in {1..10}; do
        clear_screen
        echo
        
        for i in "${!logo_lines[@]}"; do
            line="${logo_lines[$i]}"
            
            if [ "$direction" = "right" ]; then
                # Reveal from left
                visible_chars=$((${#line} * wipe / 10))
                visible_part="${line:0:$visible_chars}"
                echo -e "$visible_part"
            else
                # Reveal from right
                visible_chars=$((${#line} * wipe / 10))
                start_pos=$((${#line} - visible_chars))
                visible_part="${line:$start_pos}"
                printf "%*s%s\n" $start_pos "" "$visible_part"
            fi
        done
        
        if [ $wipe -ge 7 ]; then
            echo
            website="www.brandtrackers.xyz"
            if [ "$direction" = "right" ]; then
                visible_chars=$((${#website} * wipe / 10))
                visible_part="${website:0:$visible_chars}"
                printf "                           ${BOLD}${YELLOW}%s${RESET}\n" "$visible_part"
            else
                visible_chars=$((${#website} * wipe / 10))
                start_pos=$((${#website} - visible_chars))
                visible_part="${website:$start_pos}"
                printf "%*s${BOLD}${YELLOW}%s${RESET}\n" $((43 + start_pos)) "" "$visible_part"
            fi
        fi
        
        sleep 0.1
        play_sound "pop"
    done
}

# 1. MATRIX DIGITAL RAIN INTRO
matrix_intro() {
    clear_screen
    hide_cursor
    
    term_width=$(tput cols 2>/dev/null || echo 80)
    term_height=$(tput lines 2>/dev/null || echo 24)
    
    # Digital rain building up
    for i in {1..12}; do
        clear_screen
        
        for row in $(seq 1 $term_height); do
            line=""
            for col in $(seq 1 $term_width); do
                if [ $((RANDOM % (20 - i))) -eq 0 ]; then
                    char=$((RANDOM % 26 + 65))
                    line+="${GREEN}$(printf \\$(printf "%03o" $char))${RESET}"
                else
                    line+=" "
                fi
            done
            echo -e "$line"
        done
        
        sleep 0.08
        play_sound "pop"
    done
    
    # Clear matrix and reveal logo
    clear_screen
    echo
    
    for line in "${logo_lines[@]}"; do
        echo -e "${BRIGHT_GREEN}${line}${RESET}"
        sleep 0.1
    done
    
    echo
    echo -e "                           ${BRIGHT_GREEN}www.brandtrackers.xyz${RESET}"
    sleep 1.5
    play_sound "glass"
}

# 2. MATRIX TO RAINBOW TRANSITION
matrix_to_rainbow() {
    # Transition colors from green through spectrum
    transition_colors=($BRIGHT_GREEN $CYAN $BLUE $MAGENTA $RED $YELLOW)
    
    for color in "${transition_colors[@]}"; do
        clear_screen
        echo
        
        for line in "${logo_lines[@]}"; do
            echo -e "${color}${line}${RESET}"
        done
        
        echo
        echo -e "                           ${color}www.brandtrackers.xyz${RESET}"
        
        sleep 0.4
        play_sound "ping"
    done
}

# 3. RAINBOW WAVE FLOW
rainbow_flow() {
    colors=($RED $YELLOW $GREEN $CYAN $BLUE $MAGENTA)
    
    for cycle in {1..8}; do
        clear_screen
        echo
        
        for i in "${!logo_lines[@]}"; do
            color_index=$(((cycle + i) % ${#colors[@]}))
            color="${colors[$color_index]}"
            
            echo -e "${color}${logo_lines[$i]}${RESET}"
        done
        
        echo
        echo -e "                           ${BLINK}${BRIGHT_YELLOW}www.brandtrackers.xyz${RESET}"
        
        sleep 0.25
        play_sound "ping"
    done
}

# 4. RAINBOW TO FIRE TRANSITION (colors get warmer)
rainbow_to_fire() {
    transition_colors=($MAGENTA $RED $BRIGHT_RED $YELLOW $BRIGHT_YELLOW $WHITE)
    
    for color in "${transition_colors[@]}"; do
        clear_screen
        echo
        
        for line in "${logo_lines[@]}"; do
            echo -e "${color}${line}${RESET}"
        done
        
        echo
        echo -e "                           ${color}www.brandtrackers.xyz${RESET}"
        
        sleep 0.3
        play_sound "purr"
    done
}

# 5. FIRE RISING EFFECT
fire_sequence() {
    fire_colors=($RED $BRIGHT_RED $YELLOW $BRIGHT_YELLOW $WHITE)
    
    for flame in {1..10}; do
        clear_screen
        echo
        
        # Fire particles rising from bottom
        for particle in $(seq 1 5); do
            spaces=$((RANDOM % 80))
            printf "%*s" $spaces ""
            color="${fire_colors[$((RANDOM % ${#fire_colors[@]}))]}"
            printf "${color}▲${RESET} "
        done
        echo
        echo
        
        # Logo with fire effect
        for i in "${!logo_lines[@]}"; do
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
}

# 6. FIRE TO GLITCH CORRUPTION
fire_to_glitch() {
    # Gradual corruption introduction
    for corruption in {1..5}; do
        clear_screen
        echo
        
        for i in "${!logo_lines[@]}"; do
            line="${logo_lines[$i]}"
            
            # Introduce random corruption
            if [ $((RANDOM % (8 - corruption))) -eq 0 ]; then
                corrupted=""
                for (( j=0; j<${#line}; j++ )); do
                    if [ $((RANDOM % 30)) -eq 0 ]; then
                        corrupted+="█"
                    elif [ $((RANDOM % 30)) -eq 0 ]; then
                        corrupted+="▓"
                    else
                        corrupted+="${line:$j:1}"
                    fi
                done
                line="$corrupted"
            fi
            
            # Mix fire and glitch colors
            glitch_colors=($BRIGHT_RED $MAGENTA $CYAN $WHITE)
            color="${glitch_colors[$((RANDOM % ${#glitch_colors[@]}))]}"
            echo -e "${color}${line}${RESET}"
        done
        
        echo
        if [ $corruption -ge 3 ]; then
            echo -e "                           ${BLINK}${RED}w̴w̴w̴.̴b̴r̴a̴n̴d̴t̴r̴a̴c̴k̴e̴r̴s̴.̴x̴y̴z̴${RESET}"
        else
            echo -e "                           ${BRIGHT_YELLOW}www.brandtrackers.xyz${RESET}"
        fi
        
        sleep 0.3
        play_sound "pop"
    done
}

# 7. FULL GLITCH CHAOS
glitch_chaos() {
    glitch_colors=($RED $MAGENTA $CYAN $BRIGHT_RED $BRIGHT_MAGENTA $BRIGHT_CYAN $WHITE)
    
    for glitch in {1..8}; do
        clear_screen
        echo
        
        for i in "${!logo_lines[@]}"; do
            line="${logo_lines[$i]}"
            
            # Heavy corruption
            if [ $((RANDOM % 2)) -eq 0 ]; then
                corrupted=""
                for (( j=0; j<${#line}; j++ )); do
                    rand=$((RANDOM % 20))
                    if [ $rand -eq 0 ]; then
                        corrupted+="█"
                    elif [ $rand -eq 1 ]; then
                        corrupted+="▓"
                    elif [ $rand -eq 2 ]; then
                        corrupted+="░"
                    else
                        corrupted+="${line:$j:1}"
                    fi
                done
                line="$corrupted"
            fi
            
            color="${glitch_colors[$((RANDOM % ${#glitch_colors[@]}))]}"
            echo -e "${color}${line}${RESET}"
        done
        
        echo
        case $((glitch % 4)) in
            0) echo -e "                           ${BLINK}${RED}w̴w̴w̴.̴b̴r̴a̴n̴d̴t̴r̴a̴c̴k̴e̴r̴s̴.̴x̴y̴z̴${RESET}" ;;
            1) echo -e "                           ${BRIGHT_CYAN}www.brandtrackers.xyz${RESET}" ;;
            2) echo -e "                           ${BLINK}${MAGENTA}w█w.brand▓rackers.xy▓${RESET}" ;;
            3) echo -e "                           ${WHITE}www.brandtrackers.xyz${RESET}" ;;
        esac
        
        sleep 0.15
        play_sound "pop"
    done
}

# 8. GLITCH REPAIR (gradual cleanup)
glitch_repair() {
    for repair in {1..6}; do
        clear_screen
        echo
        
        for i in "${!logo_lines[@]}"; do
            line="${logo_lines[$i]}"
            
            # Decreasing corruption
            if [ $((RANDOM % (repair + 2))) -eq 0 ]; then
                corrupted=""
                for (( j=0; j<${#line}; j++ )); do
                    if [ $((RANDOM % (repair * 10))) -eq 0 ]; then
                        corrupted+="▓"
                    else
                        corrupted+="${line:$j:1}"
                    fi
                done
                line="$corrupted"
            fi
            
            # Colors getting cleaner
            if [ $repair -le 2 ]; then
                colors=($RED $MAGENTA $CYAN)
            elif [ $repair -le 4 ]; then
                colors=($BLUE $CYAN $WHITE)
            else
                colors=($CYAN $WHITE)
            fi
            
            color="${colors[$((RANDOM % ${#colors[@]}))]}"
            echo -e "${color}${line}${RESET}"
        done
        
        echo
        if [ $repair -ge 4 ]; then
            echo -e "                           ${BRIGHT_CYAN}www.brandtrackers.xyz${RESET}"
        else
            echo -e "                           ${CYAN}www.brandtrackers.xyz${RESET}"
        fi
        
        sleep 0.4
        play_sound "ping"
    done
}

# 9. FINAL CLEAN REVEAL WITH TYPEWRITER
final_typewriter() {
    clear_screen
    hide_cursor
    
    lines=(
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
    
    echo
    for line in "${lines[@]}"; do
        printf "%b" "$line"
        echo
        sleep 0.08
        play_sound "ping"
    done
    
    echo
    website="                           www.brandtrackers.xyz"
    for (( i=0; i<${#website}; i++ )); do
        printf "${BOLD}${YELLOW}%c${RESET}" "${website:$i:1}"
        sleep 0.02
    done
    echo
    echo
    
    show_cursor
    play_sound "glass"
}

# 10. GRAND FINALE SPARKLE
grand_finale() {
    # Keep logo visible and add sparkles
    for sparkle in {1..25}; do
        # Don't clear screen, just add sparkles
        printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 15 + 5)) $((RANDOM % 70 + 5))
        sleep 0.1
        play_sound "ping"
    done
    
    # Final celebration
    echo
    echo "                    ${BLINK}${BRIGHT_MAGENTA}🎉 BRANDTRACKERS EXPERIENCE COMPLETE! 🎉${RESET}"
    echo
    
    play_sound "funk"
    sleep 2
}

# 🎬 MAIN MEGA SEQUENCE
echo -e "${BOLD}${CYAN}Starting BrandTrackers Mega Flow Experience...${RESET}"
sleep 1

# 1. Matrix digital rain intro
matrix_intro

# 2. Matrix to rainbow transition
matrix_to_rainbow

# 3. Rainbow wave flow
rainbow_flow

# 4. Rainbow to fire transition
rainbow_to_fire

# 5. Fire rising sequence
fire_sequence

# 6. Fire to glitch corruption
fire_to_glitch

# 7. Full glitch chaos
glitch_chaos

# 8. Glitch repair (cleanup)
glitch_repair

# 9. Final clean typewriter reveal
final_typewriter

# 10. Grand finale with sparkles
grand_finale

echo
echo "                    ${DIM}The complete BrandTrackers experience. 🌟${RESET}"
echo