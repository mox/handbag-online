class CreateHandbags < ActiveRecord::Migration
  def self.up
    create_table :handbags do |t|
      t.string :name
      t.string :tel
      t.string :email
      t.text :adress
      t.string :job

      t.timestamps
    end
  end

  def self.down
    drop_table :handbags
  end
end
