FROM ruby:2.6.0

WORKDIR /work

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# Get project
RUN git clone https://github.com/docker-hy/rails-example-project.git

WORKDIR rails-example-project

# Set ENV to allow reading precompiled assets files
ENV RAILS_SERVE_STATIC_FILES=true

RUN bundle install

# Remove encoded crendentials which we don't have access to since we lack the master key
RUN rm ./config/credentials.yml.enc

# Create new credentials by attempting to edit them. Will fail since no terminal attached but credentials will be created.
RUN EDITOR=vim rails credentials:edit

RUN rails db:migrate RAILS_ENV=production

# Install yarn for rake assets
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

RUN rake assets:precompile

CMD RAILS_LOG_TO_STDOUT=true rails s -e production

EXPOSE 3000
