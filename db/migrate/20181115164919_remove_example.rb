class RemoveExample < ActiveRecord::Migration[5.1]
  def change
    drop_table :cats
  end
end
