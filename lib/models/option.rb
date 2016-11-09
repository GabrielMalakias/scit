module Scit
  module Models
    class Option
      include Virtus.model

      attribute :name, String
      attribute :position, Integer
      attribute :values, Array[String]
    end
  end
end
