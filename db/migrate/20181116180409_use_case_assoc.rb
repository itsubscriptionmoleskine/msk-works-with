class UseCaseAssoc < ActiveRecord::Migration[5.1]
  def self.up
    add_reference :use_cases, :works_with, index: true
  end
  def self.down
    remove_reference :use_cases, :works_with
  end
end
