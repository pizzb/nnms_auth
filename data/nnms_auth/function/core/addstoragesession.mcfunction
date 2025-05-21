$data merge storage minecraft:nnms_auth {"sessions":{"$(UUID)":{value:32767}}}

execute as @s store result score @s nnmsauth_temp1 run scoreboard players get nnmsauth_playernext nnmsauth_playernext
execute as @s run scoreboard players operation @s nnmsauth_temp1 -= nnmsauth_constant_1 nnmsauth_constant_1
$execute as @s store result storage minecraft:nnms_auth sessions."$(UUID)".value int 1 run scoreboard players get @s nnmsauth_temp1