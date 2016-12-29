class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
