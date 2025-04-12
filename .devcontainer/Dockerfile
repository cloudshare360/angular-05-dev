FROM node:8.9.0

# Create and switch to a non-root user
RUN useradd -ms /bin/bash node

# Install Angular CLI 1.7.0 globally
RUN npm install -g @angular/cli@1.7.0

# Set the working directory in the container
WORKDIR /workspaces/angular-dev-052/angular-v52

# Use non-root user
USER node
