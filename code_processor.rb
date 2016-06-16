#==============================
#
# コードプロセッサ
# (外部ソースにあるコード文字列を処理)
#
#==============================

File.readlines("a_file_containing_lines_of_ruby.txt").each do |line|
  puts "#{line.chomp} ==> #{eval(line)}"
end

# 実行結果
# 1 + 1 ==> 2
# 3 * 2 ==> 6
# Math.log10(100) ==> 2.0
# evalで文字列を評価しているという・・・
