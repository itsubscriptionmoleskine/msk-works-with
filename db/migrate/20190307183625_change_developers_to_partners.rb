class ChangeDevelopersToPartners < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :developers, :partners
    rename_column :apps, :developer_id, :partner_id
  end

  def self.down
    rename_table :partners, :developers
    rename_column :developers, :partner_id, :developer_id
  end

end
