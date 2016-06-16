#==============================
#
# ネームスペース
# (定数をモジュール内に定義して、名前衝突を回避)
#
#==============================
module MyNamespace
  class Array
    def to_s
      "my_class"
    end
  end
end
p Array.new.to_s #=> []
p MyNamespace::Array.new.to_s #=> "my_class"
