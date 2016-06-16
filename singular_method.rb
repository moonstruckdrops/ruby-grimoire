#==============================
#
# 特異メソッド
# (特定のオブジェクトにメソッドを定義)
#
#==============================
obj = "abc"

class << obj
  def my_singleteon_method
    "x"
  end
end

p obj.my_singleteon_method #=> "x"
