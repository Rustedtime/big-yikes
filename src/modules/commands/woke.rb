module Bot::DiscordCommands
    # Adds an arbitrary amount of "wokes" which count against "Yikes"
    # This command can only be used by the Woke Bloke
    module Woke
      extend Discordrb::Commands::CommandContainer
      command :woke do |event, username, amount = 1|
        x = event.author.roles.find { |role| role.name == 'Yikelord' }
        y = event.author.roles.find { |role| role.name == 'Woke Bloke' }
        if x.nil? && y.nil?
          event.channel.send_temporary_message("You are not worthy. That command can only be used by the esteemed 'Woke Bloke' or the mighty 'Yikelord'.", 15)
          break
        end
        user = Bot::Database::Users.find_or_create(user_id: id)
        user.update(woke: user[:woke] + amount.to_i)
        totalWoke = user[:woke]
        message = "#{id} got #{amount} Woke!\nYou now have #{totalWoke} Woke!"
        max = Bot::Database::Users.max(:woke)
        if max == user[:woke]
          message += "\n#{id} is the most woke"
        end
        event.channel.send_message(message)
      end
    end
  end