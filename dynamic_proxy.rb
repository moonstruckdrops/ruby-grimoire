#==============================
#
# 動的プロキシ
# (どのメソッドにも当てはまらないメッセージを他のオブジェクトに転送)
#
#==============================

class MyDynamicProxy

  def initialize(target)
    @target = target
  end

  def method_missing(name, *args, &block)
    "result: #{@target.send(name, *args, &block)}"
  end
end

obj = MyDynamicProxy.new("a string")
p obj.reverse #=> "result: gnirts a"
