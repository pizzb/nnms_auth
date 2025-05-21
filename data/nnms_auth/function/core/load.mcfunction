scoreboard objectives add nnmsauth_switchdialog trigger
scoreboard objectives add nnmsauth_authtype dummy
scoreboard objectives add login trigger
scoreboard objectives add register trigger
scoreboard objectives add change_password trigger
scoreboard objectives add nnmsauth_password dummy
scoreboard objectives add nnmsauth_playernext dummy
scoreboard objectives add nnmsauth_logoutlocation dummy

scoreboard objectives add nnmsauth_setup dummy
scoreboard objectives add nnmsauth_gamemode dummy

scoreboard objectives add nnmsauth_id dummy
scoreboard objectives add nnmsauth_lastseenx dummy
scoreboard objectives add nnmsauth_lastseenz dummy

scoreboard objectives add nnmsauth_temp1 dummy
scoreboard objectives add nnmsauth_constant_1 dummy
scoreboard players set nnmsauth_constant_1 nnmsauth_constant_1 1

execute unless score nnmsauth_setup nnmsauth_setup matches 1.. run function nnms_auth:core/setup

schedule function nnms_auth:core/loop 5s

gamerule sendCommandFeedback false