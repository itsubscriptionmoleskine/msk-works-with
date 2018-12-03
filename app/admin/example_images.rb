ActiveAdmin.register ExampleImage do

  permit_params :image_url, :caption, :works_with_id, :is_live

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :image_url, :as => :file
      f.input :image_url_cache, :as => :hidden
      f.input :caption, :input_html => {:class => 'tinymce'}, :label => 'Description'
      f.input :works_with_id, :label => 'Which "Works With" does this belong to?', :as => :select, :collection => WorksWith.all.map{|a| ["#{a.title}", a.id]}
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end


ActiveAdmin.register ExampleImage do
  show do
    attributes_table do
      row :image_url do |i|
        img src:i.image_url
      end
      row :caption
      row :works_with_id
    end
  end
end

#ToDo: Use Works With Titles instead of ids.