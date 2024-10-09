class CreateRecipes < ActiveRecord::Migration[7.2]
  def change
    create_table :recipes do |t|
      t.timestamps
      t.string :title, null: false
      t.string :making_time, null: false
      t.string :serves, null: false
      t.text :ingredients, null: false
      t.integer :cost, null: false
    end
  end
end

