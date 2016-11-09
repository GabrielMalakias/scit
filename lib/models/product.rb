module Scit
  module Models
    class Product
      include Virtus.model

      attribute :id, Integer
      attribute :title, String
      attribute :handle, String
      attribute :body_html, String
      attribute :published_at, DateTime
      attribute :created_at, DateTime
      attribute :updated_at, DateTime
      attribute :vendor, String
      attribute :product_type, String

      attribute :tags, Array[String]
      attribute :variants, Array[Variant]
      attribute :images, Array[Image]
      attribute :options, Array[Option]

      def sum_variants_price
        variants.map { |v| v.price }.reduce(:+)
      end
    end
  end
end
