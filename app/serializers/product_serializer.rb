class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :image_url, :price, :brand, :color_names
end
