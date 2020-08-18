class Color < ApplicationRecord
  belongs_to :product
end

# == Schema Information
#
# Table name: colors
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  product_id :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_colors_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
