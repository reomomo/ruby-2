# 5 1
# 2
# 7 2
# 1 4
# 上記入力で"Low"と"High"を

line = readlines
oya_1 = line[0].split[0].to_i
oya_2 = line[0].split[1].to_i
for i in 2..line[1].to_i + 1 do
    ko_1 = line[i].split[0].to_i
    ko_2 = line[i].split[1].to_i
    if ko_1 < oya_1
        puts "High"
    elsif ko_1 > oya_1
        puts "Low"
    else
        if ko_2 > oya_2
            puts "High"
        else
            puts "Low"
        end
    end
end