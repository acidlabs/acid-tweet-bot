require "bundler"
Bundler.require

require File.join(File.dirname(__FILE__),"acidjobsbot/config")
require File.join(File.dirname(__FILE__),"acidjobsbot/bot")

acid_bot = AcidJobsBot::AcidTweetBot.new
acid_bot.run