# # フィボナッチ（Fibonacci）数列
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
  puts count(num)
end