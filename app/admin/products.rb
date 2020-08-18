ActiveAdmin.register Product do
  permit_params :name, :details, :brand, :price, :image,
                colors_attributes: [:id, :name, :_destroy]

  show do
    attributes_table do
      row :name
      row :details
      row :brand
      row :price
      row :image do
        img src: resource.image_url
      end
      list_row :colors do |mod|
        mod.colors.pluck(:name)
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :details
      f.input :brand
      f.input :price
      f.input :image, as: :file
    end
    f.inputs do
      f.has_many :colors, new_record: 'Nuevo Color', allow_destroy: true do |color|
        color.input :name
      end
    end
    f.actions
  end
end
