class AlterRecipesTags < ActiveRecord::Migration
  def change
    drop_table :recipes_tags
  end
end
