ARG RUBY_VERSION=3.3.0
FROM ruby:$RUBY_VERSION

# Timezone configuration
RUN echo "Africa/Addis_Ababa" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libvips pkg-config

# Create and set working directory
WORKDIR /opt/app

# Copy gemspec and Gemfile
COPY tena_dcms.gemspec ./
COPY Gemfile Gemfile.lock ./
COPY lib/tena_dcms/version.rb lib/tena_dcms/version.rb

# Build and install the gem
RUN gem build tena_dcms.gemspec && \
    gem install tena_dcms-*.gem && \
    rm tena_dcms-*.gem && \
    rm -rf ~/.bundle/

# Install bundle dependencies
RUN bundle install

# Copy application files
COPY . .

# Create necessary directories and set permissions
RUN mkdir -p /storage && chown -R 1000:1000 /storage

# Run database migrations
RUN bundle exec rails db:migrate

CMD ["bin/rails", "server", "-b", "0.0.0.0"]