class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :city
      t.date :date
      t.text :description
      t.text :ingredients
      t.text :recipe
      t.integer :prepare
      t.integer :cook
      t.string :smcd
      t.integer :difficulty
      t.integer :status
      t.string :season

      t.timestamps
    end
  end
end
