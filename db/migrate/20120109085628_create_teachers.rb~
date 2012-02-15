class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.string :f_name
      t.string :s_name
      t.string :l_name
      t.integer :chair_id

      t.timestamps
    end
  end

  def self.down
    drop_table :teachers
  end
end
