#==============================
#
# 遅延評価
# (Procやlambdaにコード片とコンテキストを保管して後で評価)
#
#==============================
class C
  def store(&block)
    @my_code_capsule = block
  end

  def execute
    @my_code_capsule.call
  end
end

obj = C.new
obj.store { $X = 1 }
$X = 0
obj.execute
p $X #=> 1

