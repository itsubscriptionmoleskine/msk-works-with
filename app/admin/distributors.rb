ActiveAdmin.register Distributor do

  permit_params :name, :badge_image_url, :is_live, :icon_id

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name, :label=>'Distributor Name'
      f.input :badge_image_url, :as => :file, :label=> 'The badge icon that should be displayed. For example, Google Play Store, App Store, etc.'
      f.input :badge_image_url_cache, :as => :hidden
      f.input :icon_id, :hint => "Should be a 'brand' icon, e.g. 'apple'. See: https://fontawesome.com/icons?d=gallery"
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end