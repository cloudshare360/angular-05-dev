
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Enable auto-completion
source ~/.bashrc  # or source ~/.zshrc
nvm --version  # Should output a version (e.g., 0.39.7)

nvm install 8.9.0
nvm use 8.9.0

# Check versions
echo "📦 Node version: $(node -v)" &&
echo "📦 NPM version: $(npm -v)"


# Install Angular CLI v1.7.0
echo "⬇️ Installing Angular CLI v1.7.0 globally..."
npm install -g @angular/cli@1.7.0

# Create Angular v5.2 project if it doesn't already exist
if [ ! -d "angular-v52" ]; then
  echo "🚀 Creating Angular v5.2 project..."
  ng new angular-v52
else
  cd angular-v52
  npm install 
  ng serve --open
fi
