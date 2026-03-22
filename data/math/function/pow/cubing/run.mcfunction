#入力を取得
execute store result score #cubing_temp Temp run data get storage math:cubing Input
scoreboard players operation #Input_num Temp = #cubing_temp Temp

#3乗を計算
scoreboard players operation #cubing_temp Temp *= #cubing_temp Temp
scoreboard players operation #cubing_temp Temp *= #Input_num Temp

#Storageに返す & スコアリセット
execute store result storage math:cubing Result int 1 run scoreboard players get #cubing_temp Temp
scoreboard players reset #cubing_temp Temp
scoreboard players reset #Input_num Temp