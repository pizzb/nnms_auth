$scoreboard players set nnmsauth_authtype nnmsauth_authtype $(type)
dialog show @s nnms_auth:settings/main
execute if score nnmsauth_authtype nnmsauth_authtype matches ..0 run function nnms_auth:core/messages/authtypebuiltin with storage minecraft:nnms_auth
execute if score nnmsauth_authtype nnmsauth_authtype matches 1.. run function nnms_auth:core/messages/authtypemod with storage minecraft:nnms_auth