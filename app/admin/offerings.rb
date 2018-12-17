ActiveAdmin.register Offering do

  permit_params :name, :description, :shop_link, :is_live, :product_image

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name
      f.input :description, :label => 'Description', :input_html => {:class => 'tinymce'}
      f.input :shop_link
      f.input :product_image, :as => :file
      f.input :product_image_cache, :as => :hidden
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end