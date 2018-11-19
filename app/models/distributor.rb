class Distributor < ApplicationRecord
  has_many :apps, through: :distributor_links
end
