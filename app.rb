require 'json'
require 'redis'
require 'sinatra'

redis = Redis.new
list_name = 'sinatra_commands'

post '/' do
  redis.lpush(list_name, params.to_json)
  logger.info("Received post with data #{params}")
  'OK'
end
