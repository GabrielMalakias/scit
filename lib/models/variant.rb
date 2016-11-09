module Scit
  module Models
    class Variant
      include Virtus.model

      attribute :id, Integer
      attribute :title, String
      attribute :option1, String
      attribute :option2, String
      attribute :option3, String
      attribute :sku, String
      attribute :requires_shipping, Boolean
      attribute :taxable, Boolean
      attribute :featured_image, String
      attribute :available, Boolean
      attribute :price, Float
      attribute :grams, Integer
      attribute :compare_at_price, String
      attribute :position, Integer
      attribute :product_id, Integer
      attribute :created_at, DateTime
      attribute :updated_at, DateTime
    end
  end
end
