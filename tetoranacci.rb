# # テトラナッチ数列
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
  puts count(num)
end