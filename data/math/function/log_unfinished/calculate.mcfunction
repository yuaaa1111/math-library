#uを求める(x-1/x+1)
scoreboard players operation #Log Log_merk_u = #Log Input
scoreboard players remove #Log Log_merk_u 1000

scoreboard players operation #Log Log_merk_fraction = #Log Input
scoreboard players add #Log Log_merk_fraction 1000
scoreboard players operation #Log Log_merk_fraction /= #1000 Int

scoreboard players operation #Log Log_merk_u /= #Log Log_merk_fraction

#第1項
scoreboard players operation #Log Log_merk_1-term = #Log Log_merk_u

#第2項
scoreboard players operation #Log Log_merk_2-term = #Log Log_merk_u

scoreboard players operation #Log Log_merk_2-term *= #Log Log_merk_2-term
scoreboard players operation #Log Log_merk_2-term *= #Log Log_merk_u
scoreboard players operation #Log Log_merk_2-term /= #1000 Int
scoreboard players operation #Log Log_merk_2-term /= #1000 Int

scoreboard players operation #Log Log_merk_2-term /= #3 Int

#第3項
scoreboard players operation #Log Log_merk_3-term = #Log Log_merk_u

scoreboard players operation #Log Log_merk_3-term *= #Log Log_merk_3-term
scoreboard players operation #Log Log_merk_3-term *= #Log Log_merk_3-term
scoreboard players operation #Log Log_merk_3-term /= #1000 Int
scoreboard players operation #Log Log_merk_3-term *= #Log Log_merk_u
scoreboard players operation #Log Log_merk_3-term /= #1000 Int
scoreboard players operation #Log Log_merk_3-term /= #1000 Int

scoreboard players operation #Log Log_merk_3-term /= #5 Int

#これまでの項を計算 & 2倍
scoreboard players operation #Log Log_merk_1-term += #Log Log_merk_2-term
scoreboard players operation #Log Log_merk_1-term += #Log Log_merk_3-term
scoreboard players operation #Log Log_merk_1-term *= #2 Int

#値を返す
scoreboard players operation #Log Result = #Log Log_merk_1-term