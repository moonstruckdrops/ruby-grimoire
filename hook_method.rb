#==============================
#
# フックメソッド
# (メソッドをオーバーライドしてオブジェクトモデルのイベントを捕まえる)
#
#==============================

$INHERITORS = []

class C
  def self.inherited(subclass)
    $INHERITORS << subclass
  end
end

class D < C
end

class E < C
end

class F < E
end

p $INHERITORS #=> [D, E, F]
