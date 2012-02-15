class CreateTerms < ActiveRecord::Migration
  def self.up
    create_table :terms do |t|
      t.string :name
      t.string :short_name
      t.integer :year
      t.boolean :current

      t.timestamps
    end
  end

  def self.down
    drop_table :terms
  end
end
