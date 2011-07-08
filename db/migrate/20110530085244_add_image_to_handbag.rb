class AddImageToHandbag < ActiveRecord::Migration
  def self.up
    add_column :handbags, :image_url, :string
  end

  def self.down
    remove_column :handbags, :image_url
  end
end
