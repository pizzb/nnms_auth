execute as @s at @s unless entity @s[tag=nnms.auth.tagged] run scoreboard players add nnmsauth_playernext nnmsauth_playernext 1
execute as @s at @s unless entity @s[tag=nnms.auth.tagged] run function nnms_auth:core/addstoragesession with entity @s
$execute as @s at @s unless entity @s[tag=nnms.auth.tagged] run summon minecraft:marker ~ ~ ~ {CustomName:"nnms.auth.$(playernext)",Tags:["nnms.auth.$(playernext)","nnms.auth.marker"]}
$execute as @s at @s unless entity @s[tag=nnms.auth.tagged] run tag @s add nnms.auth.$(playernext)
execute as @s at @s unless entity @s[tag=nnms.auth.tagged] run tag @s add nnms.auth.tagged