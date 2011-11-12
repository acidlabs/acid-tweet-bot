module AcidJobsBot
  class JobOffer < ActiveRecord::Base
  
    def to_s
      self.description
    end
  
  end
end