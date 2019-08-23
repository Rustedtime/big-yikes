module Bot::DiscordCommands
  # Adds an arbitrary amount of yikes to a user's yikes count
  # This is the command that makes the bot
  module Yikes
    extend Discordrb::Commands::CommandContainer
    command :yikes do |_event|
      '+1 yike!'
    end
  end
end