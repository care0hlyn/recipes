class Recipe < ActiveRecord::Base
  validates :name, :presence => true
  validates :steps, :presence => true
  validates :contributor_id, :numericality => true

  belongs_to :contributor
end
