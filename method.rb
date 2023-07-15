# 組み合わせの算出
ehuda = [1,2]
# 重複して利用もするのでゾロ目もあり
ehuda.repeated_combination(3) do |a,b|
  # puts "#{a}#{b}"
end

ehuda.repeated_combination(3).each do |i|
  # p i
end

# 重複利用無し（ゾロ目無し）
ehuda.combination(2) do |a,b|
  # puts "#{a}#{b}"
end
# 順列での食い合わせ（ゾロ目無し）
ehuda.permutation(2) do |a,b|
  # puts "#{a}#{b}"
end


# 複数の配列を組み合わせて、その組み合わせを配列にして返す
color = ["赤", "青", "緑"]
length = ["長い", "普通", "短い"]
height = ["上", "中", "下"]
color.product(length, height).each do |rod|
  # puts rod.join(", ")
end
