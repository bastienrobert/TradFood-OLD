class AddImageToCities < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :cities, :image
  end

  def self.down
    remove_attachment :cities, :image
  end
end
