class RenameDistributors < ActiveRecord::Migration[5.1]

  def self.up
    rename_table :distributors, :app_stores
    rename_table :distributor_links, :app_store_links
    rename_column :app_store_links, :distributor_id, :app_store_id
  end

  def self.down
    rename_table :app_stores, :distributors
    rename_table :app_store_links, :distributor_links
    rename_column :distributor_links, :app_store_id, :distributor_id
  end

end
