class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.text :image_data
      t.integer :price
      t.string :name
      t.text :details
      t.string :brand

      t.timestamps
    end
  end
end
