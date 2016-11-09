module Scit
  module Models
    class Collection
      include Virtus.model

      attribute :products, Array[Product]

      def sum_products_price
        products.map { |p| p.sum_variants_price }.reduce(:+)
      end
    end
  end
end
