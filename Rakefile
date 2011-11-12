require 'bundler'
Bundler.require
require File.join(File.dirname(__FILE__),"acidjobsbot")

namespace :db do
  desc "Migrate the database through scripts in db/migrate."
  task :migrate do
    
    input   = File.read(File.join('config','database.yml'))
    output  = Erubis::Eruby.new(input).result
    ActiveRecord::Base.establish_connection(YAML.load(output)[ENV['ENV'] ? ENV['ENV'] : 'development'])
    ActiveRecord::Migrator.migrate("db/migrate/")
  end
end

desc "Tweet a random status fom database."
task :cron do
  acid_bot = AcidJobsBot::Bot.new
  acid_bot.run
end


