#==============================
#
# 動的メソッド
# (実行時にメソッドを決める)
#
#==============================
class C; end

C.class_eval do
  define_method :my_method do |arg|
    "引数が#{arg}である動的メソッド"
  end
end

obj = C.new
p obj.my_method(100) #=> "引数が100である動的メソッド"
