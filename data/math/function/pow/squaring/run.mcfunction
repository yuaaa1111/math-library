#入力を取得
execute store result score #squaring_temp Temp run data get storage math:squaring Input

#2乗を計算
scoreboard players operation #squaring_temp Temp *= #squaring_temp Temp

#Storageに返す & スコアリセット
execute store result storage math:squaring Result int 1 run scoreboard players get #squaring_temp Temp
scoreboard players reset #squaring_temp Temp