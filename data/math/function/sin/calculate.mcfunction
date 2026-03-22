#第1項
scoreboard players operation #Sin Sin_Macl_1-term = #Sin Input

#第2項
scoreboard players operation #Sin Sin_Macl_2-term = #Sin Input
scoreboard players operation #Sin Sin_Macl_2-term *= #Sin Sin_Macl_2-term
scoreboard players operation #Sin Sin_Macl_2-term /= #10000 Int
scoreboard players operation #Sin Sin_Macl_2-term *= #Sin Input
scoreboard players operation #Sin Sin_Macl_2-term /= #3! Int

scoreboard players operation #Sin Sin_Macl_2-term /= #100 Int

#第3項
scoreboard players operation #Sin Sin_Macl_3-term = #Sin Input
scoreboard players operation #Sin Sin_Macl_3-term *= #Sin Sin_Macl_3-term
scoreboard players operation #Sin Sin_Macl_3-term /= #1000 Int
scoreboard players operation #Sin Sin_Macl_3-term *= #Sin Sin_Macl_3-term
scoreboard players operation #Sin Sin_Macl_3-term /= #1000 Int
scoreboard players operation #Sin Sin_Macl_3-term *= #Sin Input
scoreboard players operation #Sin Sin_Macl_3-term /= #5! Int
scoreboard players operation #Sin Sin_Macl_3-term /= #1000 Int

#これまでの項同士を計算
scoreboard players operation #Sin Sin_Macl_1-term -= #Sin Sin_Macl_2-term
scoreboard players operation #Sin Sin_Macl_1-term += #Sin Sin_Macl_3-term

#値を返す
scoreboard players operation #Sin Result = #Sin Sin_Macl_1-term