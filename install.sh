#!/bin/bash

# BrandTrackers Terminal Logo - One-liner installer and runner
# Usage: curl -s https://raw.githubusercontent.com/[repo]/install.sh | bash

echo "🚀 Installing BrandTrackers Terminal Logo..."

# Create brandtrackers command in /usr/local/bin
cat > /tmp/brandtrackers << 'EOF'
#!/bin/bash

# BrandTrackers Terminal Logo - One-liner version
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
BOLD='\033[1m'
RESET='\033[0m'

# Animation type from argument (default: static)
ANIMATION=${1:-static}

show_logo() {
    clear
    echo
    echo "${CYAN}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo "${CYAN}║                                                                                ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██████╗ ${GREEN}██████╗  ${YELLOW}█████╗ ${BLUE}███╗   ██╗${MAGENTA}██████╗${RESET}${CYAN}                             ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██╗${BLUE}████╗  ██║${MAGENTA}██╔══██╗${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██████╔╝${YELLOW}███████║${BLUE}██╔██╗ ██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██║${BLUE}██║╚██╗██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██║  ██║${YELLOW}██║  ██║${BLUE}██║ ╚████║${MAGENTA}██████╔╝${RESET}${CYAN}                            ║${RESET}"
    echo "${CYAN}║  ${BOLD}${RED}╚═════╝ ${GREEN}╚═╝  ╚═╝${YELLOW}╚═╝  ╚═╝${BLUE}╚═╝  ╚═══╝${MAGENTA}╚═════╝${RESET}${CYAN}                             ║${RESET}"
    echo "${CYAN}║                                                                                ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}████████╗${RED}██████╗  ${GREEN}█████╗ ${YELLOW}██████╗${BLUE}██╗  ██╗${MAGENTA}███████╗${CYAN}██████╗ ${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}╚══██╔══╝${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔════╝${BLUE}██║ ██╔╝${MAGENTA}██╔════╝${CYAN}██╔══██╗${WHITE}██╔════╝${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██████╔╝${GREEN}███████║${YELLOW}██║     ${BLUE}█████╔╝ ${MAGENTA}█████╗  ${CYAN}██████╔╝${WHITE}███████╗${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██╔══██╗${GREEN}██╔══██║${YELLOW}██║     ${BLUE}██╔═██╗ ${MAGENTA}██╔══╝  ${CYAN}██╔══██╗${WHITE}╚════██║${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}   ██║   ${RED}██║  ██║${GREEN}██║  ██║${YELLOW}╚██████╗${BLUE}██║  ██╗${MAGENTA}███████╗${CYAN}██║  ██║${WHITE}███████║${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║  ${BOLD}${WHITE}   ╚═╝   ${RED}╚═╝  ╚═╝${GREEN}╚═╝  ╚═╝${YELLOW} ╚═════╝${BLUE}╚═╝  ╚═╝${MAGENTA}╚══════╝${CYAN}╚═╝  ╚═╝${WHITE}╚══════╝${RESET}${CYAN}  ║${RESET}"
    echo "${CYAN}║                                                                                ║${RESET}"
    echo "${CYAN}╚════════════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo
    echo "                    ${BOLD}${YELLOW}🎯 TRACK • ANALYZE • OPTIMIZE • SCALE 🚀${RESET}"
    echo "                         ${CYAN}Terminal-Powered Brand Intelligence${RESET}"
    echo
}

typewriter_effect() {
    clear
    printf "\033[?25l" # Hide cursor
    
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
        sleep 0.1
    done
    
    echo
    tagline="                    🎯 TRACK • ANALYZE • OPTIMIZE • SCALE 🚀"
    for (( i=0; i<${#tagline}; i++ )); do
        printf "${BOLD}${YELLOW}%c${RESET}" "${tagline:$i:1}"
        sleep 0.02
    done
    echo
    
    subtitle="                         Terminal-Powered Brand Intelligence"
    for (( i=0; i<${#subtitle}; i++ )); do
        printf "${CYAN}%c${RESET}" "${subtitle:$i:1}"
        sleep 0.01
    done
    echo
    echo
    
    printf "\033[?25h" # Show cursor
}

case "$ANIMATION" in
    "typewriter"|"type")
        typewriter_effect
        ;;
    "static"|*)
        show_logo
        ;;
esac

EOF

# Make executable and move to bin
chmod +x /tmp/brandtrackers

# Try to install globally (requires sudo)
if sudo mv /tmp/brandtrackers /usr/local/bin/brandtrackers 2>/dev/null; then
    echo "✅ Installed globally! Run 'brandtrackers' from anywhere."
    echo "✅ For typewriter effect: 'brandtrackers typewriter'"
else
    # Fallback to local directory
    mv /tmp/brandtrackers ./brandtrackers
    echo "✅ Installed locally! Run './brandtrackers' from this directory."
    echo "✅ For typewriter effect: './brandtrackers typewriter'"
fi

echo
echo "🎉 Installation complete!"
echo
echo "Available commands:"
echo "  brandtrackers           - Static logo"
echo "  brandtrackers typewriter - Animated typing effect"
echo
echo "Share this one-liner to install:"
echo "curl -s https://raw.githubusercontent.com/[your-repo]/brandtrackers-terminal/main/install.sh | bash"