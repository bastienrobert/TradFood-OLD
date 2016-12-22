class AddImageToRecipes < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :recipes, :image
  end

  def self.down
    remove_attachment :recipes, :image
  end
end
