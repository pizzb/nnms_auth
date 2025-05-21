scoreboard players enable @a nnmsauth_switchdialog
scoreboard players enable @a register
scoreboard players enable @a login
scoreboard players enable @a change_password

execute as @a unless entity @s[tag=nnms.auth.registered] unless score @s register matches 0 run function nnms_auth:core/register
execute as @a[tag=nnms.auth.registered] unless score @s login matches 0 run function nnms_auth:core/login

execute as @a if score @s nnmsauth_switchdialog matches 1 run function nnms_auth:core/showlinkedmain
execute as @a if score @s nnmsauth_switchdialog matches 2 run function nnms_auth:core/showlinkedregister
execute as @a if score @s nnmsauth_switchdialog matches 3 run function nnms_auth:core/showlinkedlogin

execute store result storage nnms_auth playernext int 1 run scoreboard players get nnmsauth_playernext nnmsauth_playernext
execute as @a at @s run function nnms_auth:core/saveplayerlocation with storage minecraft:nnms_auth
execute as @e[type=marker,tag=nnms.auth.marker] run function nnms_auth:core/checkifplayerexists with entity @s
execute as @e[type=marker,tag=nnms.auth.marker] run function nnms_auth:core/updateplayerlocation with entity @s

schedule function nnms_auth:core/loop 0.5s