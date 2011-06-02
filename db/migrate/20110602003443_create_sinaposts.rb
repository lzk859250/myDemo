class CreateSinaposts < ActiveRecord::Migration
  def self.up
    create_table :sinaposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sinaposts
  end
end
