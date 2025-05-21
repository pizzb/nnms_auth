execute as @s if score nnmsauth_authtype nnmsauth_authtype matches ..0 run dialog show @s nnms_auth:built_in/main
execute as @s if score nnmsauth_authtype nnmsauth_authtype matches 1.. run dialog show @s nnms_auth:linked/main
execute as @s run scoreboard players set @s nnmsauth_switchdialog 0