class App < ApplicationRecord
  belongs_to :developer
  accepts_nested_attributes_for :developer
end
