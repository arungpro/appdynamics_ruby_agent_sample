FROM ruby:2.3.8-slim-stretch

RUN apt-get update \
    && apt-get install -qq -y build-essential nodejs libpq-dev --fix-missing --no-install-recommends

RUN apt-get install -y git
RUN apt-get install -y libsqlite3-dev
WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
