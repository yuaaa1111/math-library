#入力を取得
execute store result score #Cos Input run data get storage math:cos Input

#-π<x<πの範囲に収める
execute if score #Cos Input matches 3141.. run scoreboard players remove #Cos Input 6283

#計算実行
function math:cos/calculate

#戻り値
execute store result storage math:cos Result int 1 run scoreboard players get #Cos Result