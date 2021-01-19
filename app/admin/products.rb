ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :price, :image, :category_id

  show do
    attributes_table do
      row :name
      row :description
      row :image
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :price, :image, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
