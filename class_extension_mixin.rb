#==============================
#
# クラス拡張ミックスイン
# (モジュールのincluderをフックメソッドを使って拡張する)
#
#==============================
module M
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def my_method
      'クラスメソッド'
    end
  end
end

class C
  include M
end

p C.my_method #=>"クラスメソッド"
