# Set the path to the Startup folder
$startupPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"

# Change to the Startup folder
Set-Location -Path $startupPath

# Initialize Git repo
git init

# Add GitHub repo as remote
git remote add origin https://github.com/Oliver-Tautz/personal_ahk.git

# Optional: Ensure your SSH key is loaded (for GitHub authentication)
# If using Windows OpenSSH agent (requires setup), uncomment:
# Start-Service ssh-agent
# ssh-add "$HOME\.ssh\id_rsa"

# Fetch and reset to the remote branch (force sync)
git fetch origin
git reset --hard origin/main
