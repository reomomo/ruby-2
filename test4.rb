# 1行目にチャージ額とバス乗車回数を入力
# ポイント10％還元
# ポイントが貯まっていればポイント払い
# 2000 5
# 300
# 500
# 300
# 100
# 100

line = readlines
N = line[0].split[0].to_i
M = line[0].split[1].to_i
point = 0
for i in 1..M do
    f = line[i].to_i
    if f > point
        N -= f
        point += f / 10
    else
        point -= f
    end
    puts N.to_s + " " + point.to_s
end