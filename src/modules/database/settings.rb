module Bot
    module Database
        # Settings
        class Settings < Sequel::Model
            def after_create
                Discordrb::LOGGER.info("Created settings #{inspect}")
            end
        end
    end
end