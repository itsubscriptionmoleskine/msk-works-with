ActiveAdmin.register App do

  permit_params :name, :description, :info_url, :is_live, :developer_id, :slug

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name
      f.input :description, :input_html => {:class => 'tinymce'}, :label => 'Description'
      f.input :slug,  :label => 'Slug for URL'
      f.input :info_url
      f.input :developer_id, :label => 'Developer', :as => :select, :collection => Developer.all.map{|a| ["#{a.name}", a.id]}
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end