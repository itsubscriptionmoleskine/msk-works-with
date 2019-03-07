ActiveAdmin.register Product do

  permit_params :name, :description, :promo_text, :shop_link, :is_live, :product_image

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name
      f.input :promo_text, :input_html => {:class => 'tinymce'}, :label => 'Promo Text'
      f.input :description, :label => 'Description', :input_html => {:class => 'tinymce'}
      f.input :shop_link
      f.input :product_image
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end