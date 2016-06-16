#==============================
#
# モンキーパッチ
# (既存クラスの振る舞いを変更)
#
#==============================
p "abc".reverse #=> "cba"

class String
  def reverse
    "monkey patch"
  end
end

p "abc".reverse #=> "monkey patch"
