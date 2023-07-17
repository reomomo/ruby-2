# フィボナッチ（Fibonacci）数列
def count(num)
  if num == 0
    return 0
  elsif num == 1
    return 1
  else
    count(num - 2) + count(num - 1)
  end
end

(1..10).each do |num|
  # puts count(num)
end

# トリボナッチ数列
def count(num)
  if num == 0 || num == 1
    return 0
  elsif num == 2
    return 1
  else
    count(num - 3) + count(num - 2) + count(num - 1)
  end
end

(1..20).each do |num|
  # puts count(num)
end

# テトラナッチ数列
def count(num)
  if num == 0 || num == 1 || num == 2
    return 0
  elsif num == 3
    return 1
  else
    count(num - 4) + count(num - 3) + count(num - 2) + count(num - 1)
  end
end

(1..20).each do |num|
  # puts count(num)
end

# 数字の約数を出す
def devide(num)
  result = []
  i = 1
  while i <= num do
    count = num % i
    if count == 0
      result << i
    end
    i += 1
  end
  return result
end

# num = gets.to_i
# puts devide(num)

# ピタゴラスの定理
def pythagorean_triples (n)
  return([]) if n.odd?

  ans = Array.new
  1.step(n) do |a|
    b = n * (a - 0.5 * n) / (a - n)
    case
    when (a > b)
      return(ans)
    when (b.to_i == b)
      ans.push([a, b.to_i, Math.sqrt(a ** 2 + b ** 2).to_i])
    end
  end
end

# p pythagorean_triples(1000)

# ピタゴラス（独自）
ans = Array[]
n = 1000
(1..n).each do |a|
  b = n * (a - 0.5 * n) / (a - n)
  if a > b
    break
  elsif a < b && b == b.to_i
    ans.push(a, b.to_i, Math.sqrt(a ** 2 + b ** 2).to_i)
    # p ans
  end
end

arr = Array.new
arr.push(4, 5)
# p arr
# puts arr.join(",")
    ehuda = [1,2,3,4,5]

# 15枚の絵札から5枚引く組み合わせ
ehuda = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
ehuda.combination(5) do |a,b,c,d,e|
  # puts "#{a}#{b}#{c}#{d}#{e}"
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

# puts count
