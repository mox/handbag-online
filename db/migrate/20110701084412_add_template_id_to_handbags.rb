class AddTemplateIdToHandbags < ActiveRecord::Migration
  def self.up
  	add_column :handbags, :template_id,  :string
  end

  def self.down
  	remove_column :template_id
  end
end
