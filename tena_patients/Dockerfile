ARG RUBY_VERSION=3.3.0
FROM ruby:$RUBY_VERSION

WORKDIR /app

RUN apt-get update -qq && \
    apt-get install -y build-essential libsqlite3-dev nodejs

# Create a rails user
RUN useradd -m rails

COPY Gemfile Gemfile.lock ./
RUN bundle install && rm -rf ~/.bundle

COPY . .

# Create necessary directories and set permissions
RUN mkdir -p /storage && \
    chown -R rails:rails /app /storage

USER rails

RUN SECRET_KEY_BASE_DUMMY=1 ./bin/rails assets:precompile

EXPOSE 3000

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
