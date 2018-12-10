class App < ApplicationRecord
  belongs_to :developer
  accepts_nested_attributes_for :developer
  has_many :distributor_links
end


#:name, :description, :info_url, :is_live, :developer_id