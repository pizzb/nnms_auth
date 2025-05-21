execute as @s if score nnmsauth_authtype nnmsauth_authtype matches ..0 run dialog show @s nnms_auth:built_in/login
execute as @s if score nnmsauth_authtype nnmsauth_authtype matches 1.. run dialog show @s nnms_auth:linked/login
execute as @s run scoreboard players set @s nnmsauth_switchdialog 0