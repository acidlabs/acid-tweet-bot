module AcidJobsBot
  class JobOffer < ActiveRecord::Base
    validates_length_of :description, :maximum => 140
    def to_s
      self.description
    end
  
  end
end