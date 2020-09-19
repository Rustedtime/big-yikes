# gemstone

This based off of a template for a modular [Discord](https://discordapp.com/) chat bot using meew0's [discordrb](https://github.com/meew0/discordrb).

This bot was made for some friends and is useful for tracking how problematic certain users are in a discord server.

This is very much a work in progress and I am new to Ruby so advice and suggestions are appreciated.

Commands:
!yikes (username) (amount)
  This command will give a user a certain amount of "yikes" and defaults to 1 if no value is specified. The bot will then anounce to the server the amount of yikes given. Only a member with the role "Yikelord" can use this command.
  e.g. !yikes @xXusername420Xx 69 will give xXusername430Xx 69 yikes

!woke (username) (amount)
  This command will give a user a certain amount of "woke" and defaults to 1 if no value is specified. The bot will then anounce to the server the amount of woke given. Woke points count against a user's net yike score. Only a member with the role "Yikelord" or "Woke Bloke" can use this command.
  e.g. !woke @xXusername420Xx 69 will give xXusername430Xx 69 wokes

!leaders
  TODO

!leaderboard
  TODO

!score
  TODO