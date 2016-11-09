class SumProductsCollection
  include ::Scit::Dependencies::AUTOINJECT['http_client']

  def call
    parse(http_client.call(resource)).sum_products_price
  end

  private
  def parse(http_response)
    ::Scit::Models::Collection.new(http_response)
  end

  def resource(page = 1)
    "http://shopicruit.myshopify.com/products.json?page=#{page}"
  end
end
