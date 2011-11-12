require File.join(File.dirname(__FILE__),"../db/migrate/create_job_offers")

module AcidJobsBot
  
  class Bot 
    
    def initialize
      @@config ||= AcidJobsBot::Config.new
    end
    
    def run
      puts "Running AcidTweetBot"
      begin
         offer = AcidJobsBot::JobOffer.find(:first)
         tweet_offer(offer)
        
         # create the table
         CreateJobOffers.up
         puts "No JobOffers in the database"
        AcidJobsBot::JobOffer.create({:description => 'test status'})
      end 
    end

  end
end


