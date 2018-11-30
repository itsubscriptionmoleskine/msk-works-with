FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /msk-works-with
WORKDIR /msk-works-with
COPY Gemfile /msk-works-with/Gemfile
COPY Gemfile.lock /msk-works-with/Gemfile.lock
RUN bundle install
COPY . ./
EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]