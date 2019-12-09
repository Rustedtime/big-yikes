module Bot
    module Database
        # TableName
        class TableName < Sequel::Model
            # Log creation
            def after_create
                Discordrb::LOGGER.info("Created table #{inspect}")
            end
        end
    end
end