ActiveAdmin.register Distributor do

  permit_params :name, :badge_image_url, :is_live

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name
      f.input :bade_image_url
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end