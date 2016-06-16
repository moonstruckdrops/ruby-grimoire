#==============================
#
# ブランクスレート
# (オブジェクトのメソッドを削除してゴーストメソッドにする)
#
#==============================
class C
  def method_missing(name, *args)
    "ゴーストメソッド"
  end
end

obj = C.new
p obj.to_s #=> "#<C:0x007fb673830d70>"

class C
  instance_methods.each do |m|
    undef_method m unless m.to_s =~ /method_missing|respond_to?|^__/
  end
end

p obj.to_s #=> "ゴーストメソッド"
