ActiveAdmin.register DistributorLink do

  permit_params :link, :distributor_id, :app_id

  form(:html => {:multipart => true}) do |f|
    f.inputs do
      f.input :link
      f.input :distributor_id, :label => 'Distributor', :as => :select, :collection => Distributor.all.map{|d| ["#{d.name}", d.id]}
      f.input :app_id, :label => 'App', :as => :select, :collection => App.all.map{|a| ["#{a.name}", a.id]}
    end
    f.actions
  end

end