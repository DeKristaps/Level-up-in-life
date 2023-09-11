#!/bin/bash

# Set the Rails application name
APP_NAME="Level-up-in-life"

# Run 'bundle install' in the Rails app directory
echo "Running 'bundle install'..."
docker-compose run --rm web bundle install

# Build Docker containers
echo "Building Docker containers..."
docker-compose build

# Start the containers in the background
echo "Starting Docker containers..."
docker-compose up -d

# Create the database and run migrations
echo "Creating the database and running migrations..."
docker-compose exec web rails db:create db:migrate

echo "Setup complete! Your Rails application is running at http://localhost:3000."
