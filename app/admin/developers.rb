ActiveAdmin.register Developer do

  permit_params :name, :description, :url, :is_live

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name
      f.input :description, :input_html => {:class => 'tinymce'}, :label => 'Description'
      f.input :url
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end