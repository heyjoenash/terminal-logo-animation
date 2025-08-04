#!/bin/bash

# BRANDTRACKERS MEGA FLOW - OPTIMIZED
# Keep all the great effects, just tighten pacing + add 1 new logo style

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
            "funk") afplay /System/Library/Sounds/Funk.aiff >/dev/null 2>&1 & ;;
        esac
    fi
}

# 1. FASTER MATRIX INTRO (reduced from ~3s to ~1.5s)
matrix_intro() {
    clear_screen
    hide_cursor
    
    term_width=$(tput cols 2>/dev/null || echo 80)
    term_height=$(tput lines 2>/dev/null || echo 24)
    
    # Faster digital rain building (reduced iterations)
    for i in {1..8}; do
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
        
        sleep 0.06  # Reduced from 0.08
        play_sound "pop"
    done
    
    # Quick logo reveal
    clear_screen
    echo
    
    for line in "${logo_lines[@]}"; do
        echo -e "${BRIGHT_GREEN}${line}${RESET}"
        sleep 0.08  # Reduced from 0.1
    done
    
    echo
    echo -e "                           ${BRIGHT_GREEN}www.brandtrackers.xyz${RESET}"
    sleep 1  # Reduced from 1.5
    play_sound "glass"
}

# 2. MATRIX TO RAINBOW (keep same)
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
        
        sleep 0.4
        play_sound "ping"
    done
}

# 3. RAINBOW WAVE FLOW (keep same)
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

# 4. RAINBOW TO FIRE (keep same)
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

# 5. FIRE SEQUENCE (keep same)
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

# 6. FIRE TO GLITCH (keep same) 
fire_to_glitch() {
    for corruption in {1..5}; do
        clear_screen
        echo
        
        for i in "${!logo_lines[@]}"; do
            line="${logo_lines[$i]}"
            
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

# 7. GLITCH CHAOS (keep same)
glitch_chaos() {
    glitch_colors=($RED $MAGENTA $CYAN $BRIGHT_RED $BRIGHT_MAGENTA $BRIGHT_CYAN $WHITE)
    
    for glitch in {1..8}; do
        clear_screen
        echo
        
        for i in "${!logo_lines[@]}"; do
            line="${logo_lines[$i]}"
            
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

# 8. GLITCH REPAIR (keep same)
glitch_repair() {
    for repair in {1..6}; do
        clear_screen
        echo
        
        for i in "${!logo_lines[@]}"; do
            line="${logo_lines[$i]}"
            
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

# 9. NEW: TERMINAL GREEN + BLACK HIGH CONTRAST (2 seconds)
terminal_retro() {
    clear_screen
    play_sound "ping"
    echo
    
    # High contrast terminal look
    for line in "${logo_lines[@]}"; do
        # Replace all colors with bright green on black background
        terminal_line="${line//${CYAN}/\033[42m\033[30m}"  # Green background, black text for borders
        terminal_line="${terminal_line//${RED}/\033[1;32m}"    # Bright green
        terminal_line="${terminal_line//${GREEN}/\033[1;32m}"  # Bright green
        terminal_line="${terminal_line//${YELLOW}/\033[1;32m}" # Bright green
        terminal_line="${terminal_line//${BLUE}/\033[1;32m}"   # Bright green
        terminal_line="${terminal_line//${MAGENTA}/\033[1;32m}" # Bright green
        terminal_line="${terminal_line//${WHITE}/\033[1;32m}"  # Bright green
        
        echo -e "${terminal_line}${RESET}"
    done
    
    echo
    echo -e "                           \033[5m\033[1;32m>>> www.brandtrackers.xyz <<<${RESET}"
    echo -e "                              \033[2m\033[32m[TERMINAL MODE ACTIVE]${RESET}"
    
    sleep 2
    play_sound "glass"
}

# 10. FINAL CLEAN TYPEWRITER (faster, no long pause at end)
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
        sleep 0.06  # Reduced from 0.08
        play_sound "ping"
    done
    
    echo
    website="                           www.brandtrackers.xyz"
    for (( i=0; i<${#website}; i++ )); do
        printf "${BOLD}${YELLOW}%c${RESET}" "${website:$i:1}"
        sleep 0.015  # Reduced from 0.02  
    done
    echo
    echo
    
    show_cursor
    play_sound "glass"
}

# 11. GRAND FINALE SPARKLE (bring back the original with synced sounds)
grand_finale() {
    # Keep logo visible and add sparkles synced to sounds
    for sparkle in {1..25}; do
        # Add star exactly when sound plays (like bullet holes punching through)
        printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 15 + 5)) $((RANDOM % 70 + 5))
        play_sound "ping"  # Sound plays WITH each star appearance
        sleep 0.1
    done
    
    # Final celebration
    echo
    echo "                    ${BLINK}${BRIGHT_MAGENTA}🎉 BRANDTRACKERS EXPERIENCE COMPLETE! 🎉${RESET}"
    echo
    
    play_sound "funk"
    sleep 2
}

# 🎬 OPTIMIZED MEGA SEQUENCE
echo -e "${BOLD}${CYAN}Starting BrandTrackers Mega Flow Experience...${RESET}"
sleep 0.8  # Reduced from 1

# 1. Faster matrix intro (1.5s vs 3s)
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

# 9. NEW: Terminal retro green style
terminal_retro

# 10. Final clean typewriter reveal (faster)
final_typewriter

# 11. Quick finale (no long pause)
grand_finale

echo
echo "                    ${DIM}The complete BrandTrackers experience. 🌟${RESET}"
echo