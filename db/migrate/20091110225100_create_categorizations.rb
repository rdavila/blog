class CreateCategorizations < ActiveRecord::Migration
  def self.up
    create_table :categorizations do |t|
      t.integer :category_id
      t.integer :post_id
      t.timestamps
    end
    add_index :categorizations, :category_id
    add_index :categorizations, :post_id
  end

  def self.down
    drop_table :categorizations
  end
end
