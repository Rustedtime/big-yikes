module Bot::DiscordCommands
  # Adds an arbitrary amount of yikes to a user's yike count
  # This command can only be used by the Yikelord
  module Yikes
    extend Discordrb::Commands::CommandContainer
    command :yikes do |event, id, amount = 1|
      x = event.author.roles.find { |role| role.name == 'Yikelord' }
      if x.nil?
        event.channel.send_temporary_message("You are not worthy. I can only be commanded by the all powerful Yikelord.", 15)
        break
      end
      user = Bot::Database::Users
      event.channel.send_message(id + ' got ' + amount + ' yikes!')
    end
  end
end