module Bot::DiscordCommands
    # Adds an arbitrary amount of yikes to a user's yike count
    # This command can only be used by the Yikelord
    module Leaders
      extend Discordrb::Commands::CommandContainer
      command :yikes do |event|
        # TODO
      end
    end
  end