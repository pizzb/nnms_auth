execute store result score @s nnmsauth_password run scoreboard players get @s register
function nnms_auth:core/messages/register with storage minecraft:nnms_auth
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" has logged in the server","color":"yellow"}]
tag @s add nnms.auth.registered
execute as @s at @s run function nnms_auth:core/authorize with entity @s
scoreboard players set @s register 0