# 1/1を0日目とし365日の中で、入力された数字が入った日にちをカウントする
input_line = gets.to_i
count = 0
(1..364).each do |num|
    if num == input_line
        count += 1
    elsif num % 100 == input_line
        count += 1
    elsif num % 10 == input_line
        count += 1
    elsif (num / 10).to_i == input_line
        count += 1
    elsif (num / 100).to_i == input_line
        count += 1
    elsif ((num % 100) / 10).to_i == input_line
        count += 1
    end

end
puts count