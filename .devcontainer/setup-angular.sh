#!/bin/bash

set -e

echo "🔧 Setting up Angular 5.2 environment..."

# Load NVM
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

nvm use 6.9.0

# Install Angular CLI v1.7.0
npm install -g @angular/cli@1.7.0

# Create project if not exists
if [ ! -d "angular-v52" ]; then
  echo "🚀 Creating Angular v5.2 project..."
  ng new angular-v52 --defaults
else
  echo "✅ Project angular-v52 already exists."
fi
