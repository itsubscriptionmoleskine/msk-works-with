class WorksWithAssoc < ActiveRecord::Migration[5.1]
  def self.up
    add_reference :works_withs, :app, index: true
    add_reference :works_withs, :offering, index: true
  end
  def self.down
    remove_reference :works_withs, :app
    remove_reference :works_withs, :offering
  end
end
