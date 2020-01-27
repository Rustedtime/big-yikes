module Bot::DiscordCommands
    # Sends a message that mentions the user that used this command and tells them their scores
    module Score
      extend Discordrb::Commands::CommandContainer
      command :Score do |event|
        id = event.author
        id.gsub('!', '')
        user = Bot::Database::Users.find_or_create(user_id: id)
        message = "#{id}, you have #{user[:yikes]} and #{user[:woke]} woke."
        if user[:yikes].to_i === 0 && user[:woke].to_i === 0
          message += "\nYou are boring."
        end
        if user[:yikes].to_i === user[:woke]
          message += "\nYou are perfectly balanced, as all things should be."
        end
        if user[:yikes].to_i === 69 || user[:woke].to_i === 69
          message += "\nNice!"
        end
        if user[:yikes].to_i > user[:woke].to_i * 2
          message += "\nYou are problematic."
        end
        if user[:yikes].to_i * 2 < user[:woke].to_i
          message += "\nYou are woke."
        end
      end
    end
  end