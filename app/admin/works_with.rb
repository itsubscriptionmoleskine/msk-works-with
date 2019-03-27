ActiveAdmin.register WorksWith do

  controller do
    defaults :finder => :find_by_slug
  end

  permit_params :title, :description, :app_id, :product_id, :is_live, :promo_image_url, :promo_text, :slug, :meta_title

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :title, :label => 'Title'
      f.input :description, :input_html => {:class => 'tinymce'}, :label => 'Description'
      f.input :slug,  :label => 'Slug for URL'
      f.input :promo_text, :input_html => {:class => 'tinymce'}, :label => 'Promo Copy, 1 paragraph only.'
      f.input :promo_image_url
      f.input :app_id, :label => 'App', :as => :select, :collection => App.all.map{|a| ["#{a.name}", a.id]}
      f.input :product_id, :label => 'Product', :as => :select, :collection => Product.all.map{|o| ["#{o.name}", o.id]}
      f.input :meta_title, :label => 'Page Meta-Data Title'
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end