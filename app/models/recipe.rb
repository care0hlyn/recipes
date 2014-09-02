class Recipe < ActiveRecord::Base
  validates :name, :presence => true
  validates :steps, :presence => true
  validates :contributor_id, :numericality => true

  belongs_to :contributor
  has_and_belongs_to_many :tags
end
