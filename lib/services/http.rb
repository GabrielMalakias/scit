module Scit
  module Services
    class Http
      include ::Scit::Dependencies::AUTOINJECT['parser']

      def call(uri)
        parser.call(::Net::HTTP.get(parse_uri(uri)))
      end

      private

      def parse_uri(uri)
        URI(uri)
      end
    end
  end
end
