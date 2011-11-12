module AcidJobsBot
  
  class AcidTweetBot 
    
    def initialize
      @@config ||= AcidJobsBot::Config.new
      Twitter.configure do |config|
        config.consumer_key = @@config.consumer_key
        config.consumer_secret = @@config.consumer_secret
        config.oauth_token = @@config.oauth_token
        config.oauth_token_secret = @@config.oauth_token_secret
      end
    end
    
    def tweet_offer(offer)
      Twitter.update(offer)
    end
    
    def run
      puts "Hello World Marica"
      puts @@config.consumer_key
    end

  end
end


