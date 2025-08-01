#!/bin/bash

echo "🚀 Setting up BrandTrackers CLI on DigitalOcean..."

# Create directory
mkdir -p /var/www/cli-brandtrackers
cd /var/www/cli-brandtrackers

# Create the main script that will be served
cat > show << 'EOF'
#!/bin/bash

# BrandTrackers Ultimate Experience - Self-hosted version
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
        esac
    fi
}

echo -e "${BOLD}${CYAN}🚀 BrandTrackers Terminal Experience${RESET}"
echo -e "${DIM}Hosted on cli.brandtrackers.xyz${RESET}"
echo

hide_cursor
clear_screen

# Quick matrix intro
for i in {1..4}; do
    clear_screen
    term_width=$(tput cols 2>/dev/null || echo 80)
    term_height=$(tput lines 2>/dev/null || echo 24)
    
    for row in $(seq 1 $((term_height - 10))); do
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
    sleep 0.1
    play_sound "pop"
done

# Rainbow transition
colors=($RED $YELLOW $GREEN $CYAN $BLUE $MAGENTA)
for cycle in {1..3}; do
    clear_screen
    echo
    
    for i in "${!logo_lines[@]}"; do
        color_index=$(((cycle + i) % ${#colors[@]}))
        color="${colors[$color_index]}"
        echo -e "${color}${logo_lines[$i]}${RESET}"
    done
    
    echo
    echo -e "                           ${BLINK}${BRIGHT_YELLOW}www.brandtrackers.xyz${RESET}"
    
    sleep 0.3
    play_sound "ping"
done

# Final clean reveal
clear_screen
echo
for line in "${logo_lines[@]}"; do
    echo -e "$line"
    sleep 0.05
done

echo
echo -e "                           ${BOLD}${YELLOW}www.brandtrackers.xyz${RESET}"

# Finale sparkles
for sparkle in {1..10}; do
    printf "\033[%d;%dH${BRIGHT_YELLOW}✨${RESET}" $((RANDOM % 10 + 5)) $((RANDOM % 70 + 5))
    sleep 0.1
    play_sound "ping"
done

echo
echo
echo "                    ${BLINK}${BRIGHT_MAGENTA}🎉 Welcome to BrandTrackers! 🎉${RESET}"
echo

show_cursor
play_sound "glass"
EOF

# Make it executable
chmod +x show

# Create nginx site config
cat > /etc/nginx/sites-available/cli-brandtrackers << 'EOF'
server {
    listen 80;
    server_name cli.brandtrackers.xyz;
    
    root /var/www/cli-brandtrackers;
    
    location / {
        # Serve the show script for any request
        try_files /show =404;
        
        # Set correct content type for shell scripts
        add_header Content-Type "text/plain; charset=utf-8";
        add_header Cache-Control "no-cache, no-store, must-revalidate";
        add_header Pragma "no-cache";
        add_header Expires "0";
        
        # CORS headers for terminal access
        add_header Access-Control-Allow-Origin "*";
        add_header Access-Control-Allow-Methods "GET, OPTIONS";
        add_header Access-Control-Allow-Headers "Content-Type";
    }
    
    # Handle OPTIONS requests
    location ~* \.(OPTIONS)$ {
        add_header Access-Control-Allow-Origin "*";
        add_header Access-Control-Allow-Methods "GET, OPTIONS";
        add_header Access-Control-Allow-Headers "Content-Type";
        return 204;
    }
}
EOF

# Enable the site
ln -sf /etc/nginx/sites-available/cli-brandtrackers /etc/nginx/sites-enabled/

# Test nginx config
nginx -t

if [ $? -eq 0 ]; then
    # Reload nginx
    systemctl reload nginx
    echo "✅ Nginx configured and reloaded successfully!"
else
    echo "❌ Nginx configuration error!"
    exit 1
fi

# Check if it's working
echo ""
echo "🎯 Testing the setup..."
sleep 2

# Test locally
if curl -s localhost -H "Host: cli.brandtrackers.xyz" | head -1 | grep -q "#!/bin/bash"; then
    echo "✅ Local test successful!"
else
    echo "❌ Local test failed"
fi

echo ""
echo "🚀 Setup complete!"
echo ""
echo "Next steps:"
echo "1. Add DNS record in Namecheap:"
echo "   Type: A"
echo "   Host: cli"  
echo "   Value: 104.248.112.247"
echo ""
echo "2. Wait 5-10 minutes for DNS propagation"
echo ""
echo "3. Test with: curl -s cli.brandtrackers.xyz | bash"
echo ""
echo "🎉 Your command will be: curl -s cli.brandtrackers.xyz | bash"