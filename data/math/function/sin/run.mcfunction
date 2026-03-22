#入力を取得
execute store result score #Sin Input run data get storage math:sin Input

#-π<x<πの範囲に収める
execute if score #Sin Input matches 3141.. run scoreboard players remove #Sin Input 6283

#計算実行
function math:sin/calculate

#戻り値
execute store result storage math:sin Result int 1 run scoreboard players get #Sin Result