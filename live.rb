# rbandoAとBのライブの日にちが被ったら交互に行く
# 6
# 12
# 14
# 15
# 26
# 27
# 28
# 5
# 12
# 13
# 14
# 15
# 27

line = readlines
arr_A = Array.new
arr_B = Array.new
N = line[0].to_i
M = line[N + 1].to_i
for i in 1..N do
    arr_A.push(line[i].to_i)
end
for i in N + 2..M + N + 1 do
    arr_B.push(line[i].to_i)
end
arr_C = Array.new
for i in 1..31 do
    if arr_A.include?(i) && arr_B.include?(i)
        arr_C.push(i)
        for n in 0..arr_C.size - 1 do
            if n % 2 == 1 && i == arr_C[n].to_i
                puts "B"
            elsif n % 2 == 0 && i == arr_C[n].to_i
                puts "A"
            else
                next
            end
        end
    elsif arr_A.include?(i)
        puts "A"
    elsif arr_B.include?(i)
        puts "B"
    else
        puts "x"
    end
end