class ProductsController < ApplicationController
  def index
    @products = ActiveModel::Serializer::CollectionSerializer.new(
      Product.all,
      each_serializer: ::ProductSerializer
    ).as_json
  end
end
