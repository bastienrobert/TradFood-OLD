class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :city
      t.date :date
      t.text :description
      t.text :recipe
      t.time :prepare
      t.time :cook
      t.string :smcd
      t.integer :difficulty
      t.string :season

      t.timestamps
    end
  end
end
