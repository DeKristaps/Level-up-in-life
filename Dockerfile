# Use an official Ruby runtime as the base image
FROM ruby:3.0.0

# Set environment variables
ENV RAILS_ENV=production \
    RAILS_LOG_TO_STDOUT=1

# Install system dependencies
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install Ruby gems
RUN bundle install --without development test

# Copy the rest of your application code to the container
COPY . .

# Precompile assets
RUN bundle exec rails assets:precompile

# Expose port 3000 (the default Rails server port)
EXPOSE 3000

# Start the Rails application
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]