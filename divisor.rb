# # 数字の約数を出す
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

num = gets.to_i
puts devide(num)