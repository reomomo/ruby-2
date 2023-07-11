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
# def pitagorasu(num)
#   a+b+c=n
#   c=n-(a+b)
#   a** +b** = (n-a-b)(n-a-b)
#   0 =n** -an -bn -an +ab -bn +ab
#   0 = n** -2an -2bn +2ab
#   2an -n** = -2bn +2ab
#   2an - n**/-2(n-a) = b
#   2an / 2a
  
#   2bn-2ab = n** -2an
#   b(2n-2a) = n(n-2a)
#   b = n** -2an / 2(n-a)
# end
def pythagorean_triples (n)
return([]) if n.odd?

ans = Array.new
1.step(n) do |a|
b = n - 0.5 * (n ** 2) / (n - a.to_f)
case
when (a > b)
return(ans)
when (b.to_i == b)
ans.push([a, b.to_i, Math.sqrt(a ** 2 + b ** 2).to_i])
end
end
end

p pythagorean_triples(1000)
