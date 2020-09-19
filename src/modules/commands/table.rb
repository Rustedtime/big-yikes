module Bot::DiscordCommands
  # Displays the current table in the console
  # Only usable by the bot owner for debuging purposes
  module Table
    extend Discordrb::Commands::CommandContainer
    command :table do |event, id, amount = 1|
      break unless event.user.id == Bot::CONFIG.owner
      users = Bot::Database::Users
      users.each{|row| puts("#{row[:user_id]} | #{row[:yikes]} | #{row[:woke]}\n")}
    end
  end
end