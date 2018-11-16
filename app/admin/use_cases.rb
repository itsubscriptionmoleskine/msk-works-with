ActiveAdmin.register UseCase do

  permit_params :title, :description, :developer_id, :is_live

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :title
      f.input :description, :input_html => {:class => 'tinymce'}, :label => 'Use Case Copy'
      f.input :developer_id, :label => 'Which "Works With" does this support?', :as => :select, :collection => WorksWith.all.map{|w| ["#{w.title}", w.id]}
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end