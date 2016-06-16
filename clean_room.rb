#==============================
#
# クリーンルーム
# (ブロックを評価する環境としてオブジェクトを使用)
#
#==============================
class CleanRoom
  def a_useful_method(x)
    x * 2
  end
end

# ブロックを評価するためだけに使用する
CleanRoom.new.instance_eval { p a_useful_method(3) } #=> 6
