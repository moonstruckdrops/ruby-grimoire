#==============================
#
# クラスインスタンス変数
# (クラスの状態をclassオブジェクトのインスタンス変数に格納)
#
#==============================
class C
  @my_class_instance_variable = '何らかの値'
  def self.class_attribute
    @my_class_instance_variable
  end
end

p C.class_attribute #=> "何らかの値"

