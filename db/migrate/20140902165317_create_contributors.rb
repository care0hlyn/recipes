class CreateContributors < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.string :name
      t.timestamps
    end
  end
end
