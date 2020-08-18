class Product < ApplicationRecord
  include ImageUploader::Attachment(:image)
end

# == Schema Information
#
# Table name: products
#
#  id         :bigint(8)        not null, primary key
#  image_data :text
#  price      :integer
#  name       :string
#  details    :text
#  brand      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
