module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      # 配列の各要素をフリーズ
      array_or_hash.each(&:freeze)
    when Hash
      array_or_hash.each do |key, value|
        key.freeze
        value.freeze
      end
    end
    # 配列自身をフリーズかつメソッド化
    array_or_hash.freeze # <=戻り
  end
end
