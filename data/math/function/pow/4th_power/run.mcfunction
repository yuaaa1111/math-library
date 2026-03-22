#入力を取得
execute store result score #4thpower_temp Temp run data get storage math:4th_power Input

#4乗を計算
scoreboard players operation #4thpower_temp Temp *= #4thpower_temp Temp
scoreboard players operation #4thpower_temp Temp *= #4thpower_temp Temp

#Storageに返す & スコアリセット
execute store result storage math:4th_power Result int 1 run scoreboard players get #4thpower_temp Temp
scoreboard players reset #4thpower_temp Temp