FROM ruby:2.4.1

COPY . /root/sinatra-post-to-redis
WORKDIR /root/sinatra-post-to-redis
RUN bundle install --without development
EXPOSE 80
CMD bash -c "RACK_ENV=production ruby app.rb -p 80 -o 0.0.0.0"