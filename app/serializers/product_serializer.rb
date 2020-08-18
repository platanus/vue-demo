class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :image_url, :price, :brand
end
