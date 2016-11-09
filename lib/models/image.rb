module Scit
  module Models
    class Image
      include Virtus.model

      attribute :id, Integer
      attribute :created_at, DateTime
      attribute :position, Integer
      attribute :updated_at, DateTime
      attribute :product_id, Integer
      attribute :variant_ids, Array[Integer]
      attribute :src, String
    end
  end
end
