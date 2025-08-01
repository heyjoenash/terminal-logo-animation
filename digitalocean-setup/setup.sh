#!/bin/bash
# DigitalOcean setup script for brandtrackers.xyz

echo "🚀 Setting up BrandTrackers on DigitalOcean..."

# Create directory structure
sudo mkdir -p /var/www/brandtrackers.xyz/public_html
cd /var/www/brandtrackers.xyz/public_html

# Create the show script
sudo tee show << 'EOF'
#!/bin/bash
# BrandTrackers Ultimate Experience
curl -s https://raw.githubusercontent.com/heyjoenash/terminal-logo-animation/main/flow.sh | bash
EOF

# Create flow script  
sudo tee flow << 'EOF'
#!/bin/bash
# BrandTrackers Flow Experience
curl -s https://raw.githubusercontent.com/heyjoenash/terminal-logo-animation/main/flow.sh | bash
EOF

# Create bt script
sudo tee bt << 'EOF'
#!/bin/bash
# BrandTrackers Simple Logo
curl -s https://raw.githubusercontent.com/heyjoenash/terminal-logo-animation/main/bt | bash
EOF

# Make executable
sudo chmod +x show flow bt

# Set up nginx config
sudo tee /etc/nginx/sites-available/brandtrackers.xyz << 'EOF'
server {
    listen 80;
    server_name brandtrackers.xyz www.brandtrackers.xyz;
    
    root /var/www/brandtrackers.xyz/public_html;
    index index.html;
    
    location / {
        try_files $uri $uri/ =404;
    }
    
    # Serve shell scripts with correct content type
    location ~* \.(sh|bash)$ {
        add_header Content-Type text/plain;
    }
    
    # Handle our terminal commands
    location ~ ^/(show|flow|bt)$ {
        add_header Content-Type text/plain;
        try_files $uri =404;
    }
}
EOF

# Enable site
sudo ln -sf /etc/nginx/sites-available/brandtrackers.xyz /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl reload nginx

echo "✅ Setup complete!"
echo ""
echo "🎯 Your commands are now live:"
echo "curl -s brandtrackers.xyz/show | bash"
echo "curl -s brandtrackers.xyz/flow | bash" 
echo "curl -s brandtrackers.xyz/bt | bash"