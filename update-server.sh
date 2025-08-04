#!/bin/bash

echo "🎬 Updating cli.brandtrackers.xyz with FULL MEGA ANIMATION..."

# SSH into your server and replace the script
cat > /tmp/update_brandtrackers.sh << 'EOF'
#!/bin/bash

echo "🚀 Updating BrandTrackers with FULL animation..."

cd /var/www/cli-brandtrackers

# Replace the simple script with the FULL mega experience
curl -s https://raw.githubusercontent.com/heyjoenash/terminal-logo-animation/main/flow.sh > show

# Make sure it's executable
chmod +x show

echo "✅ Updated! cli.brandtrackers.xyz now has the FULL mega animation!"
echo ""
echo "🎬 Test it: curl -s cli.brandtrackers.xyz | bash"

EOF

echo "📋 Copy and paste this into your DigitalOcean console:"
echo "=============================================="
echo ""
cat /tmp/update_brandtrackers.sh
echo ""
echo "=============================================="