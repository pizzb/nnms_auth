$scoreboard players set nnmsauth_logoutlocation nnmsauth_logoutlocation $(toggle)
dialog show @s nnms_auth:settings/main
execute if score nnmsauth_logoutlocation nnmsauth_logoutlocation matches ..0 run function nnms_auth:core/messages/tllno with storage minecraft:nnms_auth
execute if score nnmsauth_logoutlocation nnmsauth_logoutlocation matches 1.. run function nnms_auth:core/messages/tllyes with storage minecraft:nnms_auth