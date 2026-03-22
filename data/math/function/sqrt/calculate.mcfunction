#試行回数が10以内かチェック
execute if score #Newt Newt_TryCount matches 10.. run return fail

#分数を計算
scoreboard players operation #Newt Newt_Fraction = #Newt Newt_Substract
scoreboard players operation #Newt Newt_Fraction /= #Newt Newt_default

#X_nを足して、1/2倍
scoreboard players operation #Newt Newt_Fraction += #Newt Newt_default
scoreboard players operation #Newt Newt_Fraction /= #2 Int

#X_n+1に結果を代入
scoreboard players operation #Newt Newt_default = #Newt Newt_Fraction

#試行回数+1
scoreboard players add #Newt Newt_TryCount 1

#再帰
function math:sqrt/calculate