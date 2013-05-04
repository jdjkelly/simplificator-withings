module Withings
  SCALE = 1
  BLOOD_PRESSURE_MONITOR = 4

  def self.configure consumer_key, consumer_secret
    @consumer_key = consumer_key
    @consumer_secret = consumer_secret
  end

  def self.consumer_secret
    raise 'Please specify consumer_secret' unless @consumer_secret
    @consumer_secret
  end

  def self.consumer_key
    raise 'Please specify consumer_key' unless @consumer_key
    @consumer_key
  end
end

# Copied over from ActiveSupport
unless Hash.new.respond_to?(:stringify_keys)
  class Hash
    def stringify_keys
      inject({}) do |options, (key, value)|
        options[key.to_s] = value
        options
      end
    end
  end
end
