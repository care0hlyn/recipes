class ChangeRecipesTags < ActiveRecord::Migration
  def change
    rename_table :recipes_tags, :recipe_tags
  end
end
