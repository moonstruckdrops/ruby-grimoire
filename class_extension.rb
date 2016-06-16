#==============================
#
# クラス拡張
# (クラスの特異クラスにモジュールをインクルードして、クラスメソッドを定義)
#
#==============================
class C; end

module M
  def my_method
    'クラスメソッド'
  end
end

class << C
  include M
end

p C.my_method #=> "クラスメソッド"

