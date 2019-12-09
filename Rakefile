task :install do
  sh 'bundle install --path vendor/bundle --binstubs'
end

task :default do
  sh 'bundle exec ruby src/bot.rb'
end

namespace :db do
  desc "Run migrations"
  task :migrate, [:version] do |_t, args|
    require "sequel/core"
    Sequel.extension :migration
    version = args[:version].to_i if args[:version]
    Sequel.sqlite('./yikes.db')
    Sequel.connect('sqlite://yikes.db') do |db|
      Sequel::Migrator.run(db, "src/modules/database/migrations", target: version)
    end
  end
end


