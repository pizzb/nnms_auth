$scoreboard players set nnmsauth_gamemode nnmsauth_gamemode $(mode)
execute if score nnmsauth_gamemode nnmsauth_gamemode matches ..0 run function nnms_auth:core/messages/gm0 with storage minecraft:nnms_auth
execute if score nnmsauth_gamemode nnmsauth_gamemode matches 1 run function nnms_auth:core/messages/gm1 with storage minecraft:nnms_auth
execute if score nnmsauth_gamemode nnmsauth_gamemode matches 2 run function nnms_auth:core/messages/gm2 with storage minecraft:nnms_auth
execute if score nnmsauth_gamemode nnmsauth_gamemode matches 3.. run function nnms_auth:core/messages/gm3 with storage minecraft:nnms_auth