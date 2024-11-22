# frozen_string_literal: true

require 'json'
require 'redis'
require 'sinatra'
require 'sinatra/config_file'

config_file 'config.yml'

set :host_authorization, { permitted_hosts: [] }

redis = Redis.new(host: settings.redis_host)
list_name = 'sinatra_commands'

post '/' do
  redis.lpush(list_name, params.to_json)
  logger.info("Received post with data #{params}")
  'OK'
end
