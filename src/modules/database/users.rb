module Bot
    module Database
        # Users
        class Users < Sequel::Model
            # Log creation
            def after_create
                Discordrb::LOGGER.info("Created table #{inspect}")
            end
        end
    end
end