#スコア追加
scoreboard objectives add Int dummy
scoreboard players set #-1 Int -1
scoreboard players set #1 Int 1
scoreboard players set #2 Int 2
scoreboard players set #3 Int 3
scoreboard players set #4 Int 4
scoreboard players set #5 Int 5
scoreboard players set #6 Int 6
scoreboard players set #8 Int 8
scoreboard players set #10 Int 10
scoreboard players set #12 Int 12
scoreboard players set #16 Int 16
scoreboard players set #32 Int 32
scoreboard players set #64 Int 64
scoreboard players set #100 Int 100
scoreboard players set #128 Int 128
scoreboard players set #256 Int 256
scoreboard players set #512 Int 512
scoreboard players set #1000 Int 1000
scoreboard players set #1024 Int 1024
scoreboard players set #4343 Int 4343
scoreboard players set #10000 Int 10000

scoreboard players set #2! Int 2
scoreboard players set #3! Int 6
scoreboard players set #4! Int 24
scoreboard players set #5! Int 120
scoreboard players set #6! Int 720

scoreboard objectives add Input dummy
scoreboard objectives add Result dummy

scoreboard objectives add Temp dummy
scoreboard objectives add Temp2 dummy

scoreboard objectives add Sin_Macl_1-term dummy
scoreboard objectives add Sin_Macl_2-term dummy
scoreboard objectives add Sin_Macl_3-term dummy

scoreboard objectives add Cos_Macl_1-term dummy
scoreboard objectives add Cos_Macl_2-term dummy
scoreboard objectives add Cos_Macl_3-term dummy
scoreboard objectives add Cos_Macl_4-term dummy
scoreboard objectives add Cos_rad dummy

scoreboard objectives add Tan_SinAmount dummy
scoreboard objectives add Tan_CosAmount dummy

scoreboard objectives add Newt_default dummy
scoreboard objectives add Newt_Input dummy
scoreboard objectives add Newt_TryCount deathCount
scoreboard objectives add Newt_Substract dummy
scoreboard objectives add Newt_Fraction dummy

scoreboard objectives add Log_merk_u dummy
scoreboard objectives add Log_merk_fraction dummy
scoreboard objectives add Log_merk_1-term dummy
scoreboard objectives add Log_merk_2-term dummy
scoreboard objectives add Log_merk_3-term dummy

#Storage初期化
data modify storage math:squaring Input set value 0
data modify storage math:squaring Result set value 0

data modify storage math:cubing Input set value 0
data modify storage math:cubing Result set value 0

data modify storage math:4th_power Input set value 0
data modify storage math:4th_power Result set value 0

data modify storage math:sqrt Input set value 0
data modify storage math:sqrt Result set value 0

data modify storage math:sin Input set value 0
data modify storage math:sin Result set value 0

data modify storage math:cos Input set value 0
data modify storage math:cos Result set value 0

data modify storage math:tan Input set value 0
data modify storage math:tan Result set value 0

data modify storage math:log Input set value 0
data modify storage math:log Result set value 0

data modify storage math:log_10 Input set value 0
data modify storage math:log_10 Result set value 0

kill @e[type=marker,tag=MathUtilities_InstallCheck]

tellraw @a [{text:"-----","color":"white"},{"text":"Math Utilities",color:"green"},{"text":"(by yuaaa)",color:"yellow"},{"text":"-----","color":"white"}]
tellraw @a {"text":"                                  "}
tellraw @a [{"text":"導入","color":"gold"},{text:"が","color":"white"},{"text":"成功","color":"aqua"},{"text":"しました！","color":"white"}]
tellraw @a {"text":"                                  "}
summon marker 0 0 0 {Tags:["MathUtilities_InstallCheck"]}