module Bot::DiscordCommands
    # Sends a message that reveals who is most woke in the server and who is most problematic
    module Leaders
      extend Discordrb::Commands::CommandContainer
      command :leaders do |event|
        Bot::Database::Users.each { |user| event.channel.send_message("#{user[:user_id]} has #{user[:yikes]} yikes!")  }
        #event.channel.send_message("'username_woke' is the most woke, and 'username_yikes' is the most problematic.")
      end
    end
  end