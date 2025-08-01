#!/bin/bash

# BrandTrackers Animated Terminal Logo
# Multiple animation styles with sound effects

# Colors and formatting
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

# Enhanced color palette
BRIGHT_RED='\033[1;31m'
BRIGHT_GREEN='\033[1;32m'
BRIGHT_YELLOW='\033[1;33m'
BRIGHT_BLUE='\033[1;34m'
BRIGHT_MAGENTA='\033[1;35m'
BRIGHT_CYAN='\033[1;36m'
BRIGHT_WHITE='\033[1;37m'

# ASCII Art versions
logo_lines=(
    "██████╗ ██████╗  █████╗ ███╗   ██╗██████╗ ████████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗██████╗ ███████╗"
    "██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗██╔════╝"
    "██████╔╝██████╔╝███████║██╔██╗ ██║██║  ██║   ██║   ██████╔╝███████║██║     █████╔╝ █████╗  ██████╔╝███████╗"
    "██╔══██╗██╔══██╗██╔══██║██║╚██╗██║██║  ██║   ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗╚════██║"
    "██████╔╝██║  ██║██║  ██║██║ ╚████║██████╔╝   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║███████║"
    "╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝"
)

simple_logo=(
    "    ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄  ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄"
    "   █  ▄    █  ▄    █      █       █      ██       █       █      █       █  █▄█  █       █       █       █"
    "   █ █▄█   █ █▄█   █  ▄   █  ▄▄▄▄▄█  ▄    █▄     ▄█  ▄▄▄▄▄█  ▄▄▄▄█       █       █   ▄   █    ▄▄▄█  ▄▄▄▄▄█"
    "   █       █       █ █▄█  █ █▄▄▄▄▄█ █ █   █ █   █ █ █▄▄▄▄▄█ █▄▄▄▄█     ▄▄█       █  █ █  █   █▄▄▄█ █▄▄▄▄▄█"  
    "   █  ▄   ██  ▄   ██      █▄▄▄▄▄  █ █▄█   █ █   █ █▄▄▄▄▄  █      █    █  █ ██▄██ █  █▄█  █    ▄▄▄█▄▄▄▄▄  █"
    "   █ █▄█   █ █▄█   █  ▄   █▄▄▄▄▄█ █       █ █▄▄▄█ █▄▄▄▄▄█ █  ▄▄▄▄█▄▄▄▄█  █       █       █   █▄▄▄█▄▄▄▄▄█ █"
    "   █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄█ █▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄█▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█"
)

# Messages and taglines
taglines=(
    "🎯 TRACK • ANALYZE • OPTIMIZE • SCALE 🚀"
    "🔍 BRAND INTELLIGENCE PLATFORM"
    "📊 DATA-DRIVEN INSIGHTS"
    "⚡ REAL-TIME MONITORING" 
    "🌟 ELEVATE YOUR BRAND"
)

subtitles=(
    "Terminal-Powered Brand Intelligence"
    "The Ultimate Brand Tracking Suite"
    "Precision Analytics for Modern Brands"
    "Your Brand's Digital Command Center"
)

# Utility functions
clear_screen() {
    printf "\033[2J\033[H"
}

hide_cursor() {
    printf "\033[?25l"
}

show_cursor() {
    printf "\033[?25h"
}

play_beep() {
    if command -v afplay >/dev/null 2>&1; then
        afplay /System/Library/Sounds/Ping.aiff >/dev/null 2>&1 &
    else
        echo -e '\a' 2>/dev/null
    fi
}

play_success_sound() {
    if command -v afplay >/dev/null 2>&1; then
        afplay /System/Library/Sounds/Glass.aiff >/dev/null 2>&1 &
    fi
}

get_random_color() {
    colors=($RED $GREEN $YELLOW $BLUE $MAGENTA $CYAN $BRIGHT_RED $BRIGHT_GREEN $BRIGHT_YELLOW $BRIGHT_BLUE $BRIGHT_MAGENTA $BRIGHT_CYAN)
    echo "${colors[$((RANDOM % ${#colors[@]}))]}"
}

# Animation functions
typewriter_effect() {
    clear_screen
    hide_cursor
    
    term_width=$(tput cols 2>/dev/null || echo 80)
    
    # Choose logo based on terminal width
    if [ $term_width -ge 120 ]; then
        current_logo=("${logo_lines[@]}")
    else
        current_logo=("${simple_logo[@]}")
    fi
    
    echo
    echo
    
    # Type each line with color
    colors=($CYAN $BLUE $MAGENTA $RED $YELLOW $GREEN)
    
    for i in "${!current_logo[@]}"; do
        color_index=$((i % ${#colors[@]}))
        color="${colors[$color_index]}"
        
        printf "$color"
        
        # Type character by character
        line="${current_logo[$i]}"
        for (( j=0; j<${#line}; j++ )); do
            printf "%c" "${line:$j:1}"
            sleep 0.01
            if [ $((j % 10)) -eq 0 ]; then
                play_beep
            fi
        done
        printf "$RESET\n"
        sleep 0.1
    done
    
    echo
    
    # Animate tagline
    tagline="${taglines[0]}"
    printf "${BOLD}${YELLOW}"
    printf "%*s" $(((${#tagline} + term_width) / 2)) ""
    for (( j=0; j<${#tagline}; j++ )); do
        printf "%c" "${tagline:$j:1}"
        sleep 0.03
    done
    printf "$RESET\n"
    
    # Animate subtitle
    subtitle="${subtitles[0]}"
    printf "$CYAN"
    printf "%*s" $(((${#subtitle} + term_width) / 2)) ""
    for (( j=0; j<${#subtitle}; j++ )); do
        printf "%c" "${subtitle:$j:1}"
        sleep 0.02
    done
    printf "$RESET\n"
    
    play_success_sound
    show_cursor
}

rainbow_wave() {
    hide_cursor
    local cycles=${1:-5}
    
    term_width=$(tput cols 2>/dev/null || echo 80)
    
    if [ $term_width -ge 120 ]; then
        current_logo=("${logo_lines[@]}")
    else
        current_logo=("${simple_logo[@]}")
    fi
    
    for cycle in $(seq 1 $cycles); do
        clear_screen
        echo
        echo
        
        # Rainbow colors
        rainbow_colors=($RED $YELLOW $GREEN $CYAN $BLUE $MAGENTA)
        
        for i in "${!current_logo[@]}"; do
            offset=$((cycle + i))
            color_index=$(((offset) % ${#rainbow_colors[@]}))
            color="${rainbow_colors[$color_index]}"
            
            printf "${color}%s${RESET}\n" "${current_logo[$i]}"
        done
        
        echo
        
        # Rotate taglines
        tagline_index=$(((cycle - 1) % ${#taglines[@]}))
        tagline="${taglines[$tagline_index]}"
        printf "${BOLD}${BLINK}${YELLOW}%*s${RESET}\n" $(((${#tagline} + term_width) / 2)) "$tagline"
        
        subtitle_index=$(((cycle - 1) % ${#subtitles[@]}))
        subtitle="${subtitles[$subtitle_index]}"
        printf "${CYAN}%*s${RESET}\n" $(((${#subtitle} + term_width) / 2)) "$subtitle"
        
        sleep 0.3
        play_beep
    done
    
    play_success_sound
    show_cursor
}

matrix_effect() {
    hide_cursor
    clear_screen
    
    term_width=$(tput cols 2>/dev/null || echo 80)
    term_height=$(tput lines 2>/dev/null || echo 24)
    
    # Fill screen with random characters first
    for i in $(seq 1 10); do
        clear_screen
        for row in $(seq 1 $term_height); do
            for col in $(seq 1 $term_width); do
                if [ $((RANDOM % 20)) -eq 0 ]; then
                    printf "${GREEN}%c${RESET}" $((RANDOM % 26 + 65))
                else
                    printf " "
                fi
            done
            echo
        done
        sleep 0.1
    done
    
    # Reveal logo
    clear_screen
    echo
    echo
    
    if [ $term_width -ge 120 ]; then
        current_logo=("${logo_lines[@]}")
    else
        current_logo=("${simple_logo[@]}")
    fi
    
    for i in "${!current_logo[@]}"; do
        printf "${BRIGHT_GREEN}%s${RESET}\n" "${current_logo[$i]}"
        sleep 0.2
        play_beep
    done
    
    echo
    printf "${BOLD}${BRIGHT_CYAN}%*s${RESET}\n" $(((${#taglines[0]} + term_width) / 2)) "${taglines[0]}"
    printf "${GREEN}%*s${RESET}\n" $(((${#subtitles[0]} + term_width) / 2)) "${subtitles[0]}"
    
    play_success_sound
    show_cursor
}

glitch_effect() {
    hide_cursor
    local iterations=${1:-8}
    
    term_width=$(tput cols 2>/dev/null || echo 80)
    
    if [ $term_width -ge 120 ]; then
        current_logo=("${logo_lines[@]}")
    else
        current_logo=("${simple_logo[@]}")
    fi
    
    for iter in $(seq 1 $iterations); do
        clear_screen
        echo
        echo
        
        for i in "${!current_logo[@]}"; do
            # Random glitch colors
            glitch_colors=($RED $MAGENTA $CYAN $YELLOW $WHITE)
            color="${glitch_colors[$((RANDOM % ${#glitch_colors[@]}))]}"
            
            line="${current_logo[$i]}"
            
            # Add some random character corruption
            if [ $((RANDOM % 3)) -eq 0 ]; then
                # Corrupt a few characters
                corrupted_line=""
                for (( j=0; j<${#line}; j++ )); do
                    if [ $((RANDOM % 20)) -eq 0 ]; then
                        corrupted_line+="█"
                    else
                        corrupted_line+="${line:$j:1}"
                    fi
                done
                printf "${color}%s${RESET}\n" "$corrupted_line"
            else
                printf "${color}%s${RESET}\n" "$line"
            fi
        done
        
        echo
        printf "${BLINK}${RED}%*s${RESET}\n" $(((${#taglines[2]} + term_width) / 2)) "${taglines[2]}"
        printf "${DIM}${WHITE}%*s${RESET}\n" $(((${#subtitles[2]} + term_width) / 2)) "${subtitles[2]}"
        
        sleep 0.1
        play_beep
    done
    
    # Final clean version
    clear_screen
    echo
    echo
    
    colors=($CYAN $BLUE $MAGENTA $RED $YELLOW $GREEN)
    for i in "${!current_logo[@]}"; do
        color_index=$((i % ${#colors[@]}))
        printf "${colors[$color_index]}%s${RESET}\n" "${current_logo[$i]}"
    done
    
    echo
    printf "${BOLD}${YELLOW}%*s${RESET}\n" $(((${#taglines[0]} + term_width) / 2)) "${taglines[0]}"
    printf "${CYAN}%*s${RESET}\n" $(((${#subtitles[0]} + term_width) / 2)) "${subtitles[0]}"
    
    play_success_sound
    show_cursor
}

fire_effect() {
    hide_cursor
    local flames=${1:-10}
    
    term_width=$(tput cols 2>/dev/null || echo 80)
    
    if [ $term_width -ge 120 ]; then
        current_logo=("${logo_lines[@]}")
    else
        current_logo=("${simple_logo[@]}")
    fi
    
    for flame in $(seq 1 $flames); do
        clear_screen
        echo
        echo
        
        # Fire colors progression
        fire_colors=($RED $BRIGHT_RED $YELLOW $BRIGHT_YELLOW $WHITE)
        
        for i in "${!current_logo[@]}"; do
            # Calculate color based on position and flame iteration
            color_index=$(((flame + i) % ${#fire_colors[@]}))
            color="${fire_colors[$color_index]}"
            
            printf "${color}%s${RESET}\n" "${current_logo[$i]}"
        done
        
        echo
        printf "${BRIGHT_YELLOW}%*s${RESET}\n" $(((${#taglines[4]} + term_width) / 2)) "${taglines[4]}"
        printf "${BRIGHT_RED}%*s${RESET}\n" $(((${#subtitles[3]} + term_width) / 2)) "${subtitles[3]}"
        
        # Add some fire particles
        echo
        for particle in $(seq 1 5); do
            printf "%*s${YELLOW}•${RESET}" $((RANDOM % term_width)) ""
        done
        echo
        
        sleep 0.2
        play_beep
    done
    
    play_success_sound
    show_cursor
}

# Interactive menu
show_menu() {
    clear_screen
    hide_cursor
    
    echo
    echo "  ${BOLD}${CYAN}┌─────────────────────────────────────────────┐${RESET}"
    echo "  ${BOLD}${CYAN}│           BRANDTRACKERS TERMINAL            │${RESET}"
    echo "  ${BOLD}${CYAN}│              ANIMATION SUITE                │${RESET}"
    echo "  ${BOLD}${CYAN}├─────────────────────────────────────────────┤${RESET}"
    echo "  ${CYAN}│                                             │${RESET}"
    echo "  ${CYAN}│  ${YELLOW}1${RESET}${CYAN} - ${WHITE}Static Display${RESET}${CYAN}                        │${RESET}"
    echo "  ${CYAN}│  ${YELLOW}2${RESET}${CYAN} - ${WHITE}Typewriter Animation${RESET}${CYAN}                 │${RESET}"
    echo "  ${CYAN}│  ${YELLOW}3${RESET}${CYAN} - ${WHITE}Rainbow Wave${RESET}${CYAN}                         │${RESET}"
    echo "  ${CYAN}│  ${YELLOW}4${RESET}${CYAN} - ${WHITE}Matrix Effect${RESET}${CYAN}                        │${RESET}"
    echo "  ${CYAN}│  ${YELLOW}5${RESET}${CYAN} - ${WHITE}Glitch Animation${RESET}${CYAN}                     │${RESET}"
    echo "  ${CYAN}│  ${YELLOW}6${RESET}${CYAN} - ${WHITE}Fire Effect${RESET}${CYAN}                          │${RESET}"
    echo "  ${CYAN}│  ${YELLOW}7${RESET}${CYAN} - ${WHITE}Random Animation${RESET}${CYAN}                     │${RESET}"
    echo "  ${CYAN}│  ${YELLOW}8${RESET}${CYAN} - ${WHITE}Demo Mode (All Effects)${RESET}${CYAN}              │${RESET}"
    echo "  ${CYAN}│                                             │${RESET}"
    echo "  ${CYAN}│  ${RED}q${RESET}${CYAN} - ${WHITE}Quit${RESET}${CYAN}                                  │${RESET}"
    echo "  ${CYAN}│                                             │${RESET}"
    echo "  ${BOLD}${CYAN}└─────────────────────────────────────────────┘${RESET}"
    echo
    printf "  ${BOLD}${WHITE}Choose an option: ${RESET}"
    
    show_cursor
}

demo_mode() {
    local effects=(
        "typewriter_effect"
        "rainbow_wave 3"
        "matrix_effect"
        "glitch_effect 5"
        "fire_effect 8"
    )
    
    for effect in "${effects[@]}"; do
        echo
        printf "${BOLD}${YELLOW}Starting: ${effect}${RESET}\n"
        sleep 1
        eval $effect
        sleep 2
    done
    
    echo
    printf "${BOLD}${GREEN}Demo complete! 🎉${RESET}\n"
    sleep 2
}

# Static display (fallback)
show_static() {
    clear_screen
    echo
    echo
    
    term_width=$(tput cols 2>/dev/null || echo 80)
    
    if [ $term_width -ge 120 ]; then
        current_logo=("${logo_lines[@]}")
    else
        current_logo=("${simple_logo[@]}")
    fi
    
    colors=($CYAN $BLUE $MAGENTA $RED $YELLOW $GREEN)
    
    for i in "${!current_logo[@]}"; do
        color_index=$((i % ${#colors[@]}))
        printf "${colors[$color_index]}%s${RESET}\n" "${current_logo[$i]}"
    done
    
    echo
    printf "${BOLD}${YELLOW}%*s${RESET}\n" $(((${#taglines[0]} + term_width) / 2)) "${taglines[0]}"
    printf "${CYAN}%*s${RESET}\n" $(((${#subtitles[0]} + term_width) / 2)) "${subtitles[0]}"
    echo
}

# Main execution
main() {
    # Handle command line arguments
    case "${1:-menu}" in
        "static"|"1")
            show_static
            ;;
        "typewriter"|"2")
            typewriter_effect
            ;;
        "rainbow"|"3")
            rainbow_wave 5
            ;;
        "matrix"|"4")
            matrix_effect
            ;;
        "glitch"|"5")
            glitch_effect 8
            ;;
        "fire"|"6")
            fire_effect 12
            ;;
        "random"|"7")
            effects=(typewriter_effect "rainbow_wave 3" matrix_effect "glitch_effect 5" "fire_effect 8")
            random_effect="${effects[$((RANDOM % ${#effects[@]}))]}"
            eval $random_effect
            ;;
        "demo"|"8")
            demo_mode
            ;;
        "menu"|*)
            while true; do
                show_menu
                read -n 1 choice
                echo
                
                case $choice in
                    1) show_static; break ;;
                    2) typewriter_effect; break ;;
                    3) rainbow_wave 5; break ;;
                    4) matrix_effect; break ;;
                    5) glitch_effect 8; break ;;
                    6) fire_effect 12; break ;;
                    7) 
                        effects=(typewriter_effect "rainbow_wave 3" matrix_effect "glitch_effect 5" "fire_effect 8")
                        random_effect="${effects[$((RANDOM % ${#effects[@]}))]}"
                        eval $random_effect
                        break 
                        ;;
                    8) demo_mode; break ;;
                    q|Q) 
                        clear_screen
                        echo "Thanks for using BrandTrackers Terminal! 🚀"
                        exit 0 
                        ;;
                    *) 
                        echo "Invalid option. Please try again."
                        sleep 1
                        ;;
                esac
            done
            ;;
    esac
    
    # Return to menu prompt
    echo
    printf "${DIM}Press any key to return to menu, or Ctrl+C to exit...${RESET}"
    read -n 1
    main menu
}

# Trap to restore cursor on exit
trap 'show_cursor; exit' INT TERM

# Run main function
main "$@"