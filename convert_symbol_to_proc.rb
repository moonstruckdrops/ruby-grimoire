#==============================
#
# SymbolのProc変換
# (シンボルを一つのメソッドを呼び出すブロックに変換)
#
#==============================
p [1,2,3,4].map(&:even?) #=> [false, true, false, true]
