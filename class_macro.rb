#==============================
#
# クラスマクロ
# (クラス定義内でクラスメソッドを使用する)
#
#==============================
class C; end

class << C
  def my_macro(arg)
    "my_macro (#{arg}) called"
  end
end

class C
  p my_macro :x #=> "my_macro (x) called"
end
