require 'yaml'

module AcidJobsBot
  
  class Config
    
    attr_accessor :config_filepath, :consumer_key, :consumer_secret, :oauth_token, :oauth_token_secret
    
    def initialize
      @config_filepath = File.join(File.dirname(__FILE__), "..", "config", "auth.yml")
      load
    end
    
    def load
      config = YAML.load_file(@config_filepath)
      @consumer_key = config['consumer_key']
      @consumer_secret = config['consumer_secret']
      @oauth_token = config['oauth_token']
      @oauth_token_secret = config['oauth_token_secret']
    end
    
  end
  
end