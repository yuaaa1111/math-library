#入力を取得
execute store result score #Tan Input run data get storage math:tan Input

#-π<x<πの範囲に収める
execute if score #Tan Input matches 3141.. run scoreboard players remove #Tan Input 6283

#計算実行
function math:tan/calculate

#戻り値
execute store result storage math:tan Result int 1 run scoreboard players get #Tan Result