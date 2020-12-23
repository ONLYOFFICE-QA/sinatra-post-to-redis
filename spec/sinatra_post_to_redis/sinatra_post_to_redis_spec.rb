# frozen_string_literal: true

require 'spec_helper'
describe 'SinatraPostToRedis' do
  it 'allows send post notification' do
    post '/', notification: 'hello rspec'

    expect(last_response.status).to eq 200
  end

  it 'allows post with two params' do
    post '/', notification: 'hello rspec2', chat: 'test_chat'
    expect(last_response.status).to eq 200
  end

  it 'successful get data from redis' do
    redis = Redis.new
    queue_data = JSON.parse(redis.rpop('sinatra_commands'))
    expect(queue_data['notification']).to eq('hello rspec')
    expect(queue_data['chat']).to be_nil

    queue_data = JSON.parse(redis.rpop('sinatra_commands'))
    expect(queue_data['notification']).to eq('hello rspec2')
    expect(queue_data['chat']).to eq('test_chat')
  end
end
