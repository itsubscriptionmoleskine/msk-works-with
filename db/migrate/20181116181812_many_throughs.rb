class ManyThroughs < ActiveRecord::Migration[5.1]

  def self.up
    add_index :distributor_links, [:distributor_id, :app_id]
    add_index :works_withs, [:offering_id, :app_id]
  end

  def self.down
    remove_index :distributor_links, [:distributor_id, :app_id]
    remove_index :works_withs, [:offering_id, :app_id]
  end

end
