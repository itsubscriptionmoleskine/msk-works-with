ActiveAdmin.register Video do

  permit_params :youtube_url, :description, :works_with_id, :is_live

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :youtube_url, :label => 'YouTube URL (should be the embed URL)'
      f.input :description, :input_html => {:class => 'tinymce'}, :label => 'Description'
      f.input :works_with_id, :label => 'Works With', :as => :select, :collection => WorksWith.all.map{|a| ["#{a.title}", a.id]}
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end