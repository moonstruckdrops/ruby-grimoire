#==============================
#
# フラットスコープ
# (クロージャーを使用して2つのスコープで変数を共有する)
#
#==============================
class C
  def an_attribute
    @attr
  end
end

obj = C.new
a_variable = 100

obj.instance_eval do
  @attr = a_variable
end

p obj.an_attribute # 100
