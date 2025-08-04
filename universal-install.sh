#!/bin/bash

# BrandTrackers Universal Installer
# Works on ANY system with bash - no curl/wget required!

echo "🎬 BrandTrackers Universal Installer"
echo "🔍 Detecting available download method..."

# The install script content to run
INSTALL_URL="https://cli.brandtrackers.xyz/install"
JOE_SCRIPT_URL="https://cli.brandtrackers.xyz"

# Function to download and execute with curl
try_curl() {
    if command -v curl >/dev/null 2>&1; then
        echo "✅ Using curl"
        curl -s "$JOE_SCRIPT_URL" | bash
        return 0
    fi
    return 1
}

# Function to download and execute with wget
try_wget() {
    if command -v wget >/dev/null 2>&1; then
        echo "✅ Using wget"
        wget -qO- "$JOE_SCRIPT_URL" | bash
        return 0
    fi
    return 1
}

# Function to download and execute with python3
try_python3() {
    if command -v python3 >/dev/null 2>&1; then
        echo "✅ Using python3"
        python3 -c "
import urllib.request
import subprocess
import sys

try:
    with urllib.request.urlopen('$JOE_SCRIPT_URL') as response:
        script_content = response.read().decode('utf-8')
        subprocess.run(['bash'], input=script_content, text=True, check=True)
except Exception as e:
    print(f'Error: {e}')
    sys.exit(1)
"
        return 0
    fi
    return 1
}

# Function to download and execute with python2 (legacy)
try_python2() {
    if command -v python >/dev/null 2>&1; then
        echo "✅ Using python2 (legacy)"
        python -c "
import urllib2
import subprocess
import sys

try:
    response = urllib2.urlopen('$JOE_SCRIPT_URL')
    script_content = response.read()
    proc = subprocess.Popen(['bash'], stdin=subprocess.PIPE)
    proc.communicate(input=script_content)
    if proc.returncode != 0:
        sys.exit(1)
except Exception as e:
    print('Error: %s' % str(e))
    sys.exit(1)
"
        return 0
    fi
    return 1
}

# Function to show manual installation instructions
show_manual_install() {
    echo "❌ No automatic download method available!"
    echo ""
    echo "🔧 Manual Installation Options:"
    echo ""
    echo "1️⃣  Install a download tool first:"
    echo "   • macOS: curl is pre-installed"
    echo "   • Ubuntu/Debian: apt install curl"  
    echo "   • CentOS/RHEL: yum install curl"
    echo "   • Alpine: apk add curl"
    echo ""
    echo "2️⃣  Or use git directly:"
    echo "   git clone https://github.com/yourusername/terminal-logo-animation"
    echo "   cd terminal-logo-animation"
    echo "   chmod +x joe-v2.sh"
    echo "   ./joe-v2.sh"
    echo ""
    echo "3️⃣  Or create the script manually:"
    echo "   Visit: https://raw.githubusercontent.com/yourusername/terminal-logo-animation/main/joe-v2.sh"
    echo "   Copy the content to a file, make executable, and run!"
    echo ""
    exit 1
}

# Try methods in order of preference and reliability
echo ""
if try_curl; then
    echo "🎉 Success! BrandTrackers logo executed via curl"
elif try_wget; then
    echo "🎉 Success! BrandTrackers logo executed via wget"
elif try_python3; then
    echo "🎉 Success! BrandTrackers logo executed via python3"
elif try_python2; then
    echo "🎉 Success! BrandTrackers logo executed via python2"
else
    show_manual_install
fi

echo ""
echo "📋 Share these installation methods:"
echo ""
echo "🥇 Primary (most universal):"
echo "   curl -s cli.brandtrackers.xyz | bash"
echo ""
echo "🥈 Alternative methods:"
echo "   wget -qO- cli.brandtrackers.xyz | bash"
echo "   python3 -c \"import urllib.request; exec(urllib.request.urlopen('https://cli.brandtrackers.xyz').read().decode())\""
echo ""
echo "🏆 Universal installer (works on any system):"
echo "   curl -s cli.brandtrackers.xyz/universal | bash"