class CreateRecipesTags2 < ActiveRecord::Migration
  def change
    create_table :recipes_tags do |t|
      t.belongs_to :recipe
      t.belongs_to :tag

      t.timestamps
    end
  end
end
