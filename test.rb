# 15枚の絵札から5枚引く組み合わせ
ehuda = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
ehuda.combination(5) do |a,b,c,d,e|
  puts "#{a}#{b}#{c}#{d}#{e}"
end

# 7以上7777777以下の7の倍数を全て書き出したとき、数字「7」は何回現れるか。
count = 0
n = 1
for n in 1..1111111 do
  num = 7 * n
  million = (num / 1000000) % 10
  hundred_thousand = (num / 100000) % 10
  one_thousand = (num / 10000) % 10
  thousand = (num / 1000) % 10
  hundred = (num / 100) % 10
  ten = (num / 10) % 10
  one = num % 10
  if million == 7
    count += 1
  end
  if hundred_thousand == 7
    count += 1
  end
  if one_thousand == 7
    count += 1
  end
  if thousand == 7
    count += 1
  end
  if hundred == 7
    count += 1
  end
  if ten == 7
    count += 1
  end
  if one == 7
    count += 1
  end
end

puts count
