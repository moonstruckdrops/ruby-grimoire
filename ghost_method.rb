#==============================
#
# ゴーストメソッド
# (当てはまるメソッドが無いものに応答する)
#
#==============================
class C
  def method_missing(name, *args, &block)
    name.to_s.reverse
  end
end

obj = C.new
p obj.my_ghost_method #=> "dohtem_tsohg_ym"
