class Video < ApplicationRecord
  belongs_to :works_with
  accepts_nested_attributes_for :works_with
  def as_json(options={})
    super(:only => [:youtube_url, :description, :works_with_id, :is_live])
  end
end
