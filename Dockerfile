FROM ruby:2.4.1

RUN apt-get update && \
    apt-get -y install redis-server
COPY . /root/sinatra-post-to-redis
WORKDIR /root/sinatra-post-to-redis
RUN bundle install --without development
EXPOSE 80
CMD service redis-server start && \
    ruby app.rb -p 80 -o 0.0.0.0