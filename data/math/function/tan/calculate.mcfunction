#--Sin、Cosの計算--
data modify storage math:sin Input set from storage math:tan Input
data modify storage math:cos Input set from storage math:tan Input

function math:sin/run
function math:cos/run

#結果をスコアに代入
execute store result score #Tan Tan_SinAmount run data get storage math:sin Result
execute store result score #Tan Tan_CosAmount run data get storage math:cos Result

#桁調整のため、Sinを1000倍してから、Cosの値で割る
scoreboard players operation #Tan Tan_SinAmount *= #1000 Int
scoreboard players operation #Tan Tan_SinAmount /= #Tan Tan_CosAmount

#結果をスコアに代入
scoreboard players operation #Tan Result = #Tan Tan_SinAmount