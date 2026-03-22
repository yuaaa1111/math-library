#------マクローリン展開を使うやり方------
#第1項
scoreboard players operation #Cos Cos_Macl_1-term = #1000 Int


#第2項
scoreboard players operation #Cos Cos_Macl_2-term = #Cos Input
scoreboard players operation #Cos Cos_Macl_2-term *= #Cos Cos_Macl_2-term
scoreboard players operation #Cos Cos_Macl_2-term /= #10 Int
scoreboard players operation #Cos Cos_Macl_2-term /= #2! Int

scoreboard players operation #Cos Cos_Macl_2-term /= #100 Int

#第3項
scoreboard players operation #Cos Cos_Macl_3-term = #Cos Input
scoreboard players operation #Cos Cos_Macl_3-term *= #Cos Cos_Macl_3-term
scoreboard players operation #Cos Cos_Macl_3-term /= #100 Int
scoreboard players operation #Cos Cos_Macl_3-term *= #Cos Cos_Macl_3-term
scoreboard players operation #Cos Cos_Macl_3-term /= #100 Int
scoreboard players operation #Cos Cos_Macl_3-term /= #4! Int
scoreboard players operation #Cos Cos_Macl_3-term /= #1000 Int

#第4項
scoreboard players operation #Cos Cos_Macl_4-term = #Cos Input
scoreboard players operation #Cos Cos_Macl_4-term *= #Cos Cos_Macl_4-term
scoreboard players operation #Cos Cos_Macl_4-term /= #100 Int
scoreboard players operation #Cos Cos_Macl_4-term *= #Cos Cos_Macl_4-term
scoreboard players operation #Cos Cos_Macl_4-term /= #100 Int
scoreboard players operation #Cos Cos_Macl_4-term *= #Cos Cos_Macl_4-term
scoreboard players operation #Cos Cos_Macl_4-term /= #100 Int
scoreboard players operation #Cos Cos_Macl_4-term /= #6! Int
scoreboard players operation #Cos Cos_Macl_4-term /= #1000 Int

#これまでの項同士を計算
scoreboard players operation #Cos Cos_Macl_1-term -= #Cos Cos_Macl_2-term
scoreboard players operation #Cos Cos_Macl_1-term += #Cos Cos_Macl_3-term
scoreboard players operation #Cos Cos_Macl_1-term -= #Cos Cos_Macl_4-term

#値を返す
scoreboard players operation #Cos Result = #Cos Cos_Macl_1-term


#------Sinの関数を使うやり方------
#execute store result score #Cos Cos_rad run data get storage math:cos Input
#scoreboard players add #Cos Cos_rad 1570
#execute store result storage math:sin Input int 1 run scoreboard players get #Cos Cos_rad
#function math:sin/run
#execute store result score #Cos Result run data get storage math:sin Result