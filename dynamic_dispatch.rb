#==============================
#
# ダイナミックディスパッチ
# (実行時に呼び出すメソッドを決める)
#
#==============================
method_to_call = :reverse
obj = "abc"
p obj.send(method_to_call) #=> "cba"
p obj.__send__(method_to_call) # 上の同じでsendのエイリアス
