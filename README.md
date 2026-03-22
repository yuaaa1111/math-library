# Math Library
推奨バージョン:1.21.11～  
1.20.2～なら動くとは思いますがまだ未検証です。

# 使い方
data modify storage math:[関数名] Input set value [入力値]
function math:[関数名]
data get storage math:[関数名]

このように既定のstorageに計算したい値を入れ、function実行、出力された値を取得

# 関数名一覧
・2乗
math:squaring
function math:pow/squaring

・3乗
math:cubing
function math:pow/cubing

・4乗
math:4th-power
function math:pow/4th_power

・平方根
math:sqrt
function math:sqrt

・sin
math:sin
function math:sin

・cos
math:cos
function math:cos

・tan
math:tan
function math:tan

# 不具合があった場合
導入しても導入メッセージが表示されない、うまく関数が動かない場合は
/function math:install
と実行してください。

それでも解決しない場合は、一度削除して再度入れてもらうか、
Xまでご連絡ください。
X:https://x.com/yu_oaaa_otoge

# ライセンス
These codes are released under the MIT License, see LICENSE.
