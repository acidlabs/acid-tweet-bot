require 'bundler'
Bundler.require

namespace :db do
  desc "Migrate the database through scripts in db/migrate."
  task :migrate do
    ActiveRecord::Base.establish_connection(YAML.load(File.read(File.join('config','databases.yml')))[ENV['ENV'] ? ENV['ENV'] : 'development'])
    ActiveRecord::Migrator.migrate("db/migrate/")
  end
end