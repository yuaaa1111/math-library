#入力を取得
execute store result score #Log Input run data get storage math:log Input

#桁調整のために1000倍
scoreboard players operation #Log Input *= #1000 Int

#計算実行
function math:log_unfinished/calculate

#戻り値
execute store result storage math:log Result int 1 run scoreboard players get #Log Result