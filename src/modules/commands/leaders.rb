module Bot::DiscordCommands
    # Adds an arbitrary amount of yikes to a user's yike count
    # This command can only be used by the Yikelord
    module Leaders
      extend Discordrb::Commands::CommandContainer
      command :yikes do |event|
        event.channel.send_message("'username_woke' is the most woke, and 'username_yikes' is the most problematic.")
      end
    end
  end