ActiveAdmin.register TestimonialSlide do

  permit_params :image_url, :caption, :testimonial_id, :sequence_number, :is_live

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :image_url
      f.input :caption, :input_html => {:class => 'tinymce'}, :label => 'Caption'
      f.input :sequence_number, :label => 'Sequence'
      f.input :testimonial_id, :label => 'Which "Testimonial" does this belong to?', :as => :select, :collection => Testimonial.all.map{|a| ["#{a.title}", a.id]}
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end
