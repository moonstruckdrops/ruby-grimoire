#==============================
#
# カーネルメソッド
# (全てのオブジェクトで使えるようにKernelモジュールにメソッドを定義)
#
#==============================

module Kernel
  def a_method
    "カーネルメソッド"
  end
end

p a_method #=> "カーネルメソッド"
