class CreateAvailableItems < ActiveRecord::Migration
  def self.up
    create_table :available_items do |t|
      t.string :name
      t.decimal :price
      t.string :img_url
      t.integer :warranty
      t.integer :max_days

      t.timestamps
    end
  end

  def self.down
    drop_table :available_items
  end
end
