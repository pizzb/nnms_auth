$execute unless entity @a[tag=$(CustomName),limit=1] run forceload add ~ ~ ~ ~
$execute unless entity @a[tag=$(CustomName),limit=1] run tag @e[type=marker,name=$(CustomName),limit=1] add nnms.auth.out

$execute if entity @a[tag=$(CustomName),limit=1] unless entity @a[tag=nnms.auth.registered,limit=1] run forceload add ~ ~ ~ ~
$execute if entity @a[tag=$(CustomName),limit=1] unless entity @a[tag=nnms.auth.registered,limit=1] run tag @e[type=marker,name=$(CustomName),limit=1] add nnms.auth.out
tag @e[type=marker,tag=nnms.auth.out] remove nnms.auth.in