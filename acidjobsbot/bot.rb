module AcidJobsBot
  
  class AcidTweetBot 
    
    def initialize
      @@config ||= AcidJobsBot::Config.new
    end
    
    def run
      puts "Hello World Marica"
      puts @@config.consumer_key
    end

  end
  
  bot = AcidTweetBot.new
  
  bot.run

end


