class CreateWishes < ActiveRecord::Migration
  def self.up
    create_table :wishes do |t|
      t.integer :user_id
      t.integer :day
      t.integer :lesson
      t.integer :term_id
      t.boolean :week
      t.boolean :even

      t.timestamps
    end
  end

  def self.down
    drop_table :wishes
  end
end
