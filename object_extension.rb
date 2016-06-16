#==============================
#
# オブジェクト拡張
# (オブジェクトの特異クラスにモジュールをインクルードして、特異メソッドを定義)
#
#==============================
obj = Object.new

module M
  def my_method
    "特異メソッド"
  end
end

class << obj
  include M
end

p obj.my_method #=> "特異メソッド"
