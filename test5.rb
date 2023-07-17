# 台風の暴風域にいたら"yes"
# (x,y)が対象者の座標
# 中心は同じで半径は異なる2つの円があり2つの円の間が暴風域
# 2つの円の中心の座標を (xc, yc)、半径をそれぞれ r_1, r_2 (r_1 < r_2) 
# xc yc r_1 r_2
# n（対象者の数
# x_1 y_1
# x_2 y_2
# ...
# x_n y_n

# 例
# 0 0 1 2
# 3
# 0 0
# 1 1
# 4 2

line = readlines
xc = line[0].split[0].to_i
yc = line[0].split[1].to_i
r_1 = line[0].split[2].to_i
r_2 = line[0].split[3].to_i
n = line[1].to_i
for i in 2..n+1 do
    x = line[i].split[0].to_i
    y = line[i].split[1].to_i
    xy = (x - xc) ** 2 + (y - yc) ** 2
    if xy >= r_1 ** 2 && xy <= r_2 ** 2
        puts "yes"
    else
        puts "no"
    end
end 