require 'sequel'
require 'sqlite3'

module Bot
    # SQL Database
    module Database
        # Load migrations
        Sequel.extension :migration

        # Connect to database
        Sequel.sqlite('./users.db')
        DB = Sequel.connect('sqlite://users.db')

        # Run migrations
        Sequel::Migrator.run(DB, 'src/modules/database/migrations')

        # Load models
        Dir['src/modules/database/*.rb'].each { |mod| load mod }
    end
end
