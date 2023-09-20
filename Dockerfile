# Use an official Ruby runtime as the base image
FROM ruby:3.0.0

# Set environment variables for Rails
ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    libpq-dev   # Install PostgreSQL development libraries

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install gems
RUN gem install bundler && bundle install --jobs 20 --retry 5

# Install node.js for JavaScript assets
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs

# Expose a port (e.g., 3000) if your Rails app uses a different one
EXPOSE 3000

# Start the Rails application with development options
CMD ["rails", "server", "-b", "0.0.0.0", "--pid", "/tmp/server.pid"]