FROM ruby:2.4.9-alpine3.9

# Install the various dependencies we need inside the environment
RUN apk --update add --no-cache bash gcc gmp-dev make libc-dev g++ postgresql-dev 

# Clean up our APK Cache to minimize image size
RUN rm -rf /var/cache/apk/*

# Set the working directory to /app
WORKDIR /app

# Copy the host system current directory (Should be the repository root) to the container /app/ directory
COPY . /app/

# Install our Ruby stuff!
# SET environmental bash execution variables
# -u: exit on undefined variables
# -e: exit on failed commands
# -x: Display current bash command execution
RUN set -uex
RUN gem install bundler -v 1.16.1 --no-document
RUN bundle install

# Copy the contents of our current host directory (the repo) into the docker container
COPY . .

ENTRYPOINT ["/app/"]
CMD ["pakyow server"]