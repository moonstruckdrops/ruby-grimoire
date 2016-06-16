#==============================
#
# 共有スコープ
# (フラットスコープを複数コンテキストで変数を共有する版)
#
#==============================
lambda {
  shared = 10

  self.class.class_eval do
    define_method :counter do
      shared
    end

    define_method :down do
      shared -= 1
    end
  end
}.call

p counter #=> 10
3.times { down }
p counter #=> 7
