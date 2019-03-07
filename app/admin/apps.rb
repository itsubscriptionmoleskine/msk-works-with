ActiveAdmin.register App do

  controller do
    defaults :finder => :find_by_slug
  end

  permit_params :name, :description, :info_url, :is_live, :partner_id, :slug

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name
      f.input :description, :input_html => {:class => 'tinymce'}, :label => 'Description'
      f.input :slug,  :label => 'Slug for URL'
      f.input :info_url
      f.input :partner_id, :label => 'Partner', :as => :select, :collection => Partner.all.map{|a| ["#{a.name}", a.id]}
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end