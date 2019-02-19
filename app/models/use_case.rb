class UseCase < ApplicationRecord
  belongs_to :works_with
  accepts_nested_attributes_for :works_with
  def as_json(options={})
    super(:only => [:title, :description, :works_with_id, :is_live])
  end
  def to_slug(string)
    string.parameterize.truncate(80, omission: '')
  end
  validates_presence_of :slug
end