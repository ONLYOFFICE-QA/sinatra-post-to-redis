# frozen_string_literal: true

require 'spec_helper'
describe 'SinatraPostToRedis' do
  let(:redis) { Redis.new }

  it 'allows send post notification' do
    post '/', notification: 'hello rspec'

    expect(last_response).to have_http_status :ok
  end

  it 'allows post with two params' do
    post '/', notification: 'hello rspec2', chat: 'test_chat'
    expect(last_response).to have_http_status :ok
  end

  it 'first_data is correct' do
    first_data = JSON.parse(redis.rpop('sinatra_commands'))
    expect(first_data).to eq({ 'notification' => 'hello rspec' })
  end

  it 'second data chart is correct' do
    second_data = JSON.parse(redis.rpop('sinatra_commands'))
    expect(second_data).to eq({ 'notification' => 'hello rspec2',
                                'chat' => 'test_chat' })
  end
end
