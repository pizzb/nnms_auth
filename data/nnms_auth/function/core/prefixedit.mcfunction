dialog show @s nnms_auth:settings/main
$data merge storage minecraft:nnms_auth {prefix:[$(root)]}
$tellraw @s [$(root),{"text":"Message prefix successfully changed.","color":"white"}]
function nnms_auth:core/messages/backtosettings with storage minecraft:nnms_auth