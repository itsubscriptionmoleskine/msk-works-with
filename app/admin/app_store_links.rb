ActiveAdmin.register AppStoreLink do

  permit_params :link, :app_store_id, :app_id, :is_live

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :link
      f.input :app_store_id, :label => 'AppStore', :as => :select, :collection => AppStore.all.map{|d| ["#{d.name}", d.id]}
      f.input :app_id, :label => 'App', :as => :select, :collection => App.all.map{|a| ["#{a.name}", a.id]}
      f.input :is_live, :label => 'Publish?', :as => :radio
    end
    f.actions
  end

end