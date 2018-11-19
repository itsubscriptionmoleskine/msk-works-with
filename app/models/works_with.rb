class WorksWith < ApplicationRecord
  has_many :use_cases
  has_many :testimonials
  belongs_to :app
  belongs_to :offering
  accepts_nested_attributes_for :app
  accepts_nested_attributes_for :offering
end
