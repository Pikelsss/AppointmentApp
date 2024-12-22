source "https://rubygems.org"

ruby "3.3.6"

# Use the latest Rails version compatible with your app
gem "rails", "~> 7.1.5"

# The original asset pipeline for Rails
gem "sprockets-rails"

# Use StringIO for in-memory I/O
gem "stringio", "3.1.2"

# Use PostgreSQL as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps
gem "importmap-rails"

# Use Tailwind CSS for styling
gem "tailwindcss-rails"

# Use Hotwire for modern web features (includes Turbo and Stimulus)
gem "hotwire-rails"

# Authentication solution for Rails
gem "devise"

# Build JSON APIs with ease
gem "jbuilder"

# Use bcrypt for secure passwords
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  # Debugging tool for Rails applications
  gem "debug", platforms: %i[mri windows]
end

group :development do
  # Use console on exceptions pages
  gem "web-console"

  # Add speed badges (optional)
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps (optional)
  # gem "spring"
end

group :test do
  # Use system testing
  gem "capybara"
  gem "selenium-webdriver"
end

# Use RBS for type checking
gem "rbs", "~> 3.7"
gem 'rails-ujs'
