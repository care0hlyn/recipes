class RecipeTag < ActiveRecord::Base
  validates :recipe_id, :numericality => true
  validates :tag_id, :numericality => true

  belongs_to :recipe
  belongs_to :tag
end
