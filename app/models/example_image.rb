class ExampleImage < ApplicationRecord
  belongs_to :works_with
  accepts_nested_attributes_for :works_with
end
