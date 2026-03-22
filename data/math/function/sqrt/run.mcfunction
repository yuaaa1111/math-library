#試行回数リセット
scoreboard players reset #Newt Newt_TryCount

#入力を取得
execute store result score #Newt Newt_Input run data get storage math:sqrt Input
#桁調整で1000倍する
scoreboard players operation #Newt Newt_Input *= #1000 Int
scoreboard players operation #Newt Newt_Substract = #Newt Newt_Input
scoreboard players operation #Newt Newt_Substract *= #1000 Int
scoreboard players operation #Newt Newt_default = #Newt Newt_Input
#αの値を(Input/2)にする
scoreboard players operation #Newt Newt_default /= #2 Int

#計算実行
function math:sqrt/calculate

#戻り値
execute store result storage math:sqrt Result int 1 run scoreboard players get #Newt Newt_default