ActiveAdmin.register AppStore do

  permit_params :name, :badge_image_url, :is_live, :icon_id

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :name, :label=>'App Store Name'
      f.input :badge_image_url, :label=> 'The badge icon that should be displayed. For example, Google Play Store, Apple App Store, etc.'
      f.input :icon_id, :hint => "Should be a 'brand' icon, e.g. 'apple'. See: https://fontawesome.com/icons?d=gallery"
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end