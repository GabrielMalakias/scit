module Scit
  module Services
    class Parser

      def call(content)
        to_hash(content)
      end

      private

      def to_hash(content)
        ::JSON.parse(content)
      end
    end
  end
end

