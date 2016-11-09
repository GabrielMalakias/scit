require 'net/http'
require 'virtus'
require 'json'
require 'dry-auto_inject'

require 'models'
require 'dependencies'
require 'services'
require 'commands'


module Scit
  def self.call
    SumProductsCollection.new.call
  end
end

