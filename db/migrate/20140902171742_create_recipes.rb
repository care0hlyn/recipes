class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :steps
      t.integer :contributor_id

      t.timestamps

      t.belongs_to :contributor
    end
  end
end
