ActiveAdmin.register Distributor do

  permit_params :name, :badge_image_url, :is_live, :icon_id

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name
      f.input :badge_image_url
      f.input :icon_id
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end