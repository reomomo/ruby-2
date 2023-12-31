# 逆ポーランド記法の計算

class String
  # 正規表現オブジェクトを動的に生成
  RE_0 = Regexp.new('[=\s]+$')
  RE_1 = Regexp.new('\s+')
  RE_D = Regexp.new('\d+')
  RE_PL = Regexp.new('\+')
  RE_MN = Regexp.new('\-')
  RE_PR = Regexp.new('\*')
  RE_DV = Regexp.new('\/')

  def rpn
    stack = []
    # RE_0を""に置き換えて、RE_1で分割
    self.sub(RE_0, "").split(RE_1).each do |t|
      # tがRE_Dにマッチしているか
      if t =~ RE_D
        stack.push(t.to_f)
        next
      end
      # stackの末尾の要素を取り除いてそれを返す
      r, l = stack.pop, stack.pop
      case t
      when RE_PL; stack.push(l.to_f + r.to_f)
      when RE_MN; stack.push(l.to_f - r.to_f)
      when RE_PR; stack.push(l.to_f * r.to_f)
      when RE_DV; stack.push(l.to_f / r.to_f)
      end
    end
    return stack.pop
  end
end

if __FILE__ == $0
  # .chompは 改行コードを取り除いた文字列を生成して返す
  f = $stdin.gets.chomp
  exit if f == ""
  puts f.rpn
end