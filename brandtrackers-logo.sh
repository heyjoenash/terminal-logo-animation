#!/bin/bash

# BrandTrackers Terminal Logo Animation
# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
BOLD='\033[1m'
RESET='\033[0m'

# Clear ASCII Art for BRANDTRACKERS
logo_lines=(
    "██████╗ ██████╗  █████╗ ███╗   ██╗██████╗ ████████╗██████╗  █████╗  ██████╗██║  ██╗███████╗██████╗ ███████╗"
    "██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗██╔════╝"
    "██████╔╝██████╔╝███████║██╔██╗ ██║██║  ██║   ██║   ██████╔╝███████║██║     █████╔╝ █████╗  ██████╔╝███████╗"
    "██╔══██╗██╔══██╗██╔══██║██║╚██╗██║██║  ██║   ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗╚════██║"
    "██████╔╝██║  ██║██║  ██║██║ ╚████║██████╔╝   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║███████║"
    "╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝"
)

# Simple readable version
simple_logo=(
    "▄▄▄▄▄ ▄▄▄▄  ▄▄▄  ▄▄   ▄ ▄▄▄▄  ▄▄▄▄▄▄▄ ▄▄▄▄  ▄▄▄   ▄▄▄▄ ▄  ▄ ▄▄▄▄▄ ▄▄▄▄  ▄▄▄▄▄"
    "█   █ █   █ █   █ █ █  █ █   █    █    █   █ █   █ █    █ █  █ █     █   █ █    "
    "▄▄▄▄█ ▄▄▄▄  █▄▄▄█ █  █ █ █   █    █    ▄▄▄▄  █▄▄▄█ █    ▄▄▄   █▄▄▄  ▄▄▄▄  ▄▄▄▄▄"
    "█   █ █   █ █   █ █   ██ █   █    █    █   █ █   █ █    █  █  █     █   █     █"
    "▄▄▄▄█ █   █ █   █ █    █ ▄▄▄▄     █    █   █ █   █ ▄▄▄▄ █   █ ▄▄▄▄▄ █   █ ▄▄▄▄█"
)

# Ultra-simple text for compact displays
compact_logo=(
    "╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════╗"
    "║  ██████╗ ██████╗  █████╗ ███╗   ██╗██████╗ ████████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗██████╗ ███████╗  ║"
    "║  ██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗██╔════╝  ║"
    "║  ██████╔╝██████╔╝███████║██╔██╗ ██║██║  ██║   ██║   ██████╔╝███████║██║     █████╔╝ █████╗  ██████╔╝███████╗  ║"
    "║  ██╔══██╗██╔══██╗██╔══██║██║╚██╗██║██║  ██║   ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗╚════██║  ║"
    "║  ██████╔╝██║  ██║██║  ██║██║ ╚████║██████╔╝   ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║███████║  ║"
    "║  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝  ║"
    "╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
)

# Tagline
tagline="🎯 TRACK • ANALYZE • OPTIMIZE • SCALE 🚀"
subtitle="Terminal-Powered Brand Intelligence"

# Clear screen
clear_screen() {
    printf "\033[2J\033[H"
}

# Display static logo
show_static_logo() {
    clear_screen
    echo
    echo
    
    # Determine terminal width to center logo
    term_width=$(tput cols 2>/dev/null || echo 80)
    
    # Choose logo based on terminal width
    if [ $term_width -ge 110 ]; then
        current_logo=("${compact_logo[@]}")
    elif [ $term_width -ge 80 ]; then
        current_logo=("${simple_logo[@]}")
    else
        # For very small terminals, use just text
        current_logo=("BRANDTRACKERS" "Brand Intelligence Platform")
    fi
    
    # Display logo with gradient colors
    colors=($CYAN $BLUE $MAGENTA $RED $YELLOW $GREEN)
    
    for i in "${!current_logo[@]}"; do
        color_index=$((i % ${#colors[@]}))
        printf "${colors[$color_index]}%s${RESET}\n" "${current_logo[$i]}"
    done
    
    echo
    printf "${BOLD}${YELLOW}%*s${RESET}\n" $(((${#tagline} + term_width) / 2)) "$tagline"
    printf "${CYAN}%*s${RESET}\n" $(((${#subtitle} + term_width) / 2)) "$subtitle"
    echo
}

# Default behavior - show static logo
show_static_logo