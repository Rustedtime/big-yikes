module Bot::DiscordCommands
    # Sends a message that reveals who is most woke in the server and who is most problematic
    module Leaders
      extend Discordrb::Commands::CommandContainer
      command :leaders do |event|
        puts(Bot::Database::Users.max(:woke))
        wokest = Bot::Database::Users.where(Sequel[:woke] === Bot::Database::Users.max(:woke))
        woke_id = wokest[:user_id]
        problematic = Bot::Database::Users.where(Sequel[:yikes] === Bot::Database::Users.max(:yikes))
        problem_id = problematic[:user_id]
        event.channel.send_message("#{woke_id} is the most woke, and #{problem_id} is the most problematic.")
      end
    end
  end