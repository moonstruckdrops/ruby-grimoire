#==============================
#
# パターンディスパッチ
# (名前を元にして呼び出しメソッドを選択する)
#
#==============================
$x = 0

class C
  def my_first_method
    $x += 1
  end

  def my_second_method
    $x += 2
  end
end

obj = C.new
obj.methods.each do |m|
  obj.send(m) if m.to_s =~ /^my_/
end

p $x #=> 3
