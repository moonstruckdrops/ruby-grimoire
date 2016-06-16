#==============================
#
# 遅延インスタンス変数
# (最初にアクセスされるまでインスタンス変数を初期化しない)
#
#==============================
class C
  def attribute
    @attribute = @attribute || "何らかの値"
  end
end

obj = C.new
p obj.attribute #=> "何らかの値"
