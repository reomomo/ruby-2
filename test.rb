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

# 15枚の絵札から5枚引く
# ehuda = Array[]
# while
#   for i in 1..15 do
#     ehuda.push(i)
#     if arr.size > 5
#       break
#     end
#   end
#   p ehuda
# end


i = 1
  while i < 16 do
    ehuda = Array[]
    ehuda.push(rand(1..15))
    ehuda.push(rand(1..15))
    ehuda.push(rand(1..15))
    ehuda.push(rand(1..15))
    ehuda.push(rand(1..15))
    i += 1
    # if ehuda.uniq.length != ehuda.length
    #   break
    # end
    p ehuda.sort
  end
