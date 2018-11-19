class AppAssociations < ActiveRecord::Migration[5.1]
  def self.up

    add_reference :apps, :developer, index:true

  end

  def self.down

    remove_reference :apps, :developer

  end
end
