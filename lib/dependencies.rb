require 'dependencies/services'

module Scit::Dependencies
  def self.load
    -> { Services.load }
  end
end

Scit::Dependencies.load.call

