line = readlines
n = line[0].to_i
count = 0
for i in 1..n do
    if line[i].split[0] == "n" || line[i].split[1] == "n"
        count += 1
    end
end
puts count
for i in 1..n do
    if line[i].split[0] == "n" || line[i].split[1] == "n"
        puts i
    end
end