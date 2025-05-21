scoreboard players set @s login 0
function nnms_auth:core/messages/login with storage minecraft:nnms_auth
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" has logged in the server","color":"yellow"}]
execute as @s at @s run function nnms_auth:core/authorize with entity @s