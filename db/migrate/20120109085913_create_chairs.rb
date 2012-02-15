class CreateChairs < ActiveRecord::Migration
  def self.up
    create_table :chairs do |t|
      t.integer :number
      t.integer :faculty_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :chairs
  end
end
