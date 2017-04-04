# config/initializers/sidekiq.rb
sentinel_config = YAML.load_file(Rails.root + 'config/redis-sentinel.yml')
sentinels = sentinel_config['sentinels'].map{ |s| "#{s}:#{sentinel_config['port']}" }
Sidekiq.configure_client do |config|
  config.redis = {
    master_name: 'redis',
    sentinels: sentinels,
    failover_reconnect_timeout: 20,      # roughly 3-5 seconds longer than the sentinel failover-timeout
  }
end
Sidekiq.configure_server do |config|
  config.redis = {
    master_name: 'redis',
    sentinels: sentinels,
    failover_reconnect_timeout: 20,      # roughly 3-5 seconds longer than the sentinel failover-timeout
  }
end
