ActiveAdmin.register Product do
  permit_params :name, :details, :brand, :price, :image

  show do
    attributes_table do
      row :name
      row :details
      row :brand
      row :price
      row :image do
        img src: resource.image_url
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
    f.actions
  end
end
