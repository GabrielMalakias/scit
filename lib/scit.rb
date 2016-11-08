require 'net/http'
require 'virtus'

module Scit
  def self.call
    puts 'Everything ok'
    puts download
  end

  def self.download
    ::Net::HTTP.get(uri)
  end

  def self.uri
    URI('http://shopicruit.myshopify.com/products.json?page=1')
  end
end

