ActiveAdmin.register ExampleImage do

  permit_params :image_url, :caption, :works_with_id, :is_live

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :image_url
      f.input :caption, :input_html => {:class => 'tinymce'}, :label => 'Caption'
      f.input :works_with_id, :label => 'Which "Works With" does this belong to?', :as => :select, :collection => WorksWith.all.map{|a| ["#{a.title}", a.id]}
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end
