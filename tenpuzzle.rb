# 逆ポーランド記法へ変更する

class String
  RE_0 = Regexp.new('\s+|\=')
  RE_1 = Regexp.new('[\d\.]+|[()*/+\-]')
  RE_D = Regexp.new('\d+')
  RE_K_0 = Regexp.new('\(')
  RE_K_1 = Regexp.new('\)')
  RE_K_2 = Regexp.new('[()]')
  PRI = {"*" => 3, "/" => 3, "+" => 2, "-" => 2, "(" => 1, ")" => 1}

  def to_rpn
    stack = []
    rpn = []
    # .gseubは置換、.scanは探索
    self.gsub(RE_0, "").scan(RE_1).each do |t|
      case t
      when RE_D
        rpn << t
      when RE_K_0
        stack << t
      when RE_K_1
        while stack[-1] != "("
          s = stack.pop
          rpn << s if s !~ RE_K_2
        end
        stack.pop
      else
        while stack != [] && PRI[stack[-1]] >= PRI[t]
          rpn << stack.pop
        end
        stack << t
      end
    end
    until stack == []
      s = stack.pop
      rpn << s if s !~ RE_K_2
    end
    return rpn.join(" ")
  end
end

if __FILE__ == $0
  f = $stdin.gets.chomp
  exit if f == ""
  puts f.to_rpn
end
