# # ピタゴラスの定理
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

p pythagorean_triples(1000)

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
p arr
puts arr.join(",")
    ehuda = [1,2,3,4,5]