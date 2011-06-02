class CreateYahooposts < ActiveRecord::Migration
  def self.up
    create_table :yahooposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :yahooposts
  end
end
