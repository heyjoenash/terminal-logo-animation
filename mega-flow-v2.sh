#!/bin/bash

# BRANDTRACKERS MEGA FLOW V2 - OPTIMIZED HIGH-ENERGY EXPERIENCE
# Tighter pacing, more transformations, constant momentum!
# Total runtime: ~22 seconds

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

# Optimized sound effects (only on visual changes)
play_sound() {
    if command -v afplay >/dev/null 2>&1; then
        case $1 in
            "pop") afplay /System/Library/Sounds/Pop.aiff >/dev/null 2>&1 & ;;
            "ping") afplay /System/Library/Sounds/Ping.aiff >/dev/null 2>&1 & ;;
            "purr") afplay /System/Library/Sounds/Purr.aiff >/dev/null 2>&1 & ;;
            "glass") afplay /System/Library/Sounds/Glass.aiff >/dev/null 2>&1 & ;;
            "tink") afplay /System/Library/Sounds/Tink.aiff >/dev/null 2>&1 & ;;
        esac
    fi
}

# 1. FAST MATRIX INTRO (1.5 seconds)
matrix_intro() {
    clear_screen
    hide_cursor
    play_sound "pop"
    
    term_width=$(tput cols 2>/dev/null || echo 80)
    term_height=$(tput lines 2>/dev/null || echo 24)
    
    # Faster digital rain buildup
    for i in {1..8}; do
        clear_screen
        
        for row in $(seq 1 $term_height); do
            line=""
            for col in $(seq 1 $term_width); do
                if [ $((RANDOM % (15 - i))) -eq 0 ]; then
                    char=$((RANDOM % 26 + 65))
                    line+="${GREEN}$(printf \\$(printf "%03o" $char))${RESET}"
                else
                    line+=" "
                fi
            done
            echo -e "$line"
        done
        
        sleep 0.08
    done
    
    # Logo reveal with pulsing effect (never static)
    clear_screen
    play_sound "ping"
    
    for pulse in {1..3}; do
        clear_screen
        echo
        if [ $((pulse % 2)) -eq 0 ]; then
            for line in "${logo_lines[@]}"; do
                echo -e "${BRIGHT_GREEN}${line}${RESET}"
            done
            echo
            echo -e "                           ${BRIGHT_GREEN}✨ www.brandtrackers.xyz ✨${RESET}"
        else
            for line in "${logo_lines[@]}"; do
                echo -e "${GREEN}${line}${RESET}"
            done
            echo
            echo -e "                           ${GREEN}www.brandtrackers.xyz${RESET}"
        fi
        sleep 0.2
    done
}

# 2. MATRIX TO RAINBOW (1.5 seconds)
matrix_to_rainbow() {
    transition_colors=($BRIGHT_GREEN $CYAN $BLUE $MAGENTA $RED $YELLOW)
    
    for color in "${transition_colors[@]}"; do
        clear_screen
        echo
        for line in "${logo_lines[@]}"; do
            echo -e "${color}${line}${RESET}"
        done
        echo
        echo -e "                           ${color}www.brandtrackers.xyz${RESET}"
        sleep 0.25
        play_sound "ping"
    done
}

# 3. RAINBOW WAVE FLOW (2 seconds)
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
    done
    play_sound "pop"
}

# 4. NEW: NEON GLOW EFFECT (2 seconds)
neon_glow() {
    neon_colors=($BRIGHT_MAGENTA $BRIGHT_CYAN)
    
    for glow in {1..8}; do
        clear_screen
        echo
        color="${neon_colors[$((glow % 2))]}"
        
        for line in "${logo_lines[@]}"; do
            echo -e "${color}${line}${RESET}"
        done
        echo
        echo -e "                           ${color}⚡ www.brandtrackers.xyz ⚡${RESET}"
        sleep 0.25
    done
    play_sound "tink"
}

# 5. FIRE GRADIENT (1.8 seconds)
fire_sequence() {
    fire_colors=($RED $BRIGHT_RED $YELLOW $BRIGHT_YELLOW $WHITE)
    
    for flame in {1..9}; do
        clear_screen
        echo
        for i in "${!logo_lines[@]}"; do
            intensity=$((flame + i))
            color_index=$((intensity % ${#fire_colors[@]}))
            color="${fire_colors[$color_index]}"
            echo -e "${color}${logo_lines[$i]}${RESET}"
        done
        echo
        echo -e "                           ${BRIGHT_YELLOW}🔥 www.brandtrackers.xyz 🔥${RESET}"
        sleep 0.2
    done
    play_sound "purr"
}

# 6. NEW: 3D SHADOW EFFECT (1.5 seconds)
shadow_3d() {
    for depth in {1..6}; do
        clear_screen
        echo
        
        # Create 3D shadow by offsetting
        for i in "${!logo_lines[@]}"; do
            shadow_line="${logo_lines[$i]//█/▓}"
            shadow_line="${shadow_line//╗/▓}"
            shadow_line="${shadow_line//╔/▓}"
            shadow_line="${shadow_line//║/▓}"
            shadow_line="${shadow_line//╚/▓}"
            shadow_line="${shadow_line//╝/▓}"
            
            # Shadow behind
            printf "%*s" $depth ""
            echo -e "${DIM}${BLACK}${shadow_line}${RESET}"
            
            # Main logo on top
            printf "\033[1A"  # Move up one line
            echo -e "${BOLD}${WHITE}${logo_lines[$i]}${RESET}"
        done
        
        echo
        # Pulsing website with sparkles
        if [ $((depth % 2)) -eq 0 ]; then
            printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 5 + 15)) $((RANDOM % 40 + 20))
            echo -e "                           ${BOLD}${BRIGHT_WHITE}✨ www.brandtrackers.xyz ✨${RESET}"
        else
            echo -e "                           ${BOLD}${WHITE}www.brandtrackers.xyz${RESET}"
        fi
        sleep 0.25
        play_sound "pop"
    done
}

# 7. GLITCH CHAOS (1.2 seconds)
glitch_chaos() {
    glitch_colors=($RED $MAGENTA $CYAN $BRIGHT_RED $BRIGHT_MAGENTA $BRIGHT_CYAN $WHITE)
    
    for glitch in {1..6}; do
        clear_screen
        echo
        
        for i in "${!logo_lines[@]}"; do
            line="${logo_lines[$i]}"
            
            # Quick corruption
            if [ $((RANDOM % 2)) -eq 0 ]; then
                corrupted=""
                for (( j=0; j<${#line}; j++ )); do
                    rand=$((RANDOM % 15))
                    if [ $rand -eq 0 ]; then
                        corrupted+="█"
                    elif [ $rand -eq 1 ]; then
                        corrupted+="▓"
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
        case $((glitch % 3)) in
            0) echo -e "                           ${BLINK}${RED}w̴w̴w̴.̴b̴r̴a̴n̴d̴t̴r̴a̴c̴k̴e̴r̴s̴.̴x̴y̴z̴${RESET}" ;;
            1) echo -e "                           ${BRIGHT_CYAN}www.brandtrackers.xyz${RESET}" ;;
            2) echo -e "                           ${MAGENTA}w█w.brand▓rackers.xy▓${RESET}" ;;
        esac
        
        sleep 0.2
        play_sound "pop"
    done
}

# 8. FAST REPAIR (1.5 seconds)
glitch_repair() {
    for repair in {1..6}; do
        clear_screen
        echo
        
        for i in "${!logo_lines[@]}"; do
            line="${logo_lines[$i]}"
            
            # Decreasing corruption
            if [ $((RANDOM % (repair + 3))) -eq 0 ]; then
                corrupted=""
                for (( j=0; j<${#line}; j++ )); do
                    if [ $((RANDOM % (repair * 8))) -eq 0 ]; then
                        corrupted+="▓"
                    else
                        corrupted+="${line:$j:1}"
                    fi
                done
                line="$corrupted"
            fi
            
            # Colors getting cleaner
            if [ $repair -le 2 ]; then
                colors=($RED $MAGENTA)
            elif [ $repair -le 4 ]; then
                colors=($CYAN $WHITE)
            else
                colors=($BRIGHT_CYAN)
            fi
            
            color="${colors[$((RANDOM % ${#colors[@]}))]}"
            echo -e "${color}${line}${RESET}"
        done
        
        echo
        echo -e "                           ${BRIGHT_CYAN}www.brandtrackers.xyz${RESET}"
        sleep 0.25
        play_sound "ping"
    done
}

# 9. NEW: COLOR INVERSE FLASH (1 second)
color_inverse() {
    for flash in {1..5}; do
        clear_screen
        echo
        
        if [ $((flash % 2)) -eq 0 ]; then
            # Inverted colors with flash sparkles
            for line in "${logo_lines[@]}"; do
                inverted="${line//${CYAN}/${BRIGHT_YELLOW}}"
                inverted="${inverted//${RED}/${BRIGHT_GREEN}}"
                inverted="${inverted//${GREEN}/${BRIGHT_RED}}"
                inverted="${inverted//${YELLOW}/${BRIGHT_BLUE}}"
                inverted="${inverted//${BLUE}/${BRIGHT_YELLOW}}"
                inverted="${inverted//${MAGENTA}/${BRIGHT_GREEN}}"
                echo -e "${inverted}"
            done
            echo
            # Flash sparkles during inversion
            printf "\033[%d;%dH${BRIGHT_WHITE}⚡${RESET}" $((RANDOM % 8 + 8)) $((RANDOM % 30 + 25))
            printf "\033[%d;%dH${BRIGHT_WHITE}⚡${RESET}" $((RANDOM % 8 + 8)) $((RANDOM % 30 + 45))
            echo -e "                           ${BLINK}${BLACK}${BRIGHT_WHITE}⚡ www.brandtrackers.xyz ⚡${RESET}"
        else
            # Normal colors with subtle glow
            for line in "${logo_lines[@]}"; do
                echo -e "${line}"
            done
            echo
            printf "\033[%d;%dH${BRIGHT_CYAN}✨${RESET}" $((RANDOM % 8 + 8)) $((RANDOM % 20 + 30))
            echo -e "                           ${BRIGHT_CYAN}www.brandtrackers.xyz${RESET}"
        fi
        
        sleep 0.2
        play_sound "tink"
    done
}

# 10. FAST TYPEWRITER FINALE (2.5 seconds)
final_typewriter() {
    clear_screen
    hide_cursor
    play_sound "ping"
    
    echo
    for line in "${logo_lines[@]}"; do
        printf "%b" "$line"
        echo
        sleep 0.06
    done
    
    echo
    website="                           www.brandtrackers.xyz"
    for (( i=0; i<${#website}; i++ )); do
        printf "${BOLD}${YELLOW}%c${RESET}" "${website:$i:1}"
        sleep 0.015
    done
    echo
    echo
    
    # Quick sparkle burst
    for sparkle in {1..15}; do
        printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 12 + 5)) $((RANDOM % 60 + 10))
        sleep 0.05
    done
    
    # Continuous sparkle finale (never static)
    for finale in {1..8}; do
        # Add more sparkles continuously
        for i in {1..3}; do
            printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 12 + 5)) $((RANDOM % 60 + 10))
        done
        
        # Pulsing tagline
        if [ $((finale % 2)) -eq 0 ]; then
            printf "\033[20;1H                    ${BLINK}${BRIGHT_MAGENTA}🎉 BRANDTRACKERS EXPERIENCE! 🎉${RESET}"
        else
            printf "\033[20;1H                    ${BOLD}${MAGENTA}🎉 BRANDTRACKERS EXPERIENCE! 🎉${RESET}"
        fi
        sleep 0.15
    done
    
    show_cursor
    play_sound "glass"
}

# 🎬 OPTIMIZED MEGA SEQUENCE
echo -e "${BOLD}${CYAN}🚀 BrandTrackers Mega Flow v2.0 - High Energy!${RESET}"
sleep 0.5

# Scene breakdown (~22 seconds total):
matrix_intro        # 1.5s - Matrix digital rain + green logo
matrix_to_rainbow   # 1.5s - Green → Rainbow transition  
rainbow_flow        # 2.0s - Rainbow wave cycling
neon_glow          # 2.0s - NEW: Electric neon effect
fire_sequence      # 1.8s - Fire gradient rising
shadow_3d          # 1.5s - NEW: 3D shadow depth
glitch_chaos       # 1.2s - Digital corruption
glitch_repair      # 1.5s - System restoration  
color_inverse      # 1.0s - NEW: Color flash inversion
final_typewriter   # 2.5s - Clean reveal + sparkles

echo
echo "                    ${DIM}High-energy experience: ~22 seconds${RESET}"
echo