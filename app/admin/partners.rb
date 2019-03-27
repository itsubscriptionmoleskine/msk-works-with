ActiveAdmin.register Partner do

  controller do
    defaults :finder => :find_by_slug
  end

  permit_params :name, :description, :promo_text, :url, :is_live, :logo_image_url, :slug, :meta_title

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name
      f.input :promo_text, :input_html => {:class => 'tinymce'}, :label => 'Promo Text'
      f.input :description, :input_html => {:class => 'tinymce'}, :label => 'Description'
      f.input :slug,  :label => 'Slug for URL'
      f.input :url, :label => 'Partners website'
      f.input :logo_image_url
      f.input :meta_title, :label => 'Page Meta-Data Title'
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end