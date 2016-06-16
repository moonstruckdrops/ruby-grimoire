#==============================
#
# アラウンドエイリアス
# (再定義したメソッドから以前のメソッドをエイリアスで呼び出す)
#
#==============================
class String
  alias :old_reverse :reverse
  def reverse
    "x#{old_reverse}x"
  end
end

p "abc".reverse #=> "xcbax"
