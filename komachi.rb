# 小町算
# 配列にする
input = "123456789".chars
result = []

# 組み合わせの算出
["", "+", "-", "*", "/"].repeated_permutation(input.size - 1).each do |ops|
  # inputとopsで配列を作る
  str = input.zip(ops).flatten.compact.join
  result.push(str)
  result.push("-" + str)
end

# evalで評価して100になるものを選出
result.select{|i| eval(i) == 100}.each_with_index do |s, i|
  puts "#{i+1} : #{s} = 100"
end
