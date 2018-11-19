ActiveAdmin.register WorksWith do

  permit_params :title, :description, :app_id, :offering_id, :is_live

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :title, :label => 'Title'
      f.input :description, :input_html => {:class => 'tinymce'}, :label => 'Description'
      f.input :app_id, :label => 'App', :as => :select, :collection => App.all.map{|a| ["#{a.name}", a.id]}
      f.input :offering_id, :label => 'Offering', :as => :select, :collection => Offering.all.map{|o| ["#{o.name}", o.id]}
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end