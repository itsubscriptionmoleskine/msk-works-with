ActiveAdmin.register ExampleImage do

  permit_params :image_url, :caption, :developer_id, :is_live

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :image_url
      f.input :caption, :input_html => {:class => 'tinymce'}, :label => 'Description'
      f.input :developer_id, :label => 'Which "Works With" does this belong to?', :as => :select, :collection => Developer.all.map{|a| ["#{a.name}", a.id]}
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end