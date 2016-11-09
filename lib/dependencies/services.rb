module Scit
  module Dependencies
    module Services
      def self.load
        container = build_container
        container.register('parser', -> { Scit::Services::Parser.new })
        container.register('http_client', -> { Scit::Services::Http.new })

        Scit::Dependencies.const_set('AUTOINJECT', Dry::AutoInject(container))
      end


      def self.build_container
        Dry::Container.new
      end
    end
  end
end
