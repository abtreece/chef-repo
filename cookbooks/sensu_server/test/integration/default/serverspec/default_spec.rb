require 'spec_helper'

describe 'sensu-server::default' do
  describe 'RabbitMQ' do
    it 'is installed' do
      expect(package('rabbitmq-server')).to be_installed
    end

    it 'port is listening' do
      expect(port(5672)).to be_listening
    end
  end

  describe 'Redis' do
    it 'server command exists' do
      expect(file('/usr/local/bin/redis-server')).to exist
    end

    it 'port is listening' do
      expect(port(6379)).to be_listening
    end

    it 'process should be enabled' do
      expect(service('redis')).to be_running
    end
  end

  describe 'Sensu Server' do
    it 'process should be enabled' do
      expect(service('sensu-server')).to be_running
    end
  end

  describe 'Sensu API' do
    it 'process should be enabled' do
      expect(service('sensu-api')).to be_running
    end

    it 'port is listening' do
      expect(port(4567)).to be_listening
    end
  end

  describe 'Sensu-Uchiwa' do
    it 'process should be enabled' do
      expect(service('uchiwa')).to be_running
    end

    it 'port is listening' do
      expect(port(3000)).to be_listening
    end
  end
end
