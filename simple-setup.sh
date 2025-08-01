#!/bin/bash

echo "🚀 BrandTrackers CLI Setup - Simple Version"
echo "=========================================="

# Update packages and install nginx
echo "📦 Installing nginx..."
apt update -y
apt install -y nginx curl

# Create directory
echo "📁 Creating directories..."
mkdir -p /var/www/cli-brandtrackers
cd /var/www/cli-brandtrackers

# Create the main script
echo "📝 Creating BrandTrackers script..."
cat > show << 'EOF'
#!/bin/bash
# BrandTrackers - Simple but effective version

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
RESET='\033[0m'

clear
echo
echo -e "${CYAN}╔════════════════════════════════════════════════════════════════════════════════╗${RESET}"
echo -e "${CYAN}║                                                                                ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${RED}██████╗ ${GREEN}██████╗  ${YELLOW}█████╗ ${BLUE}███╗   ██╗${MAGENTA}██████╗${RESET}${CYAN}                             ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██╗${BLUE}████╗  ██║${MAGENTA}██╔══██╗${RESET}${CYAN}                            ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██████╔╝${YELLOW}███████║${BLUE}██╔██╗ ██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔══██║${BLUE}██║╚██╗██║${MAGENTA}██║  ██║${RESET}${CYAN}                            ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${RED}██████╔╝${GREEN}██║  ██║${YELLOW}██║  ██║${BLUE}██║ ╚████║${MAGENTA}██████╔╝${RESET}${CYAN}                            ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${RED}╚═════╝ ${GREEN}╚═╝  ╚═╝${YELLOW}╚═╝  ╚═╝${BLUE}╚═╝  ╚═══╝${MAGENTA}╚═════╝${RESET}${CYAN}                             ║${RESET}"
echo -e "${CYAN}║                                                                                ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${CYAN}████████╗${RED}██████╗  ${GREEN}█████╗ ${YELLOW}██████╗${BLUE}██╗  ██╗${MAGENTA}███████╗${GREEN}██████╗ ${CYAN}███████╗${RESET}${CYAN}  ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${CYAN}╚══██╔══╝${RED}██╔══██╗${GREEN}██╔══██╗${YELLOW}██╔════╝${BLUE}██║ ██╔╝${MAGENTA}██╔════╝${GREEN}██╔══██╗${CYAN}██╔════╝${RESET}${CYAN}  ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${CYAN}   ██║   ${RED}██████╔╝${GREEN}███████║${YELLOW}██║     ${BLUE}█████╔╝ ${MAGENTA}█████╗  ${GREEN}██████╔╝${CYAN}███████╗${RESET}${CYAN}  ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${CYAN}   ██║   ${RED}██╔══██╗${GREEN}██╔══██║${YELLOW}██║     ${BLUE}██╔═██╗ ${MAGENTA}██╔══╝  ${GREEN}██╔══██╗${CYAN}╚════██║${RESET}${CYAN}  ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${CYAN}   ██║   ${RED}██║  ██║${GREEN}██║  ██║${YELLOW}╚██████╗${BLUE}██║  ██╗${MAGENTA}███████╗${GREEN}██║  ██║${CYAN}███████║${RESET}${CYAN}  ║${RESET}"
echo -e "${CYAN}║  ${BOLD}${CYAN}   ╚═╝   ${RED}╚═╝  ╚═╝${GREEN}╚═╝  ╚═╝${YELLOW} ╚═════╝${BLUE}╚═╝  ╚═╝${MAGENTA}╚══════╝${GREEN}╚═╝  ╚═╝${CYAN}╚══════╝${RESET}${CYAN}  ║${RESET}"
echo -e "${CYAN}║                                                                                ║${RESET}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════════════════════════╝${RESET}"
echo
echo -e "                           ${BOLD}${YELLOW}🎯 www.brandtrackers.xyz 🚀${RESET}"
echo
echo -e "                    ${BOLD}${GREEN}🎉 Terminal-Powered Brand Intelligence! 🎉${RESET}"
echo

# Quick animation
for i in {1..3}; do
    echo -e "                               ${BOLD}${CYAN}✨ Loading... ✨${RESET}"
    sleep 0.5
    printf "\033[1A\033[K"
done

echo -e "                               ${BOLD}${GREEN}✅ Ready! ✅${RESET}"
echo
EOF

# Make it executable
chmod +x show

# Create simple nginx config
echo "⚙️  Configuring nginx..."
cat > /etc/nginx/sites-available/cli-brandtrackers << 'EOF'
server {
    listen 80;
    server_name cli.brandtrackers.xyz;
    
    location / {
        root /var/www/cli-brandtrackers;
        try_files /show =404;
        add_header Content-Type "text/plain; charset=utf-8";
        add_header Access-Control-Allow-Origin "*";
    }
}
EOF

# Enable the site
ln -sf /etc/nginx/sites-available/cli-brandtrackers /etc/nginx/sites-enabled/

# Remove default nginx site to avoid conflicts
rm -f /etc/nginx/sites-enabled/default

# Test and reload nginx
echo "🔧 Testing nginx configuration..."
nginx -t

if [ $? -eq 0 ]; then
    systemctl enable nginx
    systemctl restart nginx
    echo "✅ Nginx configured and started successfully!"
else
    echo "❌ Nginx configuration error!"
    exit 1
fi

# Test the setup
echo ""
echo "🧪 Testing the setup..."
sleep 2

if curl -s localhost -H "Host: cli.brandtrackers.xyz" | head -1 | grep -q "#!/bin/bash"; then
    echo "✅ Setup test successful!"
else
    echo "⚠️  Setup might need DNS propagation time"
fi

echo ""
echo "🎉 Setup Complete!"
echo "==================="
echo ""
echo "✅ Nginx installed and configured"
echo "✅ BrandTrackers script ready"  
echo "✅ DNS should be: cli.brandtrackers.xyz → 104.248.112.247"
echo ""
echo "🎯 Your command: ${BOLD}curl -s cli.brandtrackers.xyz | bash${RESET}"
echo ""
echo "⏰ Wait 5-10 minutes for DNS propagation, then test!"
echo ""