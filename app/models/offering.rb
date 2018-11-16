class Offering < ApplicationRecord
  has_many :apps, through: :works_withs
end
