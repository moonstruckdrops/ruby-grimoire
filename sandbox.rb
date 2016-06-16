#==============================
#
# サンドボックス
# (信頼出来ないコードを安全な環境で実行)
#
#==============================
def sandbox(&code)
  proc {
    $SAFE = 2
    yield
  }.call
end

begin
  sandbox { File.delete 'a_file'}
rescue Exception => ex
  p ex
end
