execute unless score @s login = @s nnmsauth_password run execute as @s at @s run playsound minecraft:entity.villager.no master @s ~ ~ ~ 100 1
execute unless score @s login = @s nnmsauth_password run execute as @s at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 100 0.5
execute unless score @s login = @s nnmsauth_password run title @s times 0s 2s 1s
execute unless score @s login = @s nnmsauth_password run title @s title {"text":"wrong password!","color":"red"}
execute unless score @s login = @s nnmsauth_password run title @s subtitle {"text":"try again","color":"red"}
execute if score @s login = @s nnmsauth_password run function nnms_auth:core/loginsuccess
scoreboard players set @s login 0