redis_config = YAML.load_file('../../shared/config/redis.yml')
Resque.redis = redis_config[Rails.env]
