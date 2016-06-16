#==============================
#
# ミミックメソッド
# (他の言語要素に偽装したメソッド)
#
#==============================
def BaseClass(name)
  name == "string" ? String : Object
end

class C < BaseClass "string" # クラスに見えるキーワード
  attr_accessor :an_attribute # キーワードに見えるメソッド
end

obj = C.new
obj.an_attribute = 1 #属性に見えるメソッド
p obj.an_attribute
