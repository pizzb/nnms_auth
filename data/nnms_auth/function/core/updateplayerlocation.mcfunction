$execute unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run tp @a[tag=$(CustomName),limit=1] @e[type=marker,name=$(CustomName),limit=1]
$execute unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run effect clear @a[tag=$(CustomName),limit=1] minecraft:blindness
$execute as @e[type=marker,name=$(CustomName),limit=1] at @s unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run playsound minecraft:block.note_block.pling master @a[tag=$(CustomName),limit=1] ~ ~ ~ 100 2
$execute as @e[type=marker,name=$(CustomName),limit=1] at @s unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run playsound minecraft:entity.player.levelup master @a[tag=$(CustomName),limit=1] ~ ~ ~ 100 2
$execute as @e[type=marker,name=$(CustomName),limit=1] at @s unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run title @a[tag=$(CustomName),limit=1] clear
$execute as @e[type=marker,name=$(CustomName),limit=1] at @s unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run title @a[tag=$(CustomName),limit=1] reset

$execute if score nnmsauth_gamemode nnmsauth_gamemode matches 0 unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run gamemode creative @a[tag=$(CustomName),limit=1]
$execute if score nnmsauth_gamemode nnmsauth_gamemode matches 1 unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run gamemode survival @a[tag=$(CustomName),limit=1]
$execute if score nnmsauth_gamemode nnmsauth_gamemode matches 2 unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run gamemode adventure @a[tag=$(CustomName),limit=1]
$execute if score nnmsauth_gamemode nnmsauth_gamemode matches 3 unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run gamemode spectator @a[tag=$(CustomName),limit=1]

$execute unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run advancement revoke @a[tag=$(CustomName)] only nnms_auth:locked

$execute unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run forceload remove ~ ~
$execute unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.in,limit=1] run tag @e[type=marker,name=$(CustomName),limit=1] add nnms.auth.in

$execute if entity @e[type=marker,name=$(CustomName),limit=1] unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run tp @e[type=marker,name=$(CustomName),limit=1] @a[tag=$(CustomName),limit=1]
$execute at @s if entity @e[type=marker,name=$(CustomName),limit=1,tag=nnms.auth.out] if score nnmsauth_logoutlocation nnmsauth_logoutlocation matches 1.. run particle minecraft:end_rod ~ ~1 ~ 0.2 0.4 0.2 0 5 normal


$execute as @e[type=marker,name=$(CustomName),limit=1] at @s if entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run forceload add ~ ~ ~ ~


$execute as @e[type=marker,name=$(CustomName),limit=1] at @s unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run forceload add ~ ~ ~ ~
$execute as @e[type=marker,name=$(CustomName),limit=1] at @s unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run forceload remove ~16 ~16 ~-16 ~16
$execute as @e[type=marker,name=$(CustomName),limit=1] at @s unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run forceload remove ~16 ~16 ~16 ~-16
$execute as @e[type=marker,name=$(CustomName),limit=1] at @s unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run forceload remove ~-16 ~-16 ~-16 ~16
$execute as @e[type=marker,name=$(CustomName),limit=1] at @s unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run forceload remove ~-16 ~-16 ~16 ~-16
$execute as @e[type=marker,name=$(CustomName),limit=1] at @s unless entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run advancement grant @a[tag=$(CustomName)] only nnms_auth:logged


$execute if entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run advancement grant @a[tag=$(CustomName)] only nnms_auth:locked
$execute if entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run advancement revoke @a[tag=$(CustomName)] only nnms_auth:logged

$execute if entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] in nnms_auth:auth run tp @a[tag=$(CustomName),limit=1] 0 0 0 0 0
$execute if entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run effect give @a[tag=$(CustomName),limit=1] minecraft:resistance 5 255 true
$execute if entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run effect give @a[tag=$(CustomName),limit=1] minecraft:weakness 5 255 true
$execute if entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run effect give @a[tag=$(CustomName),limit=1] minecraft:blindness 5 255 true
$execute if entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run gamemode spectator @a[tag=$(CustomName),limit=1]

$execute as @a[tag=$(CustomName),limit=1] unless entity @s[tag=nnms.auth.registered] run function nnms_auth:core/messages/requestregister with storage minecraft:nnms_auth

$execute as @a[tag=$(CustomName),limit=1,tag=nnms.auth.registered] if entity @a[tag=$(CustomName),limit=1,tag=nnms.auth.registered] if entity @e[type=marker,name=$(CustomName),tag=nnms.auth.out,limit=1] run function nnms_auth:core/messages/requestlogin with storage minecraft:nnms_auth