ActiveAdmin.register Testimonial do

  permit_params :title, :description, :works_with_id, :is_live, :video_embed

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :title
      f.input :description, :input_html => {:class => 'tinymce'}, :label => 'Testimonial Copy'
      f.input :works_with_id, :label => 'Which "Works With" does this support?', :as => :select, :collection => WorksWith.all.map{|w| ["#{w.title}", w.id]}
      f.input :video_embed, :label => 'Video Embed'
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end