module Bot::DiscordCommands
    # Adds an arbitrary amount of "wokes" which count against "Yikes"
    # This command can only be used by the Woke Bloke
    module Woke
      extend Discordrb::Commands::CommandContainer
      command :yikes do |event, username, amount = 1|
        x = event.author.roles.find { |role| role.name == 'Yikelord' }
        y = event.author.roles.find { |role| role.name == 'Woke Bloke' }
        if x.nil? && y.nil?
          event.channel.send_temporary_message("You are not worthy. That command can only be used by the esteemed 'Woke Bloke' or the mighty 'Yikelord'.", 15)
          break
        end
        event.channel.send_message(username + ' got ' + amount + 'woke!')
      end
    end
  end